# Clocking / Reset / Startup

This page summarizes the various clocks used in the design and the reset conditions

## Clocks 

The clocks are generated using an MMMC resource to produce following clocks:

- A core clock used for the main blocks. This clock is fast enough to handle the fastest interface of the design
    - 80Mhz on Gecco target, the fastest I/O clock is the FTDI FIFO interface with 60Mhz. 
    - 40Mhz is enough on CMOD to handle the Sensor Layer interface data rates
- A Uart clock of 30Mhz for the UART IP block configured for 921600bps 
- A timestamp clock of 5Mhz 
- A sample clock of 100Mhz 

Two SPI clocks are generated through a configurable register clock divider: 

- One for the Layers SPI interface  
- One for the Housekeeping external SPI ADC and DAC

<figure markdown>
  ![block-clocks](./astep-fw-drawings.drawio)
  <figcaption>Clocks overview</figcaption>
</figure>


## Cold/Warm Resets 

Each of the generated clock is provided with a synchronous negative active reset (resn), generated through a reset synchroniser circuit. The resets are 15 clock cycles long to ensure all IP blocks will be properly reset (especially FIFO blocks sometimes require at least 10 cycles). 

<figure markdown>
  ![block-resetsync](./astep-fw-drawings.drawio)
  <figcaption>Reset Synchroniser</figcaption>
</figure>

As presented in the previous figure, there are three signals controlling reset: 

- **pll_locked**: Provided by the MMMC resource, ensures reset is only released after clocks are stable 
- **warm_resn** : External signal, it triggers a reset cycle without stopping clocks.
- **cold_resn**:  External signal, asserts reset in all clock domains, then stops the MMMC resource to stop all clocks. 

The warm and cold resets are slightly redundant, they offer the option of choosing if all clocks should be stopped or not. For example, cold reset can be used upon system boot to ensure the firmware is as inactive and power saving as possible until the main controlling software decides it can be activated. 


## Reset/Startup config

Upon reset, external clocks will also be deactivated - The Timestamp and Sample Clock must be enabled via a register file write. 

The [I/O Control register](./main_rfg.md#io_ctrl)  is controlling the clock outputs.