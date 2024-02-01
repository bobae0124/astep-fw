from drivers.boards.board_driver import BoardDriver
from .voltageboard import VoltageBoard
from .injectionboard import InjectionBoard
import rfg.io
import rfg.core
import rfg.discovery



class CMODBoard(BoardDriver): 

    def __init__(self,rfg):
        BoardDriver.__init__(self,rfg)
        self.cards = {}