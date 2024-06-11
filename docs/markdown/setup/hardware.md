
# Hardware Setup

!!! note
    This page is copied from Nicolas/Amanda's work in the astropix-fw repository

## Gecco FTDI 

### Windows

D2XX Driver should be pre-installed.


### Linux

Install D2XX driver: [Installation Guide](https://ftdichip.com/wp-content/uploads/2020/08/AN_220_FTDI_Drivers_Installation_Guide_for_Linux-1.pdf)

Check if VCP driver gets loaded:
    
    sudo lsmod | grep -a "ftdi_sio"

If yes, create a rule e.g., 99-ftdi-nexys.rules in /etc/udev/rules.d/ with the following content to unbid the VCP driver and make the device accessible for non-root users:

    ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010",\
    PROGRAM="/bin/sh -c '\
        echo -n $id:1.0 > /sys/bus/usb/drivers/ftdi_sio/unbind;\
        echo -n $id:1.1 > /sys/bus/usb/drivers/ftdi_sio/unbind\
    '"

    ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010",\
    MODE="0666"

Reload rules with:

    sudo udevadm trigger

Create links to shared lib:

    sudo ldconfig

### Mac
See [FTDI Mac OS X Installation Guide](https://www.ftdichip.com/Support/Documents/InstallGuides/Mac_OS_X_Installation_Guide.pdf) D2XX Driver section from page 10.


## UART (Gecco/CMOD)

In case a Board UART is used, there should be no specific setup to perform, the FTDI USB-UART Converters present on the Nexys Video and CMOD boards are recognised by all the operating systems natively.

On Linux, Serial ports are usually restricted to members of a specific group, which would be **dialout** for ubuntu. Just add your user to this group:

```bash
sudo gpasswd -a $USER dialout
```
Now re-open a new terminal, or login/logout to have the change take effect, you can check by using the id command, for example: 

```bash
id 
uid=1001(xxx) gid=1002(xxx) groups=1002(xxxx),4(adm),20(dialout),27(sudo),46(plugdev),117(netdev),137(libvirt),1001(docker)
```