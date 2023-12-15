"""
Central module of astropix for use with A-STEP FW. Built from astropix.py wrapper. This incorporates all of the various modules from the original 'module' directory backend (now 'core')
The class methods of all the other modules/cores are inherited here. 

Author:  Amanda Steinhebel, amanda.l.steinhebel@nasa.gov
"""
# Needed modules. They all import their own suppourt libraries, 
# and eventually there will be a list of which ones are needed to run
from typing import Dict
from bitstring import BitArray
from tqdm import tqdm
import pandas as pd
import regex as re
import time
import yaml
import os
import binascii

from core.decode import Decode
import drivers.boards

from drivers.astropix.asic import Asic

# Logging stuff
import logging
logger = logging.getLogger(__name__)

class astepRun:

    # Init just opens the chip and gets the handle. After this runs
    # asic_config also needs to be called to set it up. Seperating these 
    # allows for simpler specifying of values. 
    def __init__(self, chipversion=2, clock_period_ns = 5, inject:int = None, offline:bool=False):
        """
        Initalizes astropix object. 
        No required arguments
        Optional:
        clock_period_ns:int - period of main clock in ns
        inject:bool - if set to True will enable injection for the whole array.
        offline:bool - if True, do not try to interface with chip
        """

        # _asic_start tracks if the inital configuration has been run on the ASIC yet.
        # By not handeling this in the init it simplifies the function, making it simpler
        # to put in custom configurations and allows for less writing to the chip,
        # only doing it once at init or when settings need to be changed as opposed to 
        # each time a parameter is changed.

        if offline:
            logger.info("Creating object for offline analysis")
        else:
            self._asic_start = False

            # Start putting the variables in for use down the line
            if inject is None:
                inject = (None, None)
            self.injection_col = inject[1]
            self.injection_row = inject[0]

        self.sampleclock_period_ns = clock_period_ns
        self.chipversion = chipversion
        # Creates objects used later on
        self.decode = Decode(clock_period_ns)


    async def open_fpga(self):
        """Create the Board Driver, open a connection to the hardware and performs a read test"""
        self.boardDriver = drivers.boards.getGeccoFTDIDriver()
        self.boardDriver.open()
        logger.info("Opened FPGA, testing...")
        await self._test_io()
        logger.info("FPGA test successful.")
        
        # This method asserts the reset signal for .5s by default then deasserts it
        await self.boardDriver.resetLayer(layer = 0)

##################### YAML INTERACTIONS #########################
#reading done in core/asic.py
#writing done here
    """
    def write_conf_to_yaml(self, filename:str = None):
        #Write ASIC config to yaml
        #:param chipversion: chip version
        #:param filename: Name of yml file in config folder

        dicttofile ={self.asic.chip:
            {
                "telescope": {"nchips": self.asic.num_chips},
                "geometry": {"cols": self.asic.num_cols, "rows": self.asic.num_rows}
            }
        }

        if self.asic.num_chips > 1:
            for chip in range(self.asic.num_chips):
                dicttofile[self.asic.chip][f'config_{chip}'] = self.asic.asic_config[f'config_{chip}']
        else:
            dicttofile[self.asic.chip]['config'] = self.asic.asic_config

        with open(f"{filename}", "w", encoding="utf-8") as stream:
            try:
                yaml.dump(dicttofile, stream, default_flow_style=False, sort_keys=False)

            except yaml.YAMLError as exc:
                logger.error(exc)
        
    """
##################### FW INTERFACING #########################
    # Method to enable timestamp and sample clocks, and configure SPI clock for the layers (if necessary)
    async def setup_clocks(self) -> None:
        # Enable TS and Sample clock
        await self.boardDriver.enableSensorClocks(flush = True)
        logger.info("Timestamp and SPI clocks enabled")

    async def enable_spi(self, spiFreq:int = 1000000) -> None :
        """
        Sets the Clocks divider for the SPI clock.
        Sets the clock to 1Mhz by default
        """
        # Set the SPI Clock to 1Mhz (the value must be passed in Hz)
        await self.boardDriver.configureLayerSPIFrequency(targetFrequencyHz = spiFreq , flush = True)
        logger.info(f"SPI clock set to {spiFreq}Hz ({spiFreq/1000000:.2f})MHz")

##################### ASIC METHODS FOR USERS #########################

    # Method to initalize the asic. This is taking the place of asic.py. 
    # All of the interfacing is handeled through asic_update
    async def asic_init(self, yaml:str = None, dac_setup: dict = None, bias_setup:dict = None, analog_col:int = None, rows:int = 1, chipsPerRow:int = 1):
        """
        self.asic_init() - initalize the asic configuration. Must be called first
        Positional arguments: None
        Optional:
        dac_setup: dict - dictionary of values passed to the configuration. Only needs values diffent from defaults
        bias_setup: dict - dict of values for the bias configuration Only needs key/vals for changes from default
        analog_col: int - Sets a column to readout analog data from. 
        """

        # Now that the asic has been initalized we can go and make this true
        self._asic_start = True

        # Define YAML path variables
        pathdelim=os.path.sep #determine if Mac or Windows separators in path name
        ymlpath=os.getcwd()+pathdelim+"scripts"+pathdelim+"config"+pathdelim+yaml+".yml"

        #Get config values from YAML and set chip properties
        try:
            ## Init asic
            self.boardDriver.setupASICS(version = self.chipversion, rows = rows, chipsPerRow = chipsPerRow , configFile = ymlpath )
            ## Configure all chips the SAME WAY - will want to update
            for r in range(rows):
                self.asic = self.boardDriver.getAsic(row = r-1)
        except Exception:
            logger.error('Must pass a configuration file in the form of *.yml')
            raise Error('Must pass a configuration file in the form of *.yml')
        #Config stored in dictionary self.asic_config . This is used for configuration in asic_update. 
        #If any changes are made, make change to self.asic_config so that it is reflected on-chip when 
        # asic_update is called

        #Override yaml if arguments were given in run script
        await self.update_asic_config(bias_setup, dac_setup)

        # Set analog output
        if (analog_col is not None) and (analog_col <= self.asic._num_cols):
            logger.info(f"enabling analog output in column {analog_col}")
            print("enabling analog out")
            self.asic.enable_ampout_col(analog_col, inplace=False)

        # Turns on injection if so desired 
        if self.injection_col is not None:
            self.asic.enable_inj_col(self.injection_col, inplace=False)
            self.asic.enable_inj_row(self.injection_row, inplace=False)

        # Load config it to the chip
        logger.info("LOADING TO ASIC...")
        await self.asic_update()
        logger.info("ASIC SUCCESSFULLY CONFIGURED")

    #Interface with asic.py 
    async def enable_pixel(self, col: int, row: int):
       self.asic.enable_pixel(col, row)
       await self.asic_update()

    """
    #Turn on injection of different pixel than the one used in _init_
    def enable_injection(self, col:int, row:int, inplace:bool=True):
        self.asic.enable_inj_col(col, inplace)
        self.asic.enable_inj_row(row, inplace)
    """

    # The method to write data to the asic. Called whenever somthing is changed
    # or after a group of changes are done. Taken straight from asic.py.
    async def asic_update(self):
        """This method resets the chip then writes the configuration"""
        await self.boardDriver.resetLayer(layer = 0 )
        await self.boardDriver.getAsic(row = 0).writeConfigSR()


    # Methods to update the internal variables. Please don't do it manually
    # This updates the dac config
    async def update_asic_config(self, bias_cfg:dict = None, idac_cfg:dict = None, vdac_cfg:dict = None, analog_col:int=None):
        #Updates and writes confgbits to asic

        #bias_cfg:dict - Updates the bias settings. Only needs key/value pairs which need updated
        #idac_cfg:dict - Updates iDAC settings. Only needs key/value pairs which need updated
        #vdac_cfg:dict - Updates vDAC settings. Only needs key/value pairs which need updated
        
        if self._asic_start:
            if bias_cfg is not None:
                for key in bias_cfg:
                    self.asic.asic_config['biasconfig'][key][1]=bias_cfg[key]
            if idac_cfg is not None:
                for key in idac_cfg:
                    self.asic.asic_config['idacs'][key][1]=idac_cfg[key]
            if vdac_cfg is not None:
                for key in vdac_cfg:
                    self.asic.asic_config['vdacs'][key][1]=vdac_cfg[key]
            else: 
                logger.info("update_asic_config() got no arguments, nothing to do.")
                return None
            await self.asic_update()
        else: raise RuntimeError("Asic has not been initalized")

    def close_connection(self) -> None :
        """
        Closes the FPGA board driver connection
        This is optional, connections are closed automatically upon script ending
        """
        self.boardDriver.close()


################## Voltageboard Methods ############################

# Here we intitalize the 8 DAC voltageboard in slot 4. 
    async def init_voltages(self, slot: int = 4, vcal:float = .989, vsupply: float = 2.7, vthreshold:float = None, dacvals: tuple[int, list[float]] = None):
        """
        Configures the voltage board
        No required parameters. No return.

        slot:int = 4 - Position of voltage board
        vcal:float = 0.908 - Calibration of the voltage rails
        vsupply = 2.7 - Supply Voltage
        vthreshold:float = None - ToT threshold value. Takes precedence over dacvals if set. UNITS: mV
        dacvals:tuple[int, list[float] - vboard dac settings. Must be fully specified if set. 
        """
        # The default values to pass to the voltage dac. Last value in list is threshold voltage, default 100mV or 1.1
        # Included in YAML for v3 (not v2)

        # From nicholas's beam_test.py:
        # 1=thpmos (comparator threshold voltage), 3 = Vcasc2, 4=BL, 7=Vminuspix, 8=Thpix 
        if self.chipversion == 2:
            default_vdac = (8, [0, 0, 1.1, 1, 0, 0, 1, 1.100])
        else: #increase thpmos for v3 pmos pixels
            default_vdac = (8, [1.1, 0, 1.1, 1, 0, 0, 1, 1.100])

        # used to ensure this has been called in the right order:
        self._voltages_exist = True

        # Set dacvals
        if dacvals is None:
            dacvals = default_vdac
            # dacvals takes precidence over vthreshold
            if vthreshold is not None:
                # Turns from mV to V with the 1V offset normally present
                vthreshold = (vthreshold/1000) + default_vdac[1][3]
                if vthreshold > 1.5 or vthreshold < 0:
                    logger.warning("Threshold voltage out of range of sensor!")
                    if vthreshold <= 0: 
                        vthreshold = 1.100
                        logger.error("Threshold value too low, setting to default 100mV")
                dacvals[1][-1] = vthreshold

        # Voltage Board is provided by the board Driver
        # Old:  Voltageboard(self.handle, slot, dacvals)
        self.vboard = self.boardDriver.geccoGetVoltageBoard()
        self.vboard.dacvalues = dacvals
        # Set calibrated values
        self.vboard.vcal = vcal
        self.vboard.vsupply = vsupply

        # Send config to the chip
        await self.vboard.update()

    # Setup Injections
    async def init_injection(self, slot: int = 3, inj_voltage:float = None, inj_period:int = 100, clkdiv:int = 300, initdelay: int = 100, cycle: float = 0, pulseperset: int = 1, dac_config:tuple[int, list[float]] = None):
        """
        Configure injections
        No required arguments. No returns.
        Optional Arguments:
        slot: int - Location of the injection module
        inj_voltage: float - Injection Voltage. Range from 0 to 1.8. If dac_config is set inj_voltage will be overwritten
        inj_period: int
        clkdiv: int
        initdelay: int
        cycle: float
        pulseperset: int
        dac_config:tuple[int, list[float]]: injdac settings. Must be fully specified if set. 
        """

        # Default configuration for the dac
        # 0.3 is (default) injection voltage
        # 3 is slot number for inj board
        default_injdac = (8,[0.3, 0.0])

        
        # Some fault tolerance
        try:
            self._voltages_exist
        except Exception:
            raise RuntimeError("init_voltages must be called before init_injection!")
        # Sets the dac_setup if it isn't specified
        if dac_config is None:
            dac_settings = default_injdac
        else:
            dac_settings = dac_config

        # The dac_config takes presedence over a specified threshold.
        if (inj_voltage is not None) and (dac_config is None):
            # elifs check to ensure we are not injecting a negative value because we don't have that ability
            if inj_voltage < 0:
                raise ValueError("Cannot inject a negative voltage!")
            elif inj_voltage > 1800:
                logger.warning("Cannot inject more than 1800mV, will use defaults")
                inj_voltage = 300 #Sets to 300 mV

            inj_voltage = inj_voltage / 1000
            dac_settings[1][0] = inj_voltage

        # Injection Board is provided by the board Driver
        # The Injection Board provides an underlying Voltage Board
        self.injector = self.boardDriver.geccoGetInjectionBoard()
        self.inj_volts = self.injector.voltageBoard

        # Create the object!
        #self.inj_volts = Voltageboard(self.handle, slot, dac_settings)
        # set the parameters
        self.inj_volts.dacvalues = dac_settings
        self.inj_volts.vcal = self.vboard.vcal
        self.inj_volts.vsupply = self.vboard.vsupply
        await self.inj_volts.update()
        
        # Now to configure the actual injection thing
        #self.injector = Injectionboard(self.handle, onchip=onchip)
        # Now to configure it. above are the values from the original scripting.
        self.injector.period = inj_period
        self.injector.clkdiv = clkdiv
        self.injector.initdelay = initdelay
        self.injector.cycle = cycle
        self.injector.pulsesperset = pulseperset       

    # These start and stop injecting voltage. Fairly simple.
    async def start_injection(self):
        """
        Starts Injection.
        Takes no arguments and no return
        """
        await self.injector.start()
        logger.info("Began injection")

    async def stop_injection(self):
        """
        Stops Injection.
        Takes no arguments and no return
        """
        await self.injector.stop()
        logger.info("Stopped injection")


########################### Input and Output #############################
    # This method checks the chip to see if a hit has been logged

    """
    def hits_present(self):
        #Looks at interrupt, Returns bool, True if present
        if (int.from_bytes(self.nexys.read_register(70),"big") == 0):
            return True
        else:
            return False
    """
    def get_log_header(self):
        #Returns header for use in a log file with all settings.
        #Get config dictionaries from yaml

        vdac_str=""
        digitalconfig = {}
        for key in self.asic.asic_config['digitalconfig']:
                digitalconfig[key]=self.asic.asic_config['digitalconfig'][key][1]
        biasconfig = {}
        for key in self.asic.asic_config['biasconfig']:
                biasconfig[key]=self.asic.asic_config['biasconfig'][key][1]
        idacconfig = {}
        for key in self.asic.asic_config['idacs']:
                idacconfig[key]=self.asic.asic_config['idacs'][key][1]
        if self.chipversion>2:
            vdacconfig = {}
            for key in self.asic.asic_config['vdacs']:
                    vdacconfig[key]=self.asic.asic_config['vdacs'][key][1]
            vdac_str=f"vDAC: {vdacconfig}\n"
        arrayconfig = {}
        for key in self.asic.asic_config['recconfig']:
                arrayconfig[key]=self.asic.asic_config['recconfig'][key][1]

        # This is not a nice line, but its the most efficent way to get all the values in the same place.
        return f"Digital: {digitalconfig}\n" +f"Biasblock: {biasconfig}\n" + f"iDAC: {idacconfig}\n"+ f"Receiver: {arrayconfig}\n " + vdac_str


############################ Decoder ##############################
    async def setup_readout(self, layer:int):
        #Take take layer out of reset and hold, enable "FW-driven readout"
        await self.boardDriver.setLayerReset(layer = layer , reset = False , disable_autoread  = 0, flush = True )
        await self.boardDriver.holdLayer(layer = layer , hold = False , flush = True ) 
   
    async def get_readout(self, counts:int = 4096):
        bufferSize = await(self.boardDriver.readoutGetBufferSize())
        readout = await(self.boardDriver.readoutReadBytes(counts))
        return bufferSize, readout
   
    async def print_status_reg(self):
        status = await(self.boardDriver.rfg.read_layer_0_status())
        ctrl = await(self.boardDriver.rfg.read_layer_0_cfg_ctrl())
        print(f"Layer Status:  {hex(status)},interruptn={status & 0x1},decoding={(status >> 1) & 0x1},reset={(ctrl>>1) & 0x1},hold={(ctrl) & 0x1},buffer={await (self.boardDriver.readoutGetBufferSize())}")
        #logger.info(f"Layer Status:  {hex(status)},interruptn={status & 0x1},decoding={(status >> 1) & 0x1},reset={(ctrl>>1) & 0x1},hold={(ctrl) & 0x1},buffer={await (self.boardDriver.readoutGetBufferSize())}")

    """
    def get_FW_readout(self):
        readout = self.nexys.read_spi_fifo()
        return readout

    def get_SW_readout(self, bufferlength:int = 20):
        #Reads hit buffer.
        #bufferlength:int - length of buffer to write. Multiplied by 8 to give number of bytes
        #Returns bytearray
        self.nexys.write_spi_bytes(bufferlength)
        readout = self.nexys.read_spi_fifo()
        return readout

    """
    def decode_readout(self, readout:bytearray, i:int, printer: bool = True, nmb_bytes:int = 11):
        #Decodes readout

        #Required argument:
        #readout: Bytearray - readout from sensor, not the printed Hex values
        #i: int - Readout number

        #Optional:
        #printer: bool - Print decoded output to terminal

        #Returns dataframe

        #!!! Warning, richard 11/10/23 -> The Astep FW returns all bits properly ordered, don't reverse bits when using this firmware!

        #list_hits = self.decode.hits_from_readoutstream(readout)
        list_hits = [readout[i:i+nmb_bytes] for i in range(0,len(readout),nmb_bytes)]
        hit_list = []
        for hit in list_hits:
            # Generates the values from the bitstream
            if sum(hit) == 1020: #HARDCODED MAX BUFFER - WILL NEED TO REVISIT
                continue 
            try:
                id          = int(hit[2]) >> 3
                payload     = int(hit[2]) & 0b111
                location    = int(hit[3])  & 0b111111
                col         = 1 if (int(hit[3]) >> 7 ) & 1 else 0
                timestamp   = int(hit[4])
                tot_msb     = int(hit[5]) & 0b1111
                tot_lsb     = int(hit[6])   
                tot_total   = (tot_msb << 8) + tot_lsb
            except IndexError: #hit cut off at end of stream
                id, payload, location, col = -1, -1, -1, -1
                timestamp, tot_msb, tot_lsb, tot_total = -1, -1, -1, -1

            #wrong_id        = 0 if (id) == 0 else '\x1b[0;31;40m{}\x1b[0m'.format(id)
            #wrong_payload   = 4 if (payload) == 4 else'\x1b[0;31;40m{}\x1b[0m'.format(payload)   
            
            # will give terminal output if desiered
            if printer:
                print(
                f"{i} Header: {int(hit[0])}\t {int(hit[1])}\n"
                #f"ChipId: {wrong_id}\tPayload: {wrong_payload}\t"
                f"ChipId: {id}\tPayload: {payload}\t"
                f"Location: {location}\tRow/Col: {'Col' if col else 'Row'}\t"
                f"TS: {timestamp}\t"
                f"ToT: MSB: {tot_msb}\tLSB: {tot_lsb} Total: {tot_total} ({(tot_total * self.sampleclock_period_ns)/1000.0} us)\n"
                f"Trailing: {int(hit[7])}\t{int(hit[8])}\t{int(hit[9])}\t{int(hit[10])}"           
                )
            # hits are sored in dictionary form
            # Look into dataframe
            hits = {
                'readout': i,
                'Chip ID': id,
                'payload': payload,
                'location': location,
                'isCol': (True if col else False),
                'timestamp': timestamp,
                'tot_msb': tot_msb,
                'tot_lsb': tot_lsb,
                'tot_total': tot_total,
                'tot_us': ((tot_total * self.sampleclock_period_ns)/1000.0),
                'hittime': time.time()
                }
            hit_list.append(hits)

        # Much simpler to convert to df in the return statement vs df.concat
        return pd.DataFrame(hit_list)

    """
    # To be called when initalizing the asic, clears the FPGAs memory 
    def dump_fpga(self):
        #Reads out hit buffer and disposes of the output. Does not return or take arguments. 
        readout = self.get_readout()
        del readout
    """

###################### INTERNAL METHODS ###########################

# Below here are internal methods used for constructing things and testing

    # _test_io(): A function to read and write a register on the chip to see if 
    # everything is working. 
    # It takes no arguments 
    async def _test_io(self):
        """Reads a register to check a write and readback to the firmware is working"""
        try:    # Attempts to write to and read from a register
            ## Try to read the firmware ID and or Version
            await self.boardDriver.readFirmwareID()
            #self.nexys.write_register(0x09, 0x55, True)
            #self.nexys.read_register(0x09)
            #self.nexys.spi_reset()
            #self.nexys.sr_readback_reset()
        except Exception: 
            raise RuntimeError("Could not read or write from astropix!")

    # progress bar 
    def _wait_progress(self, seconds:int):
        for _ in tqdm(range(seconds), desc=f'Wait {seconds} s'):
            time.sleep(1)

    async def functionalityCheck(self, holdBool:bool = True):
        #Take take layer out of reset
        await self.boardDriver.setLayerReset(layer = 0 , reset = False , flush = True)
        #By default, keep layer in hold
        await self.boardDriver.holdLayer(layer = 0 , hold = holdBool , flush = True )  

        # Write 16 NULL bytes to the sensor
        await self.boardDriver.writeBytesToLayer(layer = 0 , bytes = [0x00]*16)

        # Reads the Idle counter  register for the layer 0
        idleCount = await self.boardDriver.rfg.read_layer_0_stat_idle_counter()
        print(f"Actual IDLE counter: {idleCount}")

        # Reads the Frame Counter register for the layer 0 
        framesCount = await self.boardDriver.rfg.read_layer_0_stat_frame_counter()
        print(f"Actual Frame counter: {framesCount}")