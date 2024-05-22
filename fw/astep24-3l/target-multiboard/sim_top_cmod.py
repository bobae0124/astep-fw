
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


@cocotb.test(timeout_time = 5,timeout_unit="ms")
async def test_spi_csn(dut):

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

@cocotb.test(timeout_time = 1 , timeout_unit = "ms")
async def test_layers_spi_chipselect(dut):
    """Test that the Chip Select is behaving according to register constrols"""


    ## Get Target Driver
    driver = astep24_3l_sim.getUARTDriver(dut)

    ## Clock/Reset
    await vip.cctb.common_clock_reset_cmod(dut)
    await Timer(10, units="us")

    ## At reset, CS should be one
    assert(dut.layers_spi_csn.value == 1)


    ## Now select layer 0
    ## Global CS should go low
    await driver.setLayerConfig(layer = 0 , reset = False, autoread = False, hold = False , chipSelect = True,flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 0)

    ## Deassert Chip Select
    ##################
    await driver.setLayerConfig(layer = 0 , reset = False, autoread = False, hold = False , chipSelect = False,flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 1)

    ## Set autoread on Layer 0
    ## Chip Select should go low
    ############
    await driver.setLayerConfig(layer = 0 , reset = False, autoread = True, hold = False , chipSelect = False,flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 0)

    ## Deassert Chip Select
    ############
    await driver.setLayerConfig(layer = 0 , reset = False, autoread = False, hold = False , chipSelect = False,flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 1)

    ## Check Python Utility to use layer 0 chip select as global CS
    ############

    ## Assert
    await driver.layersSelectSPI(flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 0)

    ## Deassert
    await driver.layersDeselectSPI(flush=True)
    await Timer(1, units="us")
    assert(dut.layers_spi_csn.value == 1)

    await Timer(10, units="us")