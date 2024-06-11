


import sys
import os
import os.path

#sys.path.append(os.path.dirname(__file__)+"/.generated/")

import cocotb
from cocotb.triggers    import Timer,RisingEdge,FallingEdge
from cocotb.clock       import Clock

import vip.cctb
import vip.astropix3

import vip.spi
vip.spi.info()

## Import simulation target driver
import astep24_3l_sim

@cocotb.test(timeout_time = 3 , timeout_unit = "ms")
async def test_layer_0_config_sr(dut):

    ## Get Target Driver
    driver = astep24_3l_sim.getUARTDriver(dut)

    ## Clock/Reset
    await vip.cctb.common_clock_reset(dut)
    await Timer(10, units="us")

    ## Create ASIC config
    driver.setupASICS(version = 2, rows = 3 , chipsPerRow = 1, configFile = "./files/config_c0_r0.yml")

    ## Send config
    for row in range(3):
        asic = driver.getAsic(row = row)
        await asic.writeConfigSR(ckdiv = 1 , limit = 4)
        ## After last bit to load = 4 written, we can wait for a falling edge of load 
        await FallingEdge(dut._id(f"layers_sr_out_ld{row}", extended=False))
    

    await Timer(150, units="us")
