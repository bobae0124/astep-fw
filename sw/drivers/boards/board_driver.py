
import drivers.astep.housekeeping
import rfg.io
import rfg.core
import asyncio

from drivers.astropix.astropix2 import Astropix2


class BoardDriver():

    def __init__(self,rfg):
        self.rfg = rfg
        self.houseKeeping = drivers.astep.housekeeping.Housekeeping(rfg)
        self.asics = []

    def open(self):
        self.rfg.io.open()

    def debug_full(self):
        rfg.core.debug()

    def flush():
        self.rfg.flush()

    async def readFirmwareVersion(self):
        """Returns the raw integer with the firmware Version"""
        return (await (self.rfg.read_hk_firmware_version()))

    async def readFirmwareID(self):
        """Returns the raw integer with the firmware id"""
        return await (self.rfg.read_hk_firmware_id())

    async def readFirmwareIDName(self):
        """"""
        boards  =  {0xab01: 'Neys GECCO Astropix v2',0xab02: 'Neys GECCO Astropix v3'}
        boardID =  await (self.readFirmwareID())
        return boards.get(boardID,"Firmware ID unknown: {0}".format(hex(boardID)))

    async def checkFirmwareVersionAfter(self,v):
        return await (self.readFirmwareVersion()) >= v

    ## Gecco
    ###############
    def geccoGetVoltageBoard(self):
        return self.getVoltageBoard(slot = 4 )

    ## Chips
    ################
    def setupASICS(self,version : int , rows: int = 1 , chipsPerRow:int = 1 , configFile : str | None = None ):
        assert version >=2 and version < 4 , "Only Astropix 2 and 3 Supported"
        if version is 2: 
            self.geccoGetVoltageBoard().dacvalues =  (8, [0, 0, 1.1, 1, 0, 0, 1, 1.100])

        for i in range(rows):
            asic = Astropix2(self.rfg)
            self.asics.append(asic)
            asic.num_chips = chipsPerRow

            if configFile is not None: 
                asic.load_conf_from_yaml(configFile)

    def getAsic(self,row = 0 ): 
        """Returns the Asic Model for the Given Row - Other chips in the Daisy Chain are handeled by the returned 'front' model"""
        return self.asics[row]


    ## Layers
    ##################
    async def configureLayerSPIDivider(self, divider:int , flush = False):
        await self.rfg.write_spi_layers_ckdivider(divider,flush)

    async def resetLayer(self, layer : int , waitTime : float = 0.4 ):
        """Sets Layer in Reset then Remove reset after a defined time - This method sends the bytes to Firmware right away"""
        await self.setLayerReset(layer = layer, reset = True , flush = True )
        await asyncio.sleep(waitTime)
        await self.setLayerReset(layer = layer, reset = False , flush = True )

    
    async def setLayerReset(self,layer:int, reset : bool, disable_autoread : int  = 1, flush = False):
        regval = 0xff if reset is True else 0x00
        if not reset: 
            regval = regval | ( disable_autoread << 2 )
        await getattr(self.rfg, f"write_layer_{layer}_cfg_ctrl")(regval,flush)
      

    async def holdLayer(self,layer:int,hold:bool = True,flush:bool = False):
        ctrl = await getattr(self.rfg, f"read_layer_{layer}_cfg_ctrl")()
        if hold:
            ctrl |= 1 
        else: 
            ctrl &= 0XFE
        await getattr(self.rfg, f"write_layer_{layer}_cfg_ctrl")(ctrl,flush=flush) 


    async def writeLayerBytes(self,layer : int , bytes: bytearray,flush:bool = False):
        await getattr(self.rfg, f"write_layer_{layer}_mosi_bytes")(bytes,flush)
 

    async def getLayerStatIDLECounter(self,layer:int):
        return await getattr(self.rfg, f"read_layer_{layer}_stat_idle_counter")()


    ## Readout
    ################
    async def readoutGetBufferSize(self):
        """Returns the actual size of buffer"""
        return await self.rfg.read_layers_readout_read_size()
    
    async def readoutReadBytes(self,count : int):
        ## Using the _raw version returns an array of bytes, while the normal method converts to int based on the number of bytes
        return await self.rfg.read_layers_readout_raw(count = count)