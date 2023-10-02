# AsyncIO

The Register File Python API is compatible with the Python asyncio library, allowing users to directly leverage asyncio to develop the readout software. 

One of the reasons for this choice is that the CoCoTb simulation environment we are using relies on asyncio, which allows us to write Verification Testbenches that are using the software library directly. 

It is not mandatory to use asyncio to its full capability to work with the readout, however any call to the hardware will have to run in an asyncio context. 

## Single Hardware Calls with AsyncIO 

When writting simple test scripts, each hardware call can be called in asyncio in a block way using the `asyncio.run()` method.

This method is convenient for quick tests, but it doesn't leverage asyncio, so it is not recommended to write scripts that use this method for actual data readout.

For example: 

```python 
import asyncio 

# Get a Board Driver
boardDriver = ...

## Reading the firmware ID is asyncio asynchronous, wrap in asyncio.run to wait until the result is delivered
firmwareID = asyncio.run(boardDriver.readFirmwareID())

```

## Using an AsyncIO main function 

If a script performs more I/O operations for a measurement or a test, it is then recommended to write code in an asyncio context, meaning in an async definition.

To do this: 

- Write an async function which will be the new "main" 
- Run the new async main using `asyncio.run()`
- `asyncio.run()` will block until your main function is done

```python 
import asyncio 

# Get a Board Driver
boardDriver = ...

# This is our async io main 
async def main():

    # Reading the firmware ID is asyncio asynchronous
    # Notice the await keywoard to wait for the result, this is mandatory!
    # Asyncio can let other task run while this line is waiting for the result
    firmwareID = await (boardDriver.readFirmwareID())

    print(f"Firmware ID: {firmwareID}")

asyncio.run(main())

```

## Example: Read FPGA Temperature for a couple seconds 

This code example uses a Gecco Nexys Video with UART hardware

```python 
import asyncio 
import drivers.boards

boardDriver = drivers.boards.getGeccoUARTDriver()

# This is our async io main 
async def main():

    # Open the driver
    boardDriver.open()

    # Start FPGA Temperature reading task
    asyncio.get_running_loop().create_task(readFPGATemperature())

    # Wait for 10 seconds and stop
    await asyncio.sleep(5)

    print("Stopping")

    ## When this method exists, the asyncio.run() will also exit and then the script will reach end

async def readFPGATemperature():
    while True: 
        await asyncio.sleep(.2)
        temperature = await boardDriver.houseKeeping.readFPGATemperature()
        print(f"FPGA Temperature: {temperature}°C")
    

asyncio.run(main())

```
