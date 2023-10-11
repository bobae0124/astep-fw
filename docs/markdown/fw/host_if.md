# RegisterFile / Host Interfaces 

The firmware supports three Host interfaces to read and write data to the registerfile: 

- FTDI UART -> CMOD and Gecco 
- FTDI FIFO -> Gecco fast USB
- SPI Slave -> CMOD Slave from CPU Board

<figure markdown>
  ![block-host-rf](./astep-fw-drawings.drawio)
  <figcaption>Block Overview of Host Interfaces</figcaption>
</figure>

All three interfaces are configured in the main firmware design, only at the FPGA top level the FTDI FIFO interface is not connected for CMOD targets. 

The UART interface supports 921600bps speed (1 Start/Stop bit, no parity), it is though not meant to be used for real data taking. 

**Recommended Configurations**

The recommended host configuration depending on the use case is following: 

- Gecco Nexys Video: Use FTDI FIFO for fast data transfer. If the user requires an ILA debugging core, then use the UART interface, because it is not possible to connect to the FTDI in FIFO mode while the Vivado Hardware Manager is controlling the ILA core. 
- CMOD: Use the UART for simple test and debugging directly from a Computer, the SPI Slave interface is connected to the Flight Computer. 

**Host Automatic Selection**

The Host interface modules can pass an ID to the protocol module, which is used to route back read requests to the originating interface. 
This way, the user can freely use any host interface without special configuration.


## Register File Module

The Register File registers are specified using a TCL script located at fw/astep24-3l/common/astep24_3layers.rfg.tcl, from which following outputs are generated: 

- The verilog implementation module 
- A Python module used on the software side providing explicitely named methods for each register, as well as the list of registers addresses 
- A Markdown file providing a documentation, available on this website on [this page](main_rfg.md)

<figure markdown>
  ![block-rfg-outputs](./astep-fw-drawings.drawio)
</figure>


## Register File Protocol 

[TBD]

