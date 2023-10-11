# Build Configurations 


## Defines summary 

| Define | Board   |  Description
| --------- | --------- | --------- |
| CONFIG_SE | Gecco | Shift Register SIN,CK1,CK2,LD0 are Single Ended. |
| CONFIG_SE | CMOD  | Must be used |
| SINGLE_LAYER | Gecco | Only one layer interface is routed to the carrier boards. Must be used.  |
| SINGLE_LAYER | CMOD | Do not use with CMOD, only Multi Layer configuration is supported |
| SCLOCK_SE_DIFF | Gecco + v2/v3 Carrier | Carrier Single Ended sample clock is routed differentially to lvds receiver on board, do not set if no lvds receiver is soldered on carrier  |
| SCLOCK_SE_DIFF | CMOD | Not relevant |

## Supported Configurations 

This table summarizes the combination of defines that make sense

|  Defines | Board          |  SR Config (IN1-4) | V2/V3 Carrier Sample Clock SE |
| --------- | --------- | ---------        | --------- |
| SINGLE_LAYER, CONFIG_SE, SCLOCK_SE_DIFF   | Gecco | Single Ended | LVDS  |
| SINGLE_LAYER, CONFIG_SE                   | Gecco | Single Ended | Single Ended  |
| SINGLE_LAYER, SCLOCK_SE_DIFF              | Gecco | LVDS         | LVDS  |
| SINGLE_LAYER                              | Gecco | LVDS         | Single Ended  |
| CONFIG_SE                                 | CMOD  | Single Ended         | N/A  |


## Gecco: Shift Register Single Ended / Differential