import asyncio
from astep import astepRun
import time
import binascii
import logging
import csv
import argparse #add

print("setup logger")
logname = "run.log"
#logname = "/home/becal-astropix/May28_gitmainbranch/astep-fw/sw/runlog/runlog_"+time.strftime("%Y%m%d_%H%M%S")+".log"
formatter = logging.Formatter('%(asctime)s:%(msecs)d.%(name)s.%(levelname)s:%(message)s')
fh = logging.FileHandler(logname)
fh.setFormatter(formatter)
sh = logging.StreamHandler()
sh.setFormatter(formatter)
logging.getLogger().addHandler(sh) 
logging.getLogger().addHandler(fh)
logging.getLogger().setLevel(logging.INFO)
logger = logging.getLogger(__name__)


layer, chip = 0,0
pixel = [layer, chip, 0, 11] #layer, chip, row, column

async def main(args):
    print("creating object")
    astro = astepRun(inject=pixel)

    print("opening fpga")
    await astro.open_fpga(cmod=False, uart=False)

    #print("dump fpga") # add
    #await astro.dump_fpga() # add

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    await astro.asic_init(yaml="config_v3_none_may28", analog_col=[layer, chip ,pixel[3]])
    print(f"Header: {astro.get_log_header(layer, chip)}")

    print("initializing voltage")
    #await astro.init_voltages() ## th in mV
    await astro.init_voltages(vthreshold=args.threshold) ## th in mV

    #print("FUNCTIONALITY CHECK")
    #await astro.functionalityCheck(holdBool=True)

    print("update threshold")
    await astro.update_pixThreshold(layer, chip, args.threshold)

    print("enable pixel")
    await astro.enable_pixel(layer, chip, pixel[2], pixel[3])
    #all pixels available
    for r in range(0,35,1):#0-5 (0,1,2,3,4), 5-10(5,6,7,8,9), 10-20,20-30,30-34
        for c in range(3,35,1):# 4-10/ 10-20/ 20-30/ 30-34
            await astro.enable_pixel(layer, chip, r, c)
    await astro.disable_pixel(layer, chip, 31, 14) #noise pixel
    await astro.disable_pixel(layer, chip, 2, 8) #noise pixel #for w08s06 chip

    print("final configs")
    print(f"Header: {astro.get_log_header(layer, chip)}")
    await astro.asic_configure(layer)
    
    print("setup readout")
    await astro.setup_readout(layer, autoread=0) #disable autoread


    strPix = "_"
    fname=strPix if not args.name else args.name+strPix+"_"
    # add example_loop.py  
    # And here for the text files/logs
    bitpath = args.outdir + '/' + fname + time.strftime("%Y%m%d_%H%M%S") + '.log'
    # textfiles are always saved so we open it up 
    bitfile = open(bitpath,'w')
    # Writes all the config information to the file
    bitfile.write(astro.get_log_header(layer,chip))
    bitfile.write(str(args))
    bitfile.write("\n")

    i = 0
    n_noise = 0
    event = 0
    if args.maxtime is not None: 
        end_time=time.time()+(args.maxtime) # second
        #end_time=time.time()+(args.maxtime*60*60) # hour!
    t0 = time.time()
    inc = -2
    start_intime = time.time()
    while (time.time() < end_time): # Loop continues 
        
        buff, readout = await(astro.get_readout())
        if not sum(readout[0:2])==510: #avoid printing out if first 2 bytes are "ff ff" (string is just full of ones)
        #if buff>4:
            inc += 1
            if inc<0:
                continue
            hit = readout[:buff] 
            print("print(binascii.hexlify(hit))")
            print(binascii.hexlify(hit))
            logger.info(binascii.hexlify(hit))
            bitfile.write(f"{str(binascii.hexlify(readout))}\n")
#            print("astro.decode_readout(hit, inc)")
#            astro.decode_readout(hit, inc) 
#            hits = astro.decode_readout(hit, inc, printer=False)
            logger.debug(f"{buff} bytes in buffer")
            event += 1
        
    end_intime = time.time()

    astro._wait_progress(5)
    print(f"***** TotEnv = {event}")
    print(f"***** time = {end_intime - start_intime}")

    print("read out buffer")
    buff, readout = await(astro.get_readout())
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

    parser.add_argument('-y', '--yaml', action='store', required=False, type=str, default = 'config_v3_none_may28', #Apr4. config/config_v3_none.yml_
                    help = 'filepath (in config/ directory) .yml file containing chip configuration. Default: config/config_v3_none.yml (All pixels off)')

#    parser.add_argument('-ns', '--noisescaninfo', action='store', required=False, type=str, default ='noise_scan_summary_apr29_newfw_aps3w08s05_noise_t100_3s.csv',
#                    help = 'filepath noise scan summary file containing chip noise infomation.')
#    parser.add_argument('-nth', '--noiseth', action='store', required=False, type=str, default = 100,
#                    help = 'set threshold cut for disable pixels.default=100')
    
    parser.add_argument('-c', '--saveascsv', action='store_true', 
                    default=False, required=False, 
                    help='save output files as CSV. If False, save as txt')
    
    parser.add_argument('-i', '--inject', action='store_true', default=False, required=False,
                    help =  'Turn on injection. Default: No injection')

    parser.add_argument('-v','--vinj', action='store', default = None, type=float,
                    help = 'Specify injection voltage (in mV). DEFAULT 300 mV')

    parser.add_argument('-t', '--threshold', type = int, action='store', default=200,
                    help = 'Threshold voltage for digital ToT (in mV). DEFAULT 200mV')

    parser.add_argument('-r', '--maxruns', type=int, action='store', default=None,
                    help = 'Maximum number of readouts')

    parser.add_argument('-M', '--maxtime', type=float, action='store', default=None,
                    #help = 'Maximum run time (in hour)')
                    help = 'Maximum run time (in mins)')



    parser.add_argument
    args = parser.parse_args()
    
    start_time = time.time()
    asyncio.run(main(args))
    end_time = time.time()
    print(f"{end_time-start_time} : time for this run")

