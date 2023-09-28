from decimal import Decimal, ROUND_HALF_EVEN

import rfg.io
import rfg.core


class Housekeeping():

    def __init__(self,rfg):
        self.rfg = rfg

    async def readFirmwareVersion(self, queue : int = 0):
        return (await self.rfg.read_hk_firmware_version())
    async def readFirmwareID(self, queue : int = 0):
        """"""
        return (await self.rfg.read_hk_firmware_id())

    async def checkFirmwareVersionAfter(self,v):
        return (await self.readFirmwareVersion()) >= v


    def convertBytesToFPGATemperature(self, rawTemperature) -> float: 
        rawTemperature = (int.from_bytes(rawTemperature,'little')) >> 4
        floatTemperature =  rawTemperature * 503.975 / 4096 - 273.15
        return Decimal(floatTemperature).quantize(Decimal('.01'), rounding=ROUND_HALF_EVEN)

    def convertBytesToVCCInt(self,rawVccit) -> float : 
        rawVccit = (int.from_bytes(rawVccit,'little')) >> 4
        return Decimal(rawVccit  / 4096 * 3 ).quantize(Decimal('.01'), rounding=ROUND_HALF_EVEN)


    async def setXADCSampleFrequence(self,targetClock,refClock  : int = 20000000):
        await self.rfg.write_hk_conversion_trigger_match(int(refClock/targetClock),flush = True)

    async def getXADCSampleFrequence(self,refClock : int = 20000000):
        matchRegister = await self.rfg.read_hk_conversion_trigger_match()
        dividedClock = float(refClock) / float(matchRegister)
        return Decimal(dividedClock).quantize(Decimal('.01'), rounding=ROUND_HALF_EVEN)

    async def readFPGATemperature(self, targetQueue: str | None = None ) ->  float: 
        """Returns FPGA Temperature as Float -> Doc: https://docs.xilinx.com/r/en-US/ug480_7Series_XADC/Analog-Inputs "Temperature Sensor" """

        rawTemperature = await self.rfg.read_hk_xadc_temperature(targetQueue = targetQueue) >> 4
        floatTemperature =  rawTemperature * 503.975 / 4096 - 273.15
        return Decimal(floatTemperature).quantize(Decimal('.01'), rounding=ROUND_HALF_EVEN)
    
    async def readFPGATemperatureRaw(self, targetQueue: str | None = None ) ->  float: 
        """Doc: https://docs.xilinx.com/r/en-US/ug480_7Series_XADC/Analog-Inputs "Temperature Sensor" """
        return await self.rfg.read_hk_xadc_temperature(targetQueue = targetQueue) >> 4
        

    async def readVCCInt(self, targetQueue: str | None = None) ->  float: 
        """ https://docs.xilinx.com/r/en-US/ug480_7Series_XADC/Analog-Inputs "Power Supply Sensor" """

        vccint = ( (await self.rfg.read_hk_xadc_vccint(targetQueue = targetQueue)) >> 4 ) / 4096 * 3
        return Decimal(vccint).quantize(Decimal('.01'), rounding=ROUND_HALF_EVEN)


    async def writeADCBytes(self,values : bytearray) :
        return await self.rfg.write_hk_adc_mosi_fifo_bytes(values,flush=True)
    