# Architecture

This page presents the global firmware architecture, details are provided in the following pages:

- [Clocking and Resets](./clocking_reset_startup.md)
- [Layer Interface](./layer_if.md)
- [Registers](./main_rfg.md)

The firmware is constructed to target two main Hardware environments:

The following picture shows a simplified architecture of the firmware: 

<figure markdown>
  ![architecture-simple](./astep-fw-drawings.drawio)
  <figcaption>Simplified Architecture</figcaption>
</figure>

The next sections give a brief description of the main blocks 

## Host IF 

The host interface provide read/write access to the register file, through which the firmware can be configured and data read out. 

There are three interfaces available, connected to the register file through a switch: 

- FTDI UART: Both CMOD and Gecco hardware target feature an FTDI-UART converter. This interface is limited to 921600bps at the moment. 
- FTDI FIFO: The Gecco Nexys Video FPGA target features an USB-FTDI IC connected in synchronous FIFO mode to the FPGA, enabling full-speed USB 2.0 datatransfer (up to 480mbps)
- SPI Slave: The ASTEP experiment configuration will use an SPI Slave interface to communicate between the main BeagleBone CPU board and the FPGA board (SPI Master on the BeagleBone side)

Depending on the target configuration, one or more interfaces might not be connected to actual FPGA I/O, which will trigger a logic optimisation and remove the unused interfaces from the final bitstream.

## Layer IF 

The Layer Interface provides the required I/O interfaces to control and read data from the layers: 

- Clocks (Timestamp, Sample)
- Control Signals: Reset, Hold, Interrupt
- Configuration Shift Register
- SPI: The SPI Interface is used to read data frames from the sensor, and can also be used to configure the Chip 

## Housekeeping 

The Housekeeping modules provide some additional interfaces like: 

- FPGA XADC to monitor internal values like temperature 
- SPI Interfaces for an external DAC and ADC, used to set utility voltages and sample some monitoring analog values (like a temperature sensor on the layer)