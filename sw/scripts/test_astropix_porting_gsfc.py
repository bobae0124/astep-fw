import asyncio
from astropix import astropixRun

print("creating object")
astro = astropixRun(chipversion=3, inject=[0,10])

async def main():
    print("opening fpga")
    await astro.open_fpga()

    print("initializing asic")
    await astro.asic_init(yaml="testconfig_v3", analog_col = 10)

    print("initializing voltage")
    await astro.init_voltages(vthreshold=300) ## th in mv


    "AS"
    print("enable pixel")
    await astro.enable_pixel(10,0)   
    print("init injection")
    await astro.init_injection(inj_voltage=0.8, onchip=False)
    print("enable spi")
    await astro.enable_spi()
    print("start injection")
    await astro.start_injection()


    print(f"Header: {astro.get_log_header()}")


asyncio.run(main())