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

pixel = [0, 15]
cmod = False

print("creating object")
astro = astepRun(inject=pixel)

async def main():
    print("opening fpga")
    await astro.open_fpga(cmod=cmod, uart=False)

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    await astro.asic_init(yaml="test_quadchip", analog_col=pixel[1])
    print(f"Header: {astro.get_log_header()}")

    if not cmod:
        print("initializing voltage")
        await astro.init_voltages() ## th in mV

    print("FUNCTIONALITY CHECK")
    await astro.functionalityCheck(holdBool=True)

    print("update threshold")
    await astro.update_pixThreshold(100)

    print("enable pixel")
    await astro.enable_pixel(pixel[0], pixel[1])  

    print("init injection")
    await astro.init_injection(inj_voltage=300)

    print("final configs")
    print(f"Header: {astro.get_log_header()}")
    await astro.asic_configure()
    
    print("setup readout")
    #pass layer number
    await astro.setup_readout(0) 

    print("start injection")
    await astro.start_injection()

    t0 = time.time()
    inc = -2
    while (time.time() < t0+15):
        
        buff, readout = await(astro.get_readout())
        #if buff>4:
        if not sum(readout[0:2])==510: #avoid printing out if first 2 bytes are "ff ff" (string is just full of ones)
            inc += 1
            if inc<0:
                continue
            hit = readout[:buff]
            print(binascii.hexlify(hit))
            #print(hex(readout[:buff]))
            astro.decode_readout(hit, inc) 
        
        #await(astro.print_status_reg())

    print("stop injection")
    await astro.stop_injection()


asyncio.run(main())