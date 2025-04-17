import asyncio
from astep import astepRun
import time
import binascii
import logging

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

#######################################################
############## USER DEFINED VARIABLES #################
layer, chip = 0,0
pixel = [layer, chip, 0, 0] #layer, chip, row, column
configViaSR = False #if False, config with SPI
inj_voltage = 500 #injection amplitude in mV
threshold = 200 #global comparator threshold level in mV
runTime = 5 #duration of run in s
chipsPerRow = 1 #number of arrays per SPI bus to configure
#######################################################


print("creating object")
astro = astepRun(inject=pixel,SR=configViaSR)

async def main():
    print("opening fpga")
    await astro.open_fpga(cmod=False, uart=False)

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    #await astro.asic_init(yaml="test_quadchip_new", analog_col=[layer, chip ,pixel[3]], chipsPerRow=chipsPerRow)
    await astro.asic_init(yaml="config_v3_none_may28", analog_col=[layer, chip ,pixel[3]])
    print(f"Header: {astro.get_log_header(layer, chip)}") #give layer, chip
    #print(f"Header: {astro.get_log_header(layer, chip)}")

    print("initializing voltage")
    await astro.init_voltages(vthreshold=threshold) ## th in mV

    print("FUNCTIONALITY CHECK")
    await astro.functionalityCheck(holdBool=True)

    #print("update threshold")
    #await astro.update_pixThreshold(layer, chip, 100)

    print("enable pixel")
    await astro.enable_pixel(layer, chip, pixel[2], pixel[3])  

    print("init injection")
    await astro.init_injection(layer, chip, inj_voltage=inj_voltage)

    print("final configs")
    for l in range(layer+1):
        print(f"Header: {astro.get_log_header(l, chip)}")
        await astro.asic_configure(l)
    
        print("setup readout")
        #pass layer number
        await astro.setup_readout(layer, autoread=0) #disable autoread


#add from runningCode_oldfw/pixelScan_injection_savecsv.py
    i = 0
    #strPix = "_col"+str(pixel[0])+"_row"+str(pixel[1])
    strPix = "_layer"+str(pixel[0])+"_chip"+str(pixel[1])+"_col"+str(pixel[3])+"_row"+str(pixel[2])
#    fname=strPix if not args.name else args.name+strPix+"_"
# add example_loop.py  
    # And here for the text files/logs
    bitpath = 'inj_noAutoread_layer0_chip0_pixel_r0c0_inj500_th200_5s' + time.strftime("%Y%m%d_%H%M%S") + '.log'
    # textfiles are always saved so we open it up 
    bitfile = open(bitpath,'w')
    # Writes all the config information to the file
    #bitfile.write(astro.get_log_header())




    print("start injection")
    await astro.checkInjBits()
    await astro.start_injection()
    await astro.checkInjBits()

    t0 = time.time()
    inc = -2
    while (time.time() < t0+runTime):
        
        buff, readout = await(astro.get_readout())
        if buff>4:
            inc += 1
            if inc<0:
                continue
            hit = readout[:buff]
            print(binascii.hexlify(hit))
            #print(hex(readout[:buff]))
            bitfile.write(f"{str(binascii.hexlify(readout))}\n")
            astro.decode_readout(hit, inc) 
        
        #await(astro.print_status_reg())
    astro._wait_progress(5)
    print("stop injection")
    await astro.checkInjBits()
    #await astro.stop_injection()
    await astro.checkInjBits()


    print("read out buffer")
    buff, readout = await(astro.get_readout())
    readout_data = readout[:buff]
    print(binascii.hexlify(readout_data))
    print(f"{buff} bytes in buffer")
    astro.decode_readout(readout_data, 0)
    bitfile.close() # Close open file       


asyncio.run(main())
