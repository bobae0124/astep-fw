
import cocotb
from cocotb.triggers    import Timer,RisingEdge,FallingEdge, Combine
from cocotb.clock       import Clock
from cocotbext.uart import UartSource, UartSink

import vip.cctb
import rfg

## Import simulation target driver
import astep24_3l_sim


@cocotb.test(timeout_time = 1,timeout_unit="ms")
async def test_clocking_resets(dut):
    await vip.cctb.common_clock_reset_cmod(dut)

    await Timer(10, units="us")


@cocotb.test(timeout_time = 1,timeout_unit="ms")
async def test_read_id(dut):

    driver = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_clock_reset_cmod(dut)
    await Timer(10, units="us")
    

    ## Read Firmware Type
    version = await driver.readFirmwareVersion()
    print("Version: ",version)
    await Timer(10, units="us")


@cocotb.test(timeout_time = 5,timeout_unit="ms")
async def test_sr_short_multilayer(dut):

    driver = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_clock_reset_cmod(dut)
    await Timer(10, units="us")
    
    ## Setup Asic
    driver.setupASICS(version = 3 , rows = 3 , chipsPerRow= 2, configFile = "../../files/test_config_short.yml" )

    ## Write Config
    asic0 = driver.getAsic(0)
    await asic0.writeConfigSR(ckdiv=1)

    asic1 = driver.getAsic(1)
    await asic1.writeConfigSR(ckdiv=1)

    asic2 = driver.getAsic(2)
    await asic2.writeConfigSR(ckdiv=1)

    await Timer(10, units="us")
