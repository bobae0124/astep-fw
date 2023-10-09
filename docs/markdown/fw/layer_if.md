# Layer Interface

## Architecture

TBD

## Packet Framing

### Frame Format 

The Layer interface encapsulates data from the sensor in a layer frame format, made of: 

- **Byte 0**: The Length of trailing data (up to 255 bytes, which could allow merging multiple sensor data frames)
- **Byte 1**: The ID of the layer - This value is fixed in fpga code via a parameter, but could be made software configurable
- **Bytes 2 : n - 4**: The Sensor data, n represents the number of bytes from the sensor. 5 Bytes for V2/V3 or 8 Bytes for V4 
- **Bytes n-4 : end**: An FPGA Timestamp counter value captured when the first sensor data byte has been detected

![Packet Framing](./astep-fw-drawings.drawio#6)

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