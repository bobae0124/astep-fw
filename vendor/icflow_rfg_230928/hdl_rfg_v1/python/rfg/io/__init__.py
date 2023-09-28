#print("Initialisation of RFG IO Module")

import rfg.core

import importlib

serialLoader = importlib.find_loader('serial')
if serialLoader is not None: 
    import rfg.io.uart


    def withUARTIO(self,port, speed:int | None = None) -> rfg.core.AbstractRFG :
        uartIO = rfg.io.uart.UARTIO()
        uartIO.port = port 
        if not speed is None:
            uartIO.baud = speed
        self.withIODriver(uartIO)
        return self

    rfg.core.AbstractRFG.withUARTIO = withUARTIO


