import asyncio
from astep import astepRun
import time

print("creating object")
astro = astepRun(chipversion=3, inject=[0,10])

async def main():
    print("opening fpga")
    await astro.open_fpga()

    print("setup clocks")
    await astro.setup_clocks()

    print("setup spi")
    await astro.enable_spi()
    
    print("initializing asic")
    await astro.asic_init(yaml="testconfig_v3", analog_col = 10)
    print(f"Header: {astro.get_log_header()}")

    #for GECCO only
    print("initializing voltage")
    await astro.init_voltages(vthreshold=300) ## th in mv

    print("FUNCTIONALITY CHECK")
    await astro.functionalityCheck(holdBool=False)

    print("enable pixel")
    await astro.enable_pixel(10,0)   

    print("init injection")
    await astro.init_injection()
    print("start injection")
    await astro.start_injection()

    t0 = time.time()
    while (time.time() < t0+10):
        buff, readout = await(astro.get_readout())
        if buff>0:
            print(readout[:buff])

    print("stop injection")
    await astro.stop_injection()


asyncio.run(main())