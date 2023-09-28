
import cocotb
from cocotb.triggers    import Timer,RisingEdge
from cocotb.clock       import Clock

import common.cctb


@cocotb.test()
async def test_reset(dut):

    dut.cpu_resetn.value = 1
    cocotb.start_soon(Clock(dut.sysclk, 10, units='ns').start())
    await Timer(300, units="us")
    dut.cpu_resetn.value = 0
    await Timer(1, units="us")
    dut.cpu_resetn.value = 1
    await Timer(20, units="us")

    
    await Timer(100, units="us")