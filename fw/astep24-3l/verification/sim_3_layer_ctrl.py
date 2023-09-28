
import sys
import os

import cocotb
from cocotb.triggers    import Timer,RisingEdge,with_timeout
from cocotb.clock       import Clock
from cocotbext.uart import UartSource, UartSink

import vip.cctb

import astep24_3l_sim

@cocotb.test(timeout_time =4 , timeout_unit = "ms")
async def test_injection(dut):

    board = astep24_3l_sim.getUARTDriver(dut)
    await vip.cctb.common_system_clock(dut)
    await Timer(10, units="us")

    ## Write to injection module # Periode #
    
    await board.rfg.write_layers_inj_wdata(2)
    await board.rfg.write_layers_inj_waddr(0x18) # Periode
    await board.rfg.write_layers_inj_waddr(0x08) 
 
    await board.rfg.write_layers_inj_wdata(5) # 
    await board.rfg.write_layers_inj_waddr(0x17) # Pulses
    await board.rfg.write_layers_inj_waddr(0x07) # Pulses

    
    await board.rfg.write_layers_inj_wdata(7) # 
    await board.rfg.write_layers_inj_waddr(0x1A) # Len
    await board.rfg.write_layers_inj_waddr(0x0A,flush=True) # Len

    ## Start
    await board.rfg.write_layers_inj_ctrl(0x2) # Suspend + reset
    await board.rfg.write_layers_inj_ctrl(0x3) # Suspend + 1 reset
    await board.rfg.write_layers_inj_ctrl(0xD) # Sync + Syncrst , no suspend
    await board.rfg.write_layers_inj_ctrl(0x5,flush=True) # Sync + !Syncrst , no suspend

    ## Count 5 Pulses
    await with_timeout(RisingEdge(dut.layers_inj), 800, 'us')
    await with_timeout(RisingEdge(dut.layers_inj), 100, 'us')
    await with_timeout(RisingEdge(dut.layers_inj), 100, 'us')
    await with_timeout(RisingEdge(dut.layers_inj), 100, 'us')
    #await with_timeout(RisingEdge(dut.layers_inj), 100, 'us')

   
    await Timer(100, units="us")
