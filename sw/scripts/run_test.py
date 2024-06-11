import asyncio
from astep import astepRun
import time
import binascii
import logging
import csv
import argparse #add

print("setup logger")
logname = "run.log"
formatter = logging.Formatter('%(asctime)s:%(msecs)d.%(name)s.%(levelname)s:%(message)s')
fh = logging.FileHandler(logname)
fh.setFormatter(formatter)
sh = logging.StreamHandler()
sh.setFormatter(formatter)
logging.getLogger().addHandler(sh) 
logging.getLogger().addHandler(fh)
logging.getLogger().setLevel(logging.INFO)
logger = logging.getLogger(__name__)

#pixel = [0,14]
#print("creating object")
#astro = astepRun(inject=pixel)

#noisepath = 'noise_scan_summary_' + time.strftime("%Y%m%d-%H%M%S") + '.csv'
#noisefile = open(noisepath,'w')
#noisewriter = csv.writer(noisefile)
#noisewriter.writerow(["Col\tRow\tCount"])

#pixel=[r,c]
#print("creating object")
#print(pixel)
#astro = astepRun(inject=pixel)
pixel=[0,0]
async def main(args):
    print("creating object")
#    print(f"pixel[r,c]={pixel}")
    astro = astepRun(inject=pixel)

    print("opening fpga")
    await astro.open_fpga()

    print("dump fpga") # add
    await astro.dump_fpga() # add

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    #await astro.asic_init(yaml="test_quadchip_new", analog_col=[0,pixel[1]], chipsPerRow=2)
    #await astro.asic_init(yaml="test_quadchip", analog_col=pixel[1])
    await astro.asic_init(yaml="config_v3_none", analog_col=pixel[1])
    print(f"Header: {astro.get_log_header()}")

    print("initializing voltage")
    #await astro.init_voltages() ## th in mV
    await astro.init_voltages(vthreshold=args.threshold) ## th in mV

    #print("FUNCTIONALITY CHECK")
    #await astro.functionalityCheck(holdBool=True)

    #print("update threshold")
    #await astro.update_pixThreshold(100)
    #await astro.update_pixThreshold(vThresh=args.threshold)

#    print("enable pixel")
#    await astro.enable_pixel(pixel[0], pixel[1])

    #print("disable pixel col15,row0 [r,c]")
    #await astro.disable_pixel(0, 15)

#    """
# Masking pixels
    # Read noise scan summary file
#    if args.noisescaninfo is not None:
#        print("masking pixels")
#        noise_input_file = open(args.noisescaninfo, 'r')
#        lines = noise_input_file.readlines()
#    #print(lines[0])
#        del lines[0] # remove header
#    # Get counts
#        count_vals=0
#        noisecut = int(args.noiseth)
#        for line in lines:
#            noise_val = int(line.split('\t')[2])
#            col_val = int(line.split('\t')[0])
#            row_val = int(line.split('\t')[1])
#            if noise_val > noisecut:
#                #astro.disable_pixel(col_val,row_val)
#                await astro.disable_pixel(row_val,col_val)
#                print(f"({col_val},{row_val})={noise_val} larger than {noisecut} -> NOISY")
#                count_vals = count_vals+1
## for beam_test.py
#            else:
#                await astro.enable_pixel(row_val,col_val)
#        print(count_vals, " pixels are disable !")
#        print("Active pixels ~ ", (1-(count_vals/(35*35)))*100 , " %.")
#    """
## enable all pixels
#    for r in range(0,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.enable_pixel(r,c)
##disable edge 10
#    for r in range(0,35,1):
#        for c in range(0,10,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,35,1):
#        for c in range(25,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,10,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(25,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
##disable edge 10, end
##disable edge 7
#    for r in range(0,35,1):
#        for c in range(0,7,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,35,1):
#        for c in range(28,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,7,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(28,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
##disable edge 7, end
#disable edge 5
#    for r in range(0,35,1):
#        for c in range(0,5,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,35,1):
#        for c in range(30,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,5,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(30,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
##disable edge 3
#    for r in range(0,35,1):
#        for c in range(0,3,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,35,1):
#        for c in range(32,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(0,3,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#    for r in range(32,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
#disable edge 5, end

#   for r in range(31,35,1):
#        for c in range(0,35,1): # 0-4 col
#            await astro.disable_pixel(r,c)
    for r in range(0,35,1):#0-5 (0,1,2,3,4), 5-10(5,6,7,8,9), 10-20,20-30,30-34
        for c in range(0,35,1):# 4-10/ 10-20/ 20-30/ 30-34
            await astro.enable_pixel(r,c)
    for r in range(0,35,1):
        for c in range(0,3,1): # 0-4 col
            await astro.disable_pixel(r,c)



    #print("init injection")
    #await astro.init_injection(inj_voltage=300)

    print("final configs")
    print(f"Header: {astro.get_log_header()}")
    await astro.asic_configure()
    
    print("setup readout")
    await astro.setup_readout(0, autoread=0) #disable autoread


    i = 0
    #strPix = "_col"+str(pixel[1])+"_row"+str(pixel[0])
    strPix = "_"
    fname=strPix if not args.name else args.name+strPix+"_"
# add example_loop.py  
    # And here for the text files/logs
    bitpath = args.outdir + '/' + fname + time.strftime("%Y%m%d_%H%M%S") + '.log'
    #bitpath =  'noiselog'+strPix + time.strftime("_%Y%m%d_%H%M%S") + '.log'
    # textfiles are always saved so we open it up 
    bitfile = open(bitpath,'w')
    # Writes all the config information to the file
    bitfile.write(astro.get_log_header())
    bitfile.write(str(args))
    bitfile.write("\n")

    n_noise = 0
    event = 0
    if args.maxtime is not None: 
        end_time=time.time()+(args.maxtime*60) # minute!
    t0 = time.time()
    inc = -2
    start_intime = time.time()
    #while (time.time() < t0+5):
    while (time.time() < end_time): # Loop continues 
        
        buff, readout = await(astro.get_readout())
        if not sum(readout[0:2])==510: #avoid printing out if first 2 bytes are "ff ff" (string is just full of ones)
        #if buff>4:
            inc += 1
            if inc<0:
                continue
            hit = readout[:buff] 
            #print(f"hit={hit}, buff={buff}")
            print("print(binascii.hexlify(hit))")
            print(binascii.hexlify(hit))
            #print(hex(readout[:buff]))
            bitfile.write(f"{str(binascii.hexlify(readout))}\n")
            print("astro.decode_readout(hit, inc)")
            astro.decode_readout(hit, inc) 
            hits = astro.decode_readout(hit, inc)
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
#    print(binascii.hexlify(readout))
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

    #parser.add_argument('-ns', '--noisescaninfo', action='store', required=False, type=str, default ='noise_scan_summary_apr29_newfw_aps3w08s05_noise_t100_3s.csv',
    parser.add_argument('-ns', '--noisescaninfo', action='store', required=False, type=str, default ='noise_scan_summary_Apr29_newfw_aps3w06s01_noisescan_3s_t100.csv',
                    help = 'filepath noise scan summary file containing chip noise infomation.')

    parser.add_argument('-nth', '--noiseth', action='store', required=False, type=str, default = 100,
                    help = 'set threshold cut for disable pixels.default=100')
    
    parser.add_argument('-c', '--saveascsv', action='store_true', 
                    default=False, required=False, 
                    help='save output files as CSV. If False, save as txt')
    
    parser.add_argument('-i', '--inject', action='store_true', default=False, required=False,
                    help =  'Turn on injection. Default: No injection')

    parser.add_argument('-v','--vinj', action='store', default = None, type=float,
                    help = 'Specify injection voltage (in mV). DEFAULT 300 mV')

    #parser.add_argument('-t', '--threshold', type = float, action='store', default=None,
    parser.add_argument('-t', '--threshold', type = int, action='store', default=200,
                    help = 'Threshold voltage for digital ToT (in mV). DEFAULT 200mV')

    parser.add_argument('-r', '--maxruns', type=int, action='store', default=None,
                    help = 'Maximum number of readouts')

    parser.add_argument('-M', '--maxtime', type=float, action='store', default=None,
                    help = 'Maximum run time (in Minute)')



    parser.add_argument
    args = parser.parse_args()
    
    # Logging
    loglevel = logging.INFO
    formatter = logging.Formatter('%(asctime)s:%(msecs)d.%(name)s.%(levelname)s:%(message)s')
    fh = logging.FileHandler(logname)
    fh.setFormatter(formatter)
    sh = logging.StreamHandler()
    sh.setFormatter(formatter)

    logging.getLogger().addHandler(sh) 
    logging.getLogger().addHandler(fh)
    logging.getLogger().setLevel(loglevel)

    logger = logging.getLogger(__name__)

    start_time = time.time()
    asyncio.run(main(args))
    end_time = time.time()
    print(f"{end_time-start_time} : time for this run")

