
from .asic import Asic 

class Astropix2(Asic):


    def __init__(self,rfg):
        Asic.__init__(self,rfg)
        self._chipversion = 2
        self._num_rows = 35
        self._num_cols = 35