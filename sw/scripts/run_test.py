import asyncio
from astep import astepRun
import time
import binascii
import logging
import csv
import argparse #add
import sys
import logging

print("creating object")

layer, chip = 0,0
pixel = [layer, chip, 0, 11] #layer, chip, row, column
async def main(args):

    print("setup logger")
    strPix = "_"
    fname=strPix if not args.name else strPix+args.name+strPix
     
    bitpath = args.outdir+"/run_"+str(args.name)+time.strftime("%Y%m%d_%H%M%S")+".log"
    logname = args.outdir+"/runlog_"+str(args.name)+time.strftime("%Y%m%d_%H%M%S")+".log"
    bitfile = open(bitpath,'w')
    
    formatter = logging.Formatter('%(asctime)s:%(msecs)d.%(name)s.%(levelname)s:%(message)s')
    fh = logging.FileHandler(logname)
    fh.setFormatter(formatter)
    sh = logging.StreamHandler()
    sh.setFormatter(formatter)
    logging.getLogger().addHandler(sh) 
    logging.getLogger().addHandler(fh)
    logging.getLogger().setLevel(logging.INFO)
    logger = logging.getLogger(__name__)

    print("creating object")
    astro = astepRun(inject=pixel)

    print("opening fpga")
    await astro.open_fpga(cmod=False, uart=False)

#    print("dump fpga") # add
#    await astro.dump_fpga() # add

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    await astro.asic_init(yaml="config_v3_none_may28", analog_col=[layer, chip ,pixel[3]])
    print(f"Header: {astro.get_log_header(layer, chip)}")

    print("initializing voltage")
    await astro.init_voltages(vthreshold=args.threshold) ## th in mV

    #print("FUNCTIONALITY CHECK")
    #await astro.functionalityCheck(holdBool=True)

    #print("update threshold")
    #await astro.update_pixThreshold(100)
    #await astro.update_pixThreshold(vThresh=args.threshold)

    print("enable pixel")
    await astro.enable_pixel(0,0,0,0)
#    print("disable pixel: all")
#    await astro.disble_pixel(layer,chip,15,10)
    for r in range(0,35,1):
        for c in range(3,35,1):
            await astro.enable_pixel(layer,chip,r,c)
    await astro.disable_pixel(0,0, 31, 14) #noise pixel, for w06s01
#    await astro.disable_pixel(0,0, 5, 4) #noise pixel, for w08s05
#    await astro.disable_pixel(0,0, 2, 8) #noise pixel, for w08s05
#    await astro.disable_pixel(0,0, 0, 22) #noise pixel, for w08s05
#    await astro.disable_pixel(0,0, 9, 20) #noise pixel, for w08s05 (c20,r9)
#    await astro.disable_pixel(0,0, 9, 14) #noise pixel, for w08s05 (c20,r9)
#    await astro.disable_pixel(0,0, 21, 17) #noise pixel, for w08s05 (c20,r9)
#    for r in range(0,35,1):
#        for c in range(0,35,1):
#            await astro.disable_pixel(layer,chip,r,c)
#


    print("final configs")
    print(f"Header: {astro.get_log_header(layer, chip)}")
    await astro.asic_configure(layer)
    
    print("setup readout")
    await astro.setup_readout(layer, autoread=0) #disable autoread

    n_noise = 0
    event = 0
    if args.maxtime is not None: 
        #end_time=time.time()+(args.maxtime) # second! not minute
        end_time=time.time()+(args.maxtime*60*60) # second! not minute
    t0 = time.time()
    dataf = b''
#    inc = -2
    start_intime = time.time()
    #while (time.time() < t0+5):
    while (time.time() < end_time): # Loop continues 
        
        buff, readout = await(astro.get_readout())
#if not sum(readout[0:2])==510: #avoid printing out if first 2 bytes are "ff ff" (string is just full of ones)
#        #if buff>4:
#            inc += 1
#            if inc<0:
#                continue
#            hit = readout[:buff] 
#            print(f"hit={hit}, buff={buff}")
#            print("print(binascii.hexlify(hit))")
#            print(binascii.hexlify(hit))
#            #print(hex(readout[:buff]))
#            bitfile.write(f"{str(binascii.hexlify(readout))}\n")
#            print("astro.decode_readout(hit, inc)")
#            astro.decode_readout(hit, inc) 
#            hits = astro.decode_readout(hit, inc)
        if buff>0: # and len(readout) < 1000:
            readout_data = readout[:buff]
            logger.info(binascii.hexlify(readout_data))
            #await print_status(logger)
            logger.debug(f"{buff} bytes in buffer")
            dataf+=readout_data            
            bitfile.write(f"{str(binascii.hexlify(readout_data))}\n")
            event += 1
        
        #await(astro.print_status_reg())
    end_intime = time.time()

    astro._wait_progress(5)
    #print("stop injection")
    #await astro.stop_injection()
    print(f"***** TotEnv = {event}")
    print(f"***** time = {end_intime - start_intime}")
#add example_loop.py

    print("read out buffer")
    buff, readout = await(astro.get_readout())
    print(binascii.hexlify(readout))
    print(f"{buff} bytes in buffer")

    bitfile.close() # Close open file       
    astro.close_connection() # Closes SPI
    logger.info("Program terminated successfully")




if __name__ == "__main__":

    parser = argparse.ArgumentParser(description='Astropix Driver Code')
    parser.add_argument('-n', '--name', default='', required=False,
                    help='Option to give additional name to output files upon running')

    parser.add_argument('-o', '--outdir', default='.', required=False,
                    help='Output Directory for all datafiles')

    parser.add_argument('-y', '--yaml', action='store', required=False, type=str, default = 'config_v3_none', #Apr4. config/config_v3_none.yml_
                    help = 'filepath (in config/ directory) .yml file containing chip configuration. Default: config/config_v3_none.yml (All pixels off)')

#    parser.add_argument('-ns', '--noisescaninfo', action='store', required=False, type=str, default ='noise_scan_summary_apr29_newfw_aps3w08s05_noise_t100_3s.csv',
#                    help = 'filepath noise scan summary file containing chip noise infomation.')
    
#    parser.add_argument('-c', '--saveascsv', action='store_true', 
#                    default=False, required=False, 
#                    help='save output files as CSV. If False, save as txt')
    
#    parser.add_argument('-i', '--inject', action='store_true', default=False, required=False,
#                    help =  'Turn on injection. Default: No injection')
#
#    parser.add_argument('-v','--vinj', action='store', default = None, type=float,
#                    help = 'Specify injection voltage (in mV). DEFAULT 300 mV')

    #parser.add_argument('-t', '--threshold', type = float, action='store', default=None,
    parser.add_argument('-t', '--threshold', type = int, action='store', default=100,
                    help = 'Threshold voltage for digital ToT (in mV). DEFAULT 100mV')

    parser.add_argument('-r', '--maxruns', type=int, action='store', default=None,
                    help = 'Maximum number of readouts')

    parser.add_argument('-M', '--maxtime', type=float, action='store', default=None,
                    help = 'Maximum run time (in second)')


    parser.add_argument
    args = parser.parse_args()
    
    start_time = time.time()
    asyncio.run(main(args))
    end_time = time.time()
    print(f"{end_time-start_time} : time for this run")

