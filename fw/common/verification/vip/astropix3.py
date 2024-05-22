
from cocotb.triggers    import Timer , RisingEdge , FallingEdge , Join , First ,Event
import vip.spi
vip.spi.info()

import logging 
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

def debug():
    logger.setLevel(logging.DEBUG)


class Astropix3Model:
    """This Model can be used to return some bytes"""

    def __init__(self,dut,prefix,chipID):
        self.interruptn       = dut._id(prefix+"_interruptn", extended=False)
        self.interruptn.value = 1
        self.chipID           = chipID

        ## Create Slave VIP
        ## Create SPI Slave
        self.spiSlave = vip.spi.VSPISlave(
            clk = dut._id(prefix+"_spi_clk", extended=False), 
            csn = dut._id(prefix+"_spi_csn", extended=False),
            mosi= dut._id(prefix+"_spi_mosi", extended=False),
            miso= dut._id(prefix+"_spi_miso", extended=False),
            misoDefaultValue = 0x3D)
        self.spiSlave.misoDoneEvent = Event("spi_miso_done")
        self.spiSlave.start_monitor()

       

    ## Config
    ###################
    async def loadConfigFromYAML(self, srName: str ):
        """This method loads the list of SR config from YAML - A name must be provided since multiple SR chains can be available in the chip"""

    ## Frame generation
    ############

    async def generateTestFrame(self,length:int,framesCount: int = 1 ): 
        """Generate a Frame of a certain length with a counter as value"""

        print(f"Starting frame generator, queue length={self.spiSlave.misoQueue.qsize()}")

        ## Generate Bytes counter
        for frameI in range(framesCount):
            bytes = []
            await self.spiSlave.misoQueue.put(length | (self.chipID << 3))
            for x in range(length):
                await self.spiSlave.misoQueue.put(x+1)
        
        ## Trigger interrupt
        self.interruptn.value = 0

        ## Wait until sending done
        try:
            await self.spiSlave.misoDoneEvent.wait()
            self.spiSlave.misoDoneEvent.clear()
        except:
            ## Clean queue
            #self.spiSlave.misoQueue._init()
            #print("Timedout finishing")
            for x in range(self.spiSlave.misoQueue.qsize()):
                await self.spiSlave.misoQueue.get()
            #print("Cleared queue")
            #await self.spiSlave.misoQueue.clear()
            #pass
            #print("Wait for done timed out")
        finally:
            ## Release interrupt
            self.interruptn.value = 1
        

        #print("Done frame generator")

    ## SPI Frames Analyses
    ##############
    async def parseSPIBytesAsConfig(self,broadcast : bool = False): 
        """Analyses the SPI Bytes as config command, throw an error if not a config"""
        if await self.spiSlave.getBytesCount() == 0:
            raise Error("No Bytes received as SPI Slave")
        
        
        # Check header
        ####
        header = await self.spiSlave.getByte()
        if broadcast:
            assert((header >> 5 == 0x2) , "Header Command bits must be 0x2 single target chip")
        else:
            assert((header == 0x7E) , "Header Command bits must 0x7E broadcast")

        # Loop to get the config bits
        logger.info("Checking SPI Config SIN/CK1/CK2 sequence")
        res = []
        while await self.spiSlave.getBytesCount() >0:
            srByte = await self.spiSlave.getByte()

            # Check load
            if (srByte == 0x3):
                logger.info(f"-- Found Load")
                while await self.spiSlave.getBytesCount() >0:
                    srByte = await self.spiSlave.getByte()
                    if (srByte == 0x3):
                        logger.info(f"-- Found Load")
                    else:
                        break
                logger.info(f"-- End of Load")
                break 

            # SIN byte
            res.append(srByte & 0x01)
            logger.info(f"- SIN={srByte & 0x01}")


        await self.spiSlave.clearBytes()
        logger.info(f"-- Done SPI Config: {res}")
        return res
