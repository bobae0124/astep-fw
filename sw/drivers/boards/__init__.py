#print("Init Boards Driver module")

import sys
import os
import rfg.io
import rfg.core
import rfg.discovery



## Firmware Support Register File Definition will be loaded by the discovery method
## This is one way to do things, we could also make a release from firmware with the RFG Python part and copy it locally as a module
sys.path.append(os.environ["BASE"]+"/fw/astep24-3l/common/")

################
## Constructors to get a Board driver with RFG loaded for each config
####################


def getGeccoDriver():
    import drivers.gecco
    firmwareRF  = rfg.discovery.loadOneFSPRFGOrFail()
    boardDriver = drivers.gecco.GeccoCarrierBoard(firmwareRF)

    ## Configure VB Driver for actual Gecco Setup
    vb = boardDriver.getVoltageBoard(slot = 4 )
    vb.map_dac_to_name(2,"vcasc2")
    vb.map_dac_to_name(3,"blpix")
    vb.map_dac_to_name(6,"vminuspix")
    vb.map_dac_to_name(7,"thpix")

    ## Init configs, these can be overriden in the BoardDriver asic setup method
    vb.vcal = 1.19
    vb.dacvalues =  (8, [0, 0, 1.1, 1, 0, 0, 1, 1.100])

    return boardDriver

def getGeccoNODriver():
    return getGeccoDriver()

def getGeccoUARTDriver():
    return getGeccoDriver().selectUARTIO()

def getGeccoFTDIDriver():
    return getGeccoDriver().selectFTDIFifoIO()