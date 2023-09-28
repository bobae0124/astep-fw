
import asyncio 

## Load Board
##############
import drivers.boards
import drivers.astropix.asic

## Open UART Driver for Gecco
boardDriver = drivers.boards.getGeccoUARTDriver()
boardDriver.open()

## Read Firmware version
## This call should run in asyncio
id =      asyncio.run(boardDriver.readFirmwareID())
version = asyncio.run(boardDriver.readFirmwareVersion())

print(f"Firmware ID: 0x{hex(id)}")
print(f"Firmware Version: {str(version)}")