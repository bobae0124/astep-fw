# Layer Interface

## Architecture and Clocking

The following figure presents an overview of the Layer interfaces blocks: 

<figure markdown>
  ![block-layer-arch](./astep-fw-drawings.drawio)
  <figcaption>Block overview of Layer Interface</figcaption>
</figure>

The main identifial functionalities are: 

- Shift Register Control: This Register File register controls the Shift Register Outputs to configure the Sensors
- QSPI I/O: This SPI Master module drives bytes to the Sensor from the MOSI Fifo, and writes read bytes to the MISO FIFO. 
- Layer Frame Driver: This Module processes the data from sensors by discarding IDLE bytes and encapsulating data frames into layer frames, which are then written to the common readout. 

The modules are all featuring AXI-Stream data interfaces, which are connected to the data FIFOs and to the layers readout switch, which grants transfer times to all layer interfaces sources in a round-robin fashion. 

The AXI-Stream Data FIFO are dual clock FIFOS, through which the clock domain crossing from the fast core clock to the divided SPI Lock is operated

The SPI Clock divider is provided by the register file through the [spi_layers_ckdivider](../main_rfg#spi_layers_ckdivider) register. 




## Shift Register Configuration 

Each Layer can be configured using a Shift Register Interface mapped to discrete I/Os:

<script type="WaveDrom">
{% include "../wavedrom/wd_layer_config_sr.json" %}
</script>

Each bit is set on the sin output, followed by two distinct clock cycles on ck1/ck2, then after all bits have been shifted, the ld0/ld1/ld3 is cycled. 

There are 3 Load signals, one for each Layer. It means the layers cannot be independently configured in parallel, but if the configuration is the same for all layers, the user  can just shift all the bits then toggle the loads.

The Shift Register I/O are set through the register file, using the [Shift Register Output Register](../main_rfg#layers_sr_out)

## QSPI I/O 

The QSPI Module is an SPI master which provides following functionalities: 

- Outputs SPI Clock and Chip Select whenever a byte is available at the slave axi-stream interface is available (Clock output is the main input clock gated )
- Supports Sensor's two bit MOSI lines: Two bytes are read from the sensor while one byte is written to the interface
- Data is written to the sensor on Positive Edge, and Read on negative edge 
- Module is instantiated in LSB first mode to match Sensor's LSB first output 
- A force enable bit can be used to force writting NULL bytes to the sensor and read bytes from the sensor (used to trigger reading data when the sensor signals interruptn)
- Read Bytes are written to an AXIS Master interface
- If the Master output interface is stalling (full), the module will automatically stop the SPI interface to avoid loosing data to a full interface.


This module's data path is connected to AXIS Data Fifo providing the clock domain crossing between the fast core clock used to process data, and the configurable SPI I/O clock, which determines the speed of the SPI interface. 

## Layer Driver 

The Layer driver receives bytes from the QSPI module through the axis Data FIFO, and processes them: 

- IDLE bytes with value 0x3D which are returned by the sensor whenever there is no data are discarded. 
- Upon detection of a Sensor Frame Header, the module will forward the sensor data in a layer frame format described below to its master interface. 
- IDLE bytes and Frame detection trigger the increment of a statistics counter in the register file, which users can use to get information about the behavior of the module. 

Additionally, if the module's **autoread** feature is enabled in the register file (For example for [Layer 0](main_rfg.md#layer_0_cfg_ctrl)), and the Layer interruptn is asserted by the sensor, it will automatically force the QSPI module into writting NULL bytes so that bytes are read from the sensor. 

The Automatic Reading disables the SPI interface after the interrupt has been deasserted, and a configurable amount of IDLE bytes have been received. This value is configured through the [layers_cfg_nodata_continue][main_rfg.md#layers_cfg_nodata_continue] register. 

Setting the automatic stop delay properly is important, because the Sensors Chain might de-assert the interrupt signal, which a data frame is still being propagated through the daisy chain. A good value could be 4 bytes stop delay per Chip in the Daisy Chain (16 for a Quad-Chip)

### Packet Framing

#### Frame Format 

The Layer interface encapsulates data from the sensor in a layer frame format, made of: 

- **Byte 0**: The Length of trailing data (up to 255 bytes, which could allow merging multiple sensor data frames)
- **Byte 1**: The ID of the layer - This value is fixed in fpga code via a parameter, but could be made software configurable
- **Bytes 2 : n - 4**: The Sensor data, n represents the number of bytes from the sensor. 5 Bytes for V2/V3 or 8 Bytes for V4 
- **Bytes n-4 : end**: An FPGA Timestamp counter value captured when the first sensor data byte has been detected

<figure markdown>
  ![block-layer-packet](./astep-fw-drawings.drawio)
  <figcaption>Sensor and Layer Packet formats</figcaption>
</figure>

At the moment each Sensor Data Frame is encapsulated in a Layer Frame, which represents following overhead:

- **Astropix v2/v3**: 6 Bytes for the Layer Frame, 5 bytes for the Sensor Payload, 120% overhead 
- **Astropix v4**: 6 Bytes for the Layer Frame, 8 bytes for the Sensor Payload, 37% overhead

These values are not very optimal, but considering the expected rates not critical.

Some improvement options that we can study: 

- Astropix v2/v3 always send 2 Payload frames, the layer interface could frame at least two sensor frames, with a watchdog counter to prevent deadlocks. That would mean 6 bytes of framing for 10 bytes of payload, 60% overhead
- Astropix v4 sends frames per pixel, so that a hit normally only produces one data frame. In that case we could add a packet buffering stage that will buffer up sensor data frames with a time window and/or until a maximal length has been reached. This method increases latency but could potentially reduce overhead if needed.




#### Decoding 

A typical Layer frame read from the buffers will look like following: 

    0A 01 XXXXXXXXXX TTTT

- **0A**   : 10 Bytes following 
- **01**   : Layer ID 1 
- **XXXX** : The Sensor's 5 Bytes (v2/v3)
- **TTTT** : The 32 bit FPGA timestamp 

For a V4 chip, this frame would change with a first byte set to **0D** (13 bytes)