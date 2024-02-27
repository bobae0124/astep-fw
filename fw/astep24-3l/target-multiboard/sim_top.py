
import cocotb
from cocotb.triggers    import Timer,RisingEdge,FallingEdge, Combine
from cocotb.clock       import Clock
from cocotbext.uart import UartSource, UartSink

import vip.cctb
import rfg

## Import simulation target driver
import astep24_3l_sim


@cocotb.test(timeout_time = 1,timeout_unit="ms",skip=True)
async def test_clocking_resets(dut):
    await vip.cctb.common_clock_reset_nexys(dut)

    await Timer(10, units="us")


@cocotb.test(timeout_time = 1,timeout_unit="ms")
async def test_read_id(dut):

    driver = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_clock_reset_nexys(dut)
    await Timer(10, units="us")
    

    ## Read Firmware Type
    version = await driver.readFirmwareVersion()
    print("Version: ",version)
    await Timer(10, units="us")

@cocotb.test(timeout_time = 12,timeout_unit="ms",skip=True)
async def test_injection(dut):

    rfg.core.debug()
    boardDriver = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_clock_reset_nexys(dut)
    await Timer(10, units="us")
    

    # Get Injection Board from driver
    injBoard = boardDriver.getInjectionBoard()

    # Configure
    injBoard.initdelay = 4
    injBoard.clkdiv = 2
    injBoard.period = 4
    injBoard.pulsesperset = 4
    injBoard.cycle = 1 # 0 Should mean indefinite

    ## Start
    await injBoard.start()
    await Timer(500, units="us")

    await boardDriver.ioSetInjectionToGeccoInjBoard(enable = False,flush = True)

    await injBoard.start()
    await Timer(500, units="us")


@cocotb.test(timeout_time = 1,timeout_unit="ms")
async def test_spi_1byte_out(dut):

    boardDriver = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_clock_reset_nexys(dut)
    await Timer(10, units="us")

    ## Read Firmware Type
    version = await boardDriver.readFirmwareVersion()
    print("Version2: ",version)
    await Timer(10, units="us")

    ## Set Clock divider
    await boardDriver.configureLayerSPIFrequency(500000,flush=True)
    await Timer(50, units="us")

    ## Write bytes
    await boardDriver.setLayerReset(0,reset = False , flush = True)
    await boardDriver.writeBytesToLayer(0,[0xAB,0xCD],flush=True)

    await Timer(200, units="us")
