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

pixel = [0, 10]

print("creating object")
astro = astepRun(inject=pixel)

async def main():
    print("opening fpga")
    await astro.open_fpga()

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    await astro.asic_init(yaml="test_quadchip", analog_col=pixel[1])
    print(f"Header: {astro.get_log_header()}")

    #for GECCO only
    print("initializing voltage")
    await astro.init_voltages(vthreshold=100) ## th in mV

    print("FUNCTIONALITY CHECK")
    await astro.functionalityCheck(holdBool=True)

    print("enable pixel")
    await astro.enable_pixel(pixel[0], pixel[1])  

    print("setup readout")
    #pass layer number
    await astro.setup_readout(0) 

    print("init injection")
    await astro.init_injection()

    print("start injection")
    await astro.start_injection()

    t0 = time.time()
    inc = -2
    while (time.time() < t0+2):
        
        buff, readout = await(astro.get_readout())
        if buff>4:
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