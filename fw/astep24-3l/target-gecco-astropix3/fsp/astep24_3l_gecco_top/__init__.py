

import logging
from rfg.core import AbstractRFG
from rfg.core import RFGRegister
logger = logging.getLogger(__name__)


def load_rfg():
    return main_rfg()


IO_LED = 0x0
HK_FIRMWARE_ID = 0x1
HK_FIRMWARE_VERSION = 0x5
HK_XADC_TEMPERATURE = 0x9
HK_XADC_VCCINT = 0xb
HK_CONVERSION_TRIGGER = 0xd
HK_STAT_CONVERSIONS_COUNTER = 0x11
HK_ADC_MOSI_FIFO = 0x15
HK_ADC_MISO_FIFO = 0x16
HK_ADC_MISO_FIFO_READ_SIZE = 0x17
HK_DAC_MOSI_FIFO = 0x1b
SPI_LAYERS_CKDIVIDER = 0x1c
SPI_HK_CKDIVIDER = 0x1d
LAYER_0_CFG_CTRL = 0x1e
LAYER_1_CFG_CTRL = 0x1f
LAYER_2_CFG_CTRL = 0x20
LAYER_3_CFG_CTRL = 0x21
LAYER_4_CFG_CTRL = 0x22
LAYER_0_CFG_NODATA_CONTINUE = 0x23
LAYER_1_CFG_NODATA_CONTINUE = 0x24
LAYER_2_CFG_NODATA_CONTINUE = 0x25
LAYER_3_CFG_NODATA_CONTINUE = 0x26
LAYER_4_CFG_NODATA_CONTINUE = 0x27
LAYER_0_STAT_FRAME_COUNTER = 0x28
LAYER_1_STAT_FRAME_COUNTER = 0x2a
LAYER_2_STAT_FRAME_COUNTER = 0x2c
LAYER_3_STAT_FRAME_COUNTER = 0x2e
LAYER_4_STAT_FRAME_COUNTER = 0x30
LAYER_0_MOSI = 0x32
LAYER_1_MOSI = 0x33
LAYER_2_MOSI = 0x34
LAYER_3_MOSI = 0x35
LAYER_4_MOSI = 0x36
LAYERS_CFG_FRAME_TAG_COUNTER = 0x37
LAYERS_CFG_NODATA_CONTINUE = 0x3b
LAYERS_SR_OUT = 0x3c
LAYERS_INJ_CTRL = 0x3d
LAYERS_INJ_WADDR = 0x3e
LAYERS_INJ_WDATA = 0x3f
LAYERS_SR_IN = 0x40
LAYERS_READOUT = 0x41
LAYERS_READOUT_READ_SIZE = 0x42
LAYER_3_GEN_CTRL = 0x46
LAYER_4_GEN_CTRL = 0x47
LAYER_3_GEN_FRAME_COUNT = 0x48
LAYER_4_GEN_FRAME_COUNT = 0x4a
GECCO_SR_CTRL = 0x4c
HK_CONVERSION_TRIGGER_MATCH = 0x4d




class main_rfg(AbstractRFG):
    
    
    class Registers(RFGRegister):
        IO_LED = 0x0
        HK_FIRMWARE_ID = 0x1
        HK_FIRMWARE_VERSION = 0x5
        HK_XADC_TEMPERATURE = 0x9
        HK_XADC_VCCINT = 0xb
        HK_CONVERSION_TRIGGER = 0xd
        HK_STAT_CONVERSIONS_COUNTER = 0x11
        HK_ADC_MOSI_FIFO = 0x15
        HK_ADC_MISO_FIFO = 0x16
        HK_ADC_MISO_FIFO_READ_SIZE = 0x17
        HK_DAC_MOSI_FIFO = 0x1b
        SPI_LAYERS_CKDIVIDER = 0x1c
        SPI_HK_CKDIVIDER = 0x1d
        LAYER_0_CFG_CTRL = 0x1e
        LAYER_1_CFG_CTRL = 0x1f
        LAYER_2_CFG_CTRL = 0x20
        LAYER_3_CFG_CTRL = 0x21
        LAYER_4_CFG_CTRL = 0x22
        LAYER_0_CFG_NODATA_CONTINUE = 0x23
        LAYER_1_CFG_NODATA_CONTINUE = 0x24
        LAYER_2_CFG_NODATA_CONTINUE = 0x25
        LAYER_3_CFG_NODATA_CONTINUE = 0x26
        LAYER_4_CFG_NODATA_CONTINUE = 0x27
        LAYER_0_STAT_FRAME_COUNTER = 0x28
        LAYER_1_STAT_FRAME_COUNTER = 0x2a
        LAYER_2_STAT_FRAME_COUNTER = 0x2c
        LAYER_3_STAT_FRAME_COUNTER = 0x2e
        LAYER_4_STAT_FRAME_COUNTER = 0x30
        LAYER_0_MOSI = 0x32
        LAYER_1_MOSI = 0x33
        LAYER_2_MOSI = 0x34
        LAYER_3_MOSI = 0x35
        LAYER_4_MOSI = 0x36
        LAYERS_CFG_FRAME_TAG_COUNTER = 0x37
        LAYERS_CFG_NODATA_CONTINUE = 0x3b
        LAYERS_SR_OUT = 0x3c
        LAYERS_INJ_CTRL = 0x3d
        LAYERS_INJ_WADDR = 0x3e
        LAYERS_INJ_WDATA = 0x3f
        LAYERS_SR_IN = 0x40
        LAYERS_READOUT = 0x41
        LAYERS_READOUT_READ_SIZE = 0x42
        LAYER_3_GEN_CTRL = 0x46
        LAYER_4_GEN_CTRL = 0x47
        LAYER_3_GEN_FRAME_COUNT = 0x48
        LAYER_4_GEN_FRAME_COUNT = 0x4a
        GECCO_SR_CTRL = 0x4c
        HK_CONVERSION_TRIGGER_MATCH = 0x4d
    
    
    
    def __init__(self):
        super().__init__()
    
    
    def hello(self):
        logger.info("Hello World")
    
    
    
    async def write_io_led(self,value : int,flush = False):
        self.addWrite(register = Registers['IO_LED'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_io_led(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['IO_LED'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_io_led_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['IO_LED'],count = count, increment = True)
        
    
    
    
    async def read_hk_firmware_id(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_FIRMWARE_ID'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_firmware_id_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_FIRMWARE_ID'],count = count, increment = True)
        
    
    
    
    async def read_hk_firmware_version(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_FIRMWARE_VERSION'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_firmware_version_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_FIRMWARE_VERSION'],count = count, increment = True)
        
    
    
    
    async def read_hk_xadc_temperature(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_XADC_TEMPERATURE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_xadc_temperature_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_XADC_TEMPERATURE'],count = count, increment = True)
        
    
    
    
    async def read_hk_xadc_vccint(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_XADC_VCCINT'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_xadc_vccint_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_XADC_VCCINT'],count = count, increment = True)
        
    
    
    
    async def write_hk_conversion_trigger(self,value : int,flush = False):
        self.addWrite(register = Registers['HK_CONVERSION_TRIGGER'],value = value,increment = True,valueLength=4)
        if flush == True:
            await self.flush()
        
    
    async def read_hk_conversion_trigger(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_CONVERSION_TRIGGER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_conversion_trigger_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_CONVERSION_TRIGGER'],count = count, increment = True)
        
    
    
    
    async def read_hk_stat_conversions_counter(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_STAT_CONVERSIONS_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_stat_conversions_counter_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_STAT_CONVERSIONS_COUNTER'],count = count, increment = True)
        
    
    
    
    async def write_hk_adc_mosi_fifo(self,value : int,flush = False):
        self.addWrite(register = Registers['HK_ADC_MOSI_FIFO'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_hk_adc_mosi_fifo_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['HK_ADC_MOSI_FIFO'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def read_hk_adc_miso_fifo(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_ADC_MISO_FIFO'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_adc_miso_fifo_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_ADC_MISO_FIFO'],count = count, increment = True)
        
    
    
    
    async def read_hk_adc_miso_fifo_read_size(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_ADC_MISO_FIFO_READ_SIZE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_adc_miso_fifo_read_size_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_ADC_MISO_FIFO_READ_SIZE'],count = count, increment = True)
        
    
    
    
    async def write_hk_dac_mosi_fifo(self,value : int,flush = False):
        self.addWrite(register = Registers['HK_DAC_MOSI_FIFO'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_hk_dac_mosi_fifo_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['HK_DAC_MOSI_FIFO'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_spi_layers_ckdivider(self,value : int,flush = False):
        self.addWrite(register = Registers['SPI_LAYERS_CKDIVIDER'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_spi_layers_ckdivider(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['SPI_LAYERS_CKDIVIDER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_spi_layers_ckdivider_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['SPI_LAYERS_CKDIVIDER'],count = count, increment = True)
        
    
    
    
    async def write_spi_hk_ckdivider(self,value : int,flush = False):
        self.addWrite(register = Registers['SPI_HK_CKDIVIDER'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_spi_hk_ckdivider(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['SPI_HK_CKDIVIDER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_spi_hk_ckdivider_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['SPI_HK_CKDIVIDER'],count = count, increment = True)
        
    
    
    
    async def write_layer_0_cfg_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_0_CFG_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_0_cfg_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_0_CFG_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_0_cfg_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_0_CFG_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_1_cfg_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_1_CFG_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_1_cfg_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_1_CFG_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_1_cfg_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_1_CFG_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_2_cfg_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_2_CFG_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_2_cfg_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_2_CFG_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_2_cfg_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_2_CFG_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_3_cfg_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_3_CFG_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_3_cfg_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_3_CFG_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_3_cfg_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_3_CFG_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_4_cfg_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_4_CFG_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_4_cfg_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_4_CFG_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_4_cfg_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_4_CFG_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_0_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_0_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_0_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_0_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_0_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_0_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def write_layer_1_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_1_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_1_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_1_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_1_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_1_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def write_layer_2_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_2_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_2_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_2_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_2_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_2_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def write_layer_3_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_3_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_3_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_3_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_3_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_3_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def write_layer_4_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_4_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_4_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_4_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_4_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_4_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def read_layer_0_stat_frame_counter(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_0_STAT_FRAME_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_0_stat_frame_counter_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_0_STAT_FRAME_COUNTER'],count = count, increment = True)
        
    
    
    
    async def read_layer_1_stat_frame_counter(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_1_STAT_FRAME_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_1_stat_frame_counter_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_1_STAT_FRAME_COUNTER'],count = count, increment = True)
        
    
    
    
    async def read_layer_2_stat_frame_counter(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_2_STAT_FRAME_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_2_stat_frame_counter_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_2_STAT_FRAME_COUNTER'],count = count, increment = True)
        
    
    
    
    async def read_layer_3_stat_frame_counter(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_3_STAT_FRAME_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_3_stat_frame_counter_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_3_STAT_FRAME_COUNTER'],count = count, increment = True)
        
    
    
    
    async def read_layer_4_stat_frame_counter(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_4_STAT_FRAME_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_4_stat_frame_counter_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_4_STAT_FRAME_COUNTER'],count = count, increment = True)
        
    
    
    
    async def write_layer_0_mosi(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_0_MOSI'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_layer_0_mosi_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['LAYER_0_MOSI'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_layer_1_mosi(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_1_MOSI'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_layer_1_mosi_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['LAYER_1_MOSI'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_layer_2_mosi(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_2_MOSI'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_layer_2_mosi_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['LAYER_2_MOSI'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_layer_3_mosi(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_3_MOSI'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_layer_3_mosi_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['LAYER_3_MOSI'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_layer_4_mosi(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_4_MOSI'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def write_layer_4_mosi_bytes(self,values : bytearray,flush = False):
        for b in values:
            self.addWrite(register = Registers['LAYER_4_MOSI'],value = b,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    
    
    async def write_layers_cfg_frame_tag_counter(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_CFG_FRAME_TAG_COUNTER'],value = value,increment = True,valueLength=4)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_cfg_frame_tag_counter(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_CFG_FRAME_TAG_COUNTER'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_cfg_frame_tag_counter_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_CFG_FRAME_TAG_COUNTER'],count = count, increment = True)
        
    
    
    
    async def write_layers_cfg_nodata_continue(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_CFG_NODATA_CONTINUE'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_cfg_nodata_continue(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_CFG_NODATA_CONTINUE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_cfg_nodata_continue_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_CFG_NODATA_CONTINUE'],count = count, increment = True)
        
    
    
    
    async def write_layers_sr_out(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_SR_OUT'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_sr_out(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_SR_OUT'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_sr_out_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_SR_OUT'],count = count, increment = True)
        
    
    
    
    async def write_layers_inj_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_INJ_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_inj_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_INJ_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_inj_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_INJ_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layers_inj_waddr(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_INJ_WADDR'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_inj_waddr(self, count : int = 0 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_INJ_WADDR'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_inj_waddr_raw(self, count : int = 0 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_INJ_WADDR'],count = count, increment = True)
        
    
    
    
    async def write_layers_inj_wdata(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_INJ_WDATA'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_inj_wdata(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_INJ_WDATA'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_inj_wdata_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_INJ_WDATA'],count = count, increment = True)
        
    
    
    
    async def write_layers_sr_in(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYERS_SR_IN'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layers_sr_in(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_SR_IN'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_sr_in_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_SR_IN'],count = count, increment = True)
        
    
    
    
    async def read_layers_readout(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_READOUT'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_readout_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_READOUT'],count = count, increment = True)
        
    
    
    
    async def read_layers_readout_read_size(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYERS_READOUT_READ_SIZE'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layers_readout_read_size_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYERS_READOUT_READ_SIZE'],count = count, increment = True)
        
    
    
    
    async def write_layer_3_gen_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_3_GEN_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_3_gen_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_3_GEN_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_3_gen_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_3_GEN_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_4_gen_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_4_GEN_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_4_gen_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_4_GEN_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_4_gen_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_4_GEN_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_layer_3_gen_frame_count(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_3_GEN_FRAME_COUNT'],value = value,increment = True,valueLength=2)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_3_gen_frame_count(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_3_GEN_FRAME_COUNT'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_3_gen_frame_count_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_3_GEN_FRAME_COUNT'],count = count, increment = True)
        
    
    
    
    async def write_layer_4_gen_frame_count(self,value : int,flush = False):
        self.addWrite(register = Registers['LAYER_4_GEN_FRAME_COUNT'],value = value,increment = True,valueLength=2)
        if flush == True:
            await self.flush()
        
    
    async def read_layer_4_gen_frame_count(self, count : int = 2 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['LAYER_4_GEN_FRAME_COUNT'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_layer_4_gen_frame_count_raw(self, count : int = 2 ) -> bytes: 
        return  await self.syncRead(register = Registers['LAYER_4_GEN_FRAME_COUNT'],count = count, increment = True)
        
    
    
    
    async def write_gecco_sr_ctrl(self,value : int,flush = False):
        self.addWrite(register = Registers['GECCO_SR_CTRL'],value = value,increment = False,valueLength=1)
        if flush == True:
            await self.flush()
        
    
    async def read_gecco_sr_ctrl(self, count : int = 1 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['GECCO_SR_CTRL'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_gecco_sr_ctrl_raw(self, count : int = 1 ) -> bytes: 
        return  await self.syncRead(register = Registers['GECCO_SR_CTRL'],count = count, increment = True)
        
    
    
    
    async def write_hk_conversion_trigger_match(self,value : int,flush = False):
        self.addWrite(register = Registers['HK_CONVERSION_TRIGGER_MATCH'],value = value,increment = True,valueLength=4)
        if flush == True:
            await self.flush()
        
    
    async def read_hk_conversion_trigger_match(self, count : int = 4 , targetQueue: str | None = None) -> int: 
        return  int.from_bytes(await self.syncRead(register = Registers['HK_CONVERSION_TRIGGER_MATCH'],count = count, increment = True , targetQueue = targetQueue), 'little') 
        
    
    async def read_hk_conversion_trigger_match_raw(self, count : int = 4 ) -> bytes: 
        return  await self.syncRead(register = Registers['HK_CONVERSION_TRIGGER_MATCH'],count = count, increment = True)
        
