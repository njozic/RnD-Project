'''
(c)Niko Jozic 2018-1-25
Camera Daten Logger for RPi
'''
#! /usr/bin/env python3

import os

# init the System with correct camera driver
os.system("sudo modprobe bcm2835-v4l2")

from modules.camera_buffer import Camera_Buffer
from modules.device import Device

# Start the Threads
Camera_Buffer().start()
Device().start()
