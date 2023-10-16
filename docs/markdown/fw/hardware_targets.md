# Hardware Targets 

The ASTEP Firmware is designed to target two hardware platforms for the moment: 

- GECCO , which is the main testing/characterization environment provided by KIT and based on Digilent's Nexys Video board 
- The Flight Configuration based on a Digilent CMOD module

Most of the Chip testing is performed using the GECCO hardware, while the Flight Configuration is build to meet the final setup requirements.

Both hardware platforms feature one or more adapter board that can provide following configurations: 

- GECCO:
    - Single Chip Carrier Board for Astropix v2/v3/v4, Astropix v3 Quad Chip 
    - Telescope adapter to connect up to 4 Single Chip Carrier Board in DaisyChain configuration for Test Beams
    - An ASTEP Layer adapter to connect a flight QuadChip carrier to the Gecco board PCI connector
- CMOD Flight Configuration: An FPGA Board provides connections for all 3 QuadChip Layers, power inputs and the Flight Computer

<figure markdown>
  ![block-hw-targets](./astep-fw-drawings.drawio)
  <figcaption>Simplified overview of various hardware configurations</figcaption>
</figure>

!!! note 
    This documentation doesn't  (yet?) provide the detailed schematic for the various boards and adapters

## Build Configuration

The various hardware targets are supported by a single FPGA Top level file located under **fw/astep3l-24/target-multiboard/astep24_3l_multitarget_top.v**, and the I/O Configuration is selected using a set of defines. 

The following sections describe the available defines and the supported configurations

### Defines summary 

| Define | Board   |  Description
| --------- | --------- | --------- |
| CONFIG_SE | Gecco | Shift Register SIN,CK1,CK2,LD0 are Single Ended. |
| CONFIG_SE | CMOD  | Must be used |
| SINGLE_LAYER | Gecco | Only one layer interface is routed to the carrier boards. Must be used.  |
| SINGLE_LAYER | CMOD | Do not use with CMOD, only Multi Layer configuration is supported |
| SCLOCK_SE_DIFF | Gecco + v2/v3 Carrier | Carrier Single Ended sample clock is routed differentially to lvds receiver on board, do not set if no lvds receiver is soldered on carrier  |
| SCLOCK_SE_DIFF | CMOD | Not relevant |

### Supported Configurations 

This table summarizes the combination of defines that make sense

|  Defines | Board          |  SR Config (IN1-4) | V2/V3 Carrier Sample Clock SE |
| --------- | --------- | ---------        | --------- |
| SINGLE_LAYER, CONFIG_SE, SCLOCK_SE_DIFF   | Gecco | Single Ended | LVDS  |
| SINGLE_LAYER, CONFIG_SE                   | Gecco | Single Ended | Single Ended  |
| SINGLE_LAYER, SCLOCK_SE_DIFF              | Gecco | LVDS         | LVDS  |
| SINGLE_LAYER                              | Gecco | LVDS         | Single Ended  |
| CONFIG_SE                                 | CMOD  | Single Ended         | N/A  |


## Gecco: Shift Register Single Ended / Differential