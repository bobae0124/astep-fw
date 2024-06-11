## Import the RFG module
from fsp.astep24_3l_top import main_rfg

## Use a UART port to communicate with the Firmware
with serial.Serial('/dev/ttyUSB0') as ser:

    ## Select Serial Port as RFG I/O Level 
    rfg = main_rfg()
    rfg.withUARTIO(ser)

    ## Read Firmware ID
    version = await rfg.read_firmware_version()
    print(f"Firmware version: {version}") 

