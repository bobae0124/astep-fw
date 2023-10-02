

# Register File Reference
| Address | Name | Size | Features | Description |
|---------|------|------|-------|-------------|
|0x0 | [hk_firmware_id](#hk_firmware_id) | 32 |  | ID to identify the Firmware|
|0x4 | [hk_firmware_version](#hk_firmware_version) | 32 |  | Date based Build version: YEARMONTHDAYCOUNT|
|0x8 | [hk_xadc_temperature](#hk_xadc_temperature) | 16 |  | |
|0xa | [hk_xadc_vccint](#hk_xadc_vccint) | 16 |  | |
|0xc | [hk_conversion_trigger](#hk_conversion_trigger) | 32 | Counter w/ Interrupt | |
|0x10 | [hk_stat_conversions_counter](#hk_stat_conversions_counter) | 32 | Counter w/o Interrupt | |
|0x14 | [hk_adc_mosi_fifo](#hk_adc_mosi_fifo) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to ADC|
|0x15 | [hk_adc_miso_fifo](#hk_adc_miso_fifo) | 8 | AXIS FIFO Slave (read) | FIFO with read bytes from ADC|
|0x16 | [hk_adc_miso_fifo_read_size](#hk_adc_miso_fifo_read_size) | 32 |  | Number of entries in hk_adc_miso_fifo fifo|
|0x1a | [hk_dac_mosi_fifo](#hk_dac_mosi_fifo) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to DAC|
|0x1b | [spi_layers_ckdivider](#spi_layers_ckdivider) | 8 |  | |
|0x1c | [spi_hk_ckdivider](#spi_hk_ckdivider) | 8 |  | |
|0x1d | [layer_0_cfg_ctrl](#layer_0_cfg_ctrl) | 8 |  | Layer 0 control bits|
|0x1e | [layer_1_cfg_ctrl](#layer_1_cfg_ctrl) | 8 |  | Layer 1 control bits|
|0x1f | [layer_2_cfg_ctrl](#layer_2_cfg_ctrl) | 8 |  | Layer 2 control bits|
|0x20 | [layer_3_cfg_ctrl](#layer_3_cfg_ctrl) | 8 |  | Layer 3 control bits|
|0x21 | [layer_0_status](#layer_0_status) | 8 |  | Layer 0 status bits|
|0x22 | [layer_1_status](#layer_1_status) | 8 |  | Layer 1 status bits|
|0x23 | [layer_2_status](#layer_2_status) | 8 |  | Layer 2 status bits|
|0x24 | [layer_3_status](#layer_3_status) | 8 |  | Layer 3 status bits|
|0x25 | [layer_0_stat_frame_counter](#layer_0_stat_frame_counter) | 32 | Counter w/o Interrupt | Counts the number of data frames|
|0x29 | [layer_1_stat_frame_counter](#layer_1_stat_frame_counter) | 32 | Counter w/o Interrupt | Counts the number of data frames|
|0x2d | [layer_2_stat_frame_counter](#layer_2_stat_frame_counter) | 32 | Counter w/o Interrupt | Counts the number of data frames|
|0x31 | [layer_3_stat_frame_counter](#layer_3_stat_frame_counter) | 32 | Counter w/o Interrupt | Counts the number of data frames|
|0x35 | [layer_0_stat_idle_counter](#layer_0_stat_idle_counter) | 32 | Counter w/o Interrupt | Counts the number of Idle bytes|
|0x39 | [layer_1_stat_idle_counter](#layer_1_stat_idle_counter) | 32 | Counter w/o Interrupt | Counts the number of Idle bytes|
|0x3d | [layer_2_stat_idle_counter](#layer_2_stat_idle_counter) | 32 | Counter w/o Interrupt | Counts the number of Idle bytes|
|0x41 | [layer_3_stat_idle_counter](#layer_3_stat_idle_counter) | 32 | Counter w/o Interrupt | Counts the number of Idle bytes|
|0x45 | [layer_0_mosi](#layer_0_mosi) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to Layer 0 Astropix|
|0x46 | [layer_0_mosi_write_size](#layer_0_mosi_write_size) | 32 |  | Number of entries in layer_0_mosi fifo|
|0x4a | [layer_1_mosi](#layer_1_mosi) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to Layer 1 Astropix|
|0x4b | [layer_1_mosi_write_size](#layer_1_mosi_write_size) | 32 |  | Number of entries in layer_1_mosi fifo|
|0x4f | [layer_2_mosi](#layer_2_mosi) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to Layer 2 Astropix|
|0x50 | [layer_2_mosi_write_size](#layer_2_mosi_write_size) | 32 |  | Number of entries in layer_2_mosi fifo|
|0x54 | [layer_3_mosi](#layer_3_mosi) | 8 | AXIS FIFO Master (write) | FIFO to send bytes to Layer 3 Astropix|
|0x55 | [layer_3_mosi_write_size](#layer_3_mosi_write_size) | 32 |  | Number of entries in layer_3_mosi fifo|
|0x59 | [layers_cfg_frame_tag_counter](#layers_cfg_frame_tag_counter) | 32 | Counter w/o Interrupt | Counter to tag frames upon detection (Counter value added to frame output)|
|0x5d | [layers_cfg_nodata_continue](#layers_cfg_nodata_continue) | 8 |  | Number of IDLE Bytes until stopping readout|
|0x5e | [layers_sr_out](#layers_sr_out) | 8 |  | |
|0x5f | [layers_inj_ctrl](#layers_inj_ctrl) | 8 |  | |
|0x60 | [layers_inj_waddr](#layers_inj_waddr) | 5 |  | |
|0x61 | [layers_inj_wdata](#layers_inj_wdata) | 8 |  | |
|0x62 | [layers_sr_in](#layers_sr_in) | 8 |  | |
|0x63 | [layers_readout](#layers_readout) | 8 | AXIS FIFO Slave (read) | |
|0x64 | [layers_readout_read_size](#layers_readout_read_size) | 32 |  | Number of entries in layers_readout fifo|
|0x68 | [layer_3_gen_ctrl](#layer_3_gen_ctrl) | 8 |  | |
|0x69 | [layer_3_gen_frame_count](#layer_3_gen_frame_count) | 16 |  | |
|0x6b | [io_ctrl](#io_ctrl) | 8 |  | I/O Configurations for clocks or others|
|0x6c | [io_led](#io_led) | 8 |  | |
|0x6d | [gecco_sr_ctrl](#gecco_sr_ctrl) | 8 |  | Shift Register Control for Gecco Cards|
|0x6e | [hk_conversion_trigger_match](#hk_conversion_trigger_match) | 32 |  | |


## <a id='hk_firmware_id'></a>hk_firmware_id


> ID to identify the Firmware




## <a id='hk_firmware_version'></a>hk_firmware_version


> Date based Build version: YEARMONTHDAYCOUNT




## <a id='hk_xadc_temperature'></a>hk_xadc_temperature


> 




## <a id='hk_xadc_vccint'></a>hk_xadc_vccint


> 




## <a id='hk_conversion_trigger'></a>hk_conversion_trigger


> 




## <a id='hk_stat_conversions_counter'></a>hk_stat_conversions_counter


> 




## <a id='hk_adc_mosi_fifo'></a>hk_adc_mosi_fifo


> FIFO to send bytes to ADC




## <a id='hk_adc_miso_fifo'></a>hk_adc_miso_fifo


> FIFO with read bytes from ADC




## <a id='hk_adc_miso_fifo_read_size'></a>hk_adc_miso_fifo_read_size


> Number of entries in hk_adc_miso_fifo fifo




## <a id='hk_dac_mosi_fifo'></a>hk_dac_mosi_fifo


> FIFO to send bytes to DAC




## <a id='spi_layers_ckdivider'></a>spi_layers_ckdivider


> 




## <a id='spi_hk_ckdivider'></a>spi_hk_ckdivider


> 




## <a id='layer_0_cfg_ctrl'></a>layer_0_cfg_ctrl


> Layer 0 control bits


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |disable_autoread|reset|hold|

- hold: Hold Layer
- reset: Active High Layer Reset (Inverted before output to Sensor)
- disable_autoread: 1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger


## <a id='layer_1_cfg_ctrl'></a>layer_1_cfg_ctrl


> Layer 1 control bits


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |disable_autoread|reset|hold|

- hold: Hold Layer
- reset: Active High Layer Reset (Inverted before output to Sensor)
- disable_autoread: 1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger


## <a id='layer_2_cfg_ctrl'></a>layer_2_cfg_ctrl


> Layer 2 control bits


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |disable_autoread|reset|hold|

- hold: Hold Layer
- reset: Active High Layer Reset (Inverted before output to Sensor)
- disable_autoread: 1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger


## <a id='layer_3_cfg_ctrl'></a>layer_3_cfg_ctrl


> Layer 3 control bits


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |disable_autoread|reset|hold|

- hold: Hold Layer
- reset: Active High Layer Reset (Inverted before output to Sensor)
- disable_autoread: 1: Layer doesn't read frames if the interrupt is low, 0: Layer reads frames upon interrupt trigger


## <a id='layer_0_status'></a>layer_0_status


> Layer 0 status bits


|[7:2] |1 |0 |
|--|-- |-- |
|RSVD |frame_decoding|interruptn|

- interruptn: -
- frame_decoding: -


## <a id='layer_1_status'></a>layer_1_status


> Layer 1 status bits


|[7:2] |1 |0 |
|--|-- |-- |
|RSVD |frame_decoding|interruptn|

- interruptn: -
- frame_decoding: -


## <a id='layer_2_status'></a>layer_2_status


> Layer 2 status bits


|[7:2] |1 |0 |
|--|-- |-- |
|RSVD |frame_decoding|interruptn|

- interruptn: -
- frame_decoding: -


## <a id='layer_3_status'></a>layer_3_status


> Layer 3 status bits


|[7:2] |1 |0 |
|--|-- |-- |
|RSVD |frame_decoding|interruptn|

- interruptn: -
- frame_decoding: -


## <a id='layer_0_stat_frame_counter'></a>layer_0_stat_frame_counter


> Counts the number of data frames




## <a id='layer_1_stat_frame_counter'></a>layer_1_stat_frame_counter


> Counts the number of data frames




## <a id='layer_2_stat_frame_counter'></a>layer_2_stat_frame_counter


> Counts the number of data frames




## <a id='layer_3_stat_frame_counter'></a>layer_3_stat_frame_counter


> Counts the number of data frames




## <a id='layer_0_stat_idle_counter'></a>layer_0_stat_idle_counter


> Counts the number of Idle bytes




## <a id='layer_1_stat_idle_counter'></a>layer_1_stat_idle_counter


> Counts the number of Idle bytes




## <a id='layer_2_stat_idle_counter'></a>layer_2_stat_idle_counter


> Counts the number of Idle bytes




## <a id='layer_3_stat_idle_counter'></a>layer_3_stat_idle_counter


> Counts the number of Idle bytes




## <a id='layer_0_mosi'></a>layer_0_mosi


> FIFO to send bytes to Layer 0 Astropix




## <a id='layer_0_mosi_write_size'></a>layer_0_mosi_write_size


> Number of entries in layer_0_mosi fifo




## <a id='layer_1_mosi'></a>layer_1_mosi


> FIFO to send bytes to Layer 1 Astropix




## <a id='layer_1_mosi_write_size'></a>layer_1_mosi_write_size


> Number of entries in layer_1_mosi fifo




## <a id='layer_2_mosi'></a>layer_2_mosi


> FIFO to send bytes to Layer 2 Astropix




## <a id='layer_2_mosi_write_size'></a>layer_2_mosi_write_size


> Number of entries in layer_2_mosi fifo




## <a id='layer_3_mosi'></a>layer_3_mosi


> FIFO to send bytes to Layer 3 Astropix




## <a id='layer_3_mosi_write_size'></a>layer_3_mosi_write_size


> Number of entries in layer_3_mosi fifo




## <a id='layers_cfg_frame_tag_counter'></a>layers_cfg_frame_tag_counter


> Counter to tag frames upon detection (Counter value added to frame output)




## <a id='layers_cfg_nodata_continue'></a>layers_cfg_nodata_continue


> Number of IDLE Bytes until stopping readout




## <a id='layers_sr_out'></a>layers_sr_out


> 


|[7:8] |7 |6 |5 |4 |3 |2 |1 |0 |
|--|-- |-- |-- |-- |-- |-- |-- |-- |
|RSVD |ld4|ld3|ld2|ld1|ld0|sin|ck2|ck1|

- ck1: -
- ck2: -
- sin: -
- ld0: -
- ld1: -
- ld2: -
- ld3: -
- ld4: -


## <a id='layers_inj_ctrl'></a>layers_inj_ctrl


> 


|[7:6] |5 |4 |3 |2 |1 |0 |
|--|-- |-- |-- |-- |-- |-- |
|RSVD |running|done|trigger|synced|suspend|resn|

- resn: -
- suspend: -
- synced: -
- trigger: -
- done: -
- running: -


## <a id='layers_inj_waddr'></a>layers_inj_waddr


> 




## <a id='layers_inj_wdata'></a>layers_inj_wdata


> 




## <a id='layers_sr_in'></a>layers_sr_in


> 


|[7:6] |5 |4 |3 |2 |1 |0 |
|--|-- |-- |-- |-- |-- |-- |
|RSVD |sout4|sout3|sout2|sout1|sout0|rb|

- rb: -
- sout0: -
- sout1: -
- sout2: -
- sout3: -
- sout4: -


## <a id='layers_readout'></a>layers_readout


> 




## <a id='layers_readout_read_size'></a>layers_readout_read_size


> Number of entries in layers_readout fifo




## <a id='layer_3_gen_ctrl'></a>layer_3_gen_ctrl


> 


|[7:1] |0 |
|--|-- |
|RSVD |frame_enable|

- frame_enable: -


## <a id='layer_3_gen_frame_count'></a>layer_3_gen_frame_count


> 




## <a id='io_ctrl'></a>io_ctrl


> I/O Configurations for clocks or others


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |gecco_sample_clock_se|timestamp_clock_enable|sample_clock_enable|

- sample_clock_enable: -
- timestamp_clock_enable: -
- gecco_sample_clock_se: -


## <a id='io_led'></a>io_led


> 




## <a id='gecco_sr_ctrl'></a>gecco_sr_ctrl


> Shift Register Control for Gecco Cards


|[7:3] |2 |1 |0 |
|--|-- |-- |-- |
|RSVD |ld|sin|ck|

- ck: -
- sin: -
- ld: -


## <a id='hk_conversion_trigger_match'></a>hk_conversion_trigger_match


> 


