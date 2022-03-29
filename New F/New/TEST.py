#!/usr/bin/python3

from tkinter import ttk
from tkinter import *
from tkinter.ttk import *
import minimalmodbus
#import schedule
import time
#import os

minimalmodbus.BAUDRATE = 19200
minimalmodbus.PARITY = 'N'
minimalmodbus.BYTESIZE = 8
minimalmodbus.STOPBITS = 2
minimalmodbus.TIMEOUT = 0.1
instrument = minimalmodbus.Instrument('/dev/ttyUSB0', 3)  # port and slave
#instrument.debug = True

#def stop():
#    instrument.write_register(8192, 1)

def start():
    instrument.write_register(8192, 10)

def main():
    window = Tk() 
    window.title("VSR")
    window.mainloop()
    start()
    sfreq = instrument.read_register(8450, 2)
    ofreq = instrument.read_register(8451, 2) #register number, number decimals
    curr = instrument.read_register(8452, 2)
    print (sfreq)
    print (ofreq)
    print(curr)
    time.sleep(20)
    instrument.write_register(8192, 1)

if __name__ == '__main__':
    main()


#ADS1115 - https://learn.adafruit.com/raspberry-pi-analog-to-digital-converters/ads1015-slash-ads1115