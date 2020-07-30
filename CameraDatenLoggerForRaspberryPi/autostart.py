#! /usr/bin/env python3

import os

try:
    os.system("sudo python3 ./camera_daten_logger.py")
    print("CameraDatenlogger - wird gestartet")
except:
    print("CameraDatenlogger - konnte nicht gesartet werden. Überprügen der Pfades." )
