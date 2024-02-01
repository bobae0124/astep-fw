# Firmware Building


The firmware Vivado Project is setup by running a TCL script that sets the build configuration properly  for the desired hardware target(defines, firmware id etc..). 
The firmware can be build from the command line or the Vivado GUI opened. All the build firmware are produced with a unique name so that users can be sure which bitfile they are flashing on the target board. 

The firmware build folder contains the TCL entry points for each target, which can be called using a make command: 

Folder: **fw/astep3l-24/target-multiboard/**

| Target | Script   |  Console Build Command | Vivado GUI Command | Firmware ID |
| --------- | --------- | --------- | --------- | --------- |
| Gecco - Astropix v2 Single Carrier | gecco-astropix2.tcl | make gecco-astropix2.build |  make gecco-astropix2.open | 0xab02 |
| Gecco - Astropix v3 Single Carrier | gecco-astropix3.tcl | make gecco-astropix3.build |  make gecco-astropix3.open | 0xab03 |
| CMOD - Astep 3 Layers | cmod-astep.tcl | make cmod-astep.build |  make cmod-astep.open | 0xac03|

## Run firmware build 

### Load Vivado 

To build a selected firmware bitfile or open the vivado project, you have to first make sure Vivado is available in your terminal. If Vivado is always accessible on your machine, ignore this section.

For example 

Linux:

```bash
cd <Vivado install-dir>
source settings64.sh
```

For windows there is no main load script for the moment, but to load Vivado, your can do:

```bash
cd <Vivado install-dir>
settings64.bat
```

### Build Firmware fully

To build a bitfile directly, you can run the target TCL entrypoint in batch mode using make. 

Run the required make command as presented in the table at the top of this page, and wait until a firmware is produced:

You can build the firmware using the Makefile targets:

```bash

# Got to multiboard target folder:
cd fw/astep24-3l/target-multiboard

# To Build a firmware in the terminal line fully, use the ***.build targets:

make gecco-astropix2.build # Gecco Astropix 2
make gecco-astropix3.build # Gecco Astropix 3
make cmod-astep.build # CMOD Astropix 3

# Outputs are located in the vivado-run/bitstreams folder
```

### Open the Vivado UI

The TCL script can be run in open mode, which will start the Vivado GUI, load the project, then let the user manually go through the implementation steps:

Run the required make command as presented in the table at the top of this page, and wait until vivado opens:

```bash

# Got to multiboard target folder:
cd fw/astep24-3l/target-multiboard

## For astropix2 on gecco:
make gecco-astropix2.open 

# Now use vivado as usual
```