import cocotb
from cocotb.triggers    import Timer , RisingEdge , FallingEdge , Join
from cocotb.clock       import Clock
from cocotb.queue       import Queue
from enum import Enum

class VAXIS_Slave:
    
    search = "m_axis"

    data_queue : Queue | None = None

    def __init__( self, dut ) -> None:
        self.dut = dut 
        self.dut.m_axis_tready.value = 0

    def ready(self):
        self.dut.m_axis_tready.value = 1

    async def monitor_task(self):
        self.data_queue = Queue()
        while True:
            await RisingEdge(self.dut.m_axis_tvalid)
            await self.data_queue.put(self.dut.m_axis_tdata.value)

    def start_monitor(self):
        self.monitor_task_handle =  cocotb.start_soon(self.monitor_task())
        return self.monitor_task_handle

    async def stop_monitor(self):
        await self.monitor_task_handle.kill()