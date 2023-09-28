
from drivers.boards.board_driver import BoardDriver
from .voltageboard import VoltageBoard

import rfg.io
import rfg.core
import rfg.discovery



class GeccoCarrierBoard(BoardDriver): 

    def __init__(self,rfg):
        BoardDriver.__init__(self,rfg)
        self.cards = {}


    def getVoltageBoard(self,slot : int ):
        """Create or return Voltage board for a certain slot"""
        if slot in self.cards:
            return self.cards[slot]
        else:
            vb = VoltageBoard(rfg = self.rfg, slot = slot)
            self.cards[slot] = vb
            vb.vsupply  = 3.3
            vb.vcal     = .989
            return vb

    def selectUARTIO(self):
        import drivers.astep.serial
        port = drivers.astep.serial.selectFirstLinuxFTDIPort()
        if port:
            self.rfg.withUARTIO(port.device)
            return self

        else:
            raise RuntimeError("No Serial Port available")

    def selectFTDIFifoIO(self):
        pass

