
import serial 
import serial.tools.list_ports_linux

#for port in serial.tools.list_ports_linux.comports():
#    print("Port: ",port.manufacturer, port.device)

def listLinuxFTDIPorts():
    return filter(lambda port: port.manufacturer == "FTDI" , serial.tools.list_ports_linux.comports())

def selectFirstLinuxFTDIPort():
    return next(iter(listLinuxFTDIPorts()), None)
    
