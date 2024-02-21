# CMOD Flight Target

The CMOD build target runs on the FPGA Board for Flight Configuration: 

- Number of Supported Layers: 3 Quad-Chip Layer Board via wire connector. 1 SPI + Interrupt interface pro layer. 
- Housekeeping: ADC and DAC SPI interface
- Host interfaces:
    - Flight Configuration: Beagle Board through SPI+Reset Connector (Host can reset/activate the firmware)
    - Debugging: USB-UART for quick PC debugging 

## FPGA Board References  

The CMOD target is build to match the requirements of the FPGA Board:


- [FPGA Board schematic](./ASTEP_FPGA_Board.pdf){ target=_blank }
- CMOD A7-35T Reference Manual [at Digilent](https://digilent.com/reference/programmable-logic/cmod-a7/start){ target=_blank }

## Reset and Clocking

- The CMOD firmware uses the clocking scheme provided by the CMOD board
- There are two negative active resets wired to the CMOD, which are by default inactive (pull-up) - it might be worth changing this behavior or pulling them down externally later to ensure the FPGA board stays as quiet as possible until the host starts the subsystems.
- Reset descriptions:
    - Cold Reset: This reset line will reset the firmware completely, including the clocks
    - Warm Reset: This resets only the core logic, without stopping clocks. It can be used to issue a quick reset if needed. 

!!! note 
    The dual reset configuration could probably be reduced to one reset, for example if one of the I/O lines were to be needed for another purpose.

## Software Entry Point 

To use any python script with the CMOD, a board driver has to be opened targetting either: 

- A UART Com port, if the USB-UART interface is used for testing -> This was tested in simulation and with the Gecco Nexys FPGA Board
- The SPI hardware device of the Beagle Board -> Not tested or implemented at the moment

The UART interface has been tested using the Gecco Environment, there is a driver startup method: 

```python 
import drivers.boards

## Open UART Driver for CMOD
boardDriver = drivers.boards.getCMODUartDriver()
boardDriver.open()

## Following script as usual
```

For the SPI variant:

```python 
import drivers.boards

## Open SPI Driver for CMOD
## !! THIS WILL FAIL RIGHT NOW, NOT IMPLEMENTED !!
boardDriver = drivers.boards.getCMODSPIDriver()
boardDriver.open()

## Following script as usual
```

## CMOD FW Bringup

To bringup an FPGA Board, one can run a set of simple calls to the firmware to check basic functionality. 
The following set of tests are meant to be from simple to complicated, meaning if one test fails, following tests will likely fail too.

Don't forget to open the driver depending on the desired host interface (SPI or UART).

You can also see the Software [Getting Started](../sw/getting_started.md) page for examples of firmware software interfacing.

### Pre-requirements

Before testing the Firmware, check the reset configuration, and make sure that the cold and warm reset lines are not active (pulled-down). 


### 1: Read the Firmware ID and version 

To test the basic communication between host and Firmware, reading the Firmware ID and version is a good test.

```python

# Expect 0xac03
firmwareID  = asyncio.run(boardDriver.readFirmwareID())

# This is the build date of the firmware, used to compare flashed version with expected latest version
version     = asyncio.run(boardDriver.readFirmwareVersion())
```



