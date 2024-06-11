# Tooling Setup 

Some tools in the repository need a couple extra packages usually available in your linux distribution:

    sudo apt install tcl tcllib python3-venv

At the moment, the following external tools are needed and supported: 

- Xilinx Vivado for firmware building. No specific version required, if possible install the actual version from [https://www.xilinx.com/support/download.html](https://www.xilinx.com/support/download.html)
- For Hardware simulation, Cadence Xcelium is supported at the moment as being the reference simulator at KIT. It should be possible to also support the Vivado simulator to make the verification environment more accessible to users. 