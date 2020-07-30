'''
(c)Niko Jozic 2018-1-25
Camera Daten Logger for RPi
'''
#! /usr/bin/env python3

from RPi import GPIO
from RPLCD.gpio import CharLCD
from modules.data import Data
import time
import threading
from threading import Thread

class Device():
    '''Handlingsklasse für States'''
    def __init__(self):
        '''init der gerätes'''
        self.state = HOME()
        self.data = Data()
        self.hardware = Hardware()
    def on_event(self, event):
        '''eventhandler'''
        self.state = self.state.on_event(event)
        # TODO: Hier vl bessere Architektur
        if str(self.state.__str__()) == "MESSAGE" or str(self.state.__str__()) == "TRIGGER":
            if time.time()-self.state.start_time >= 1.0:
                self.on_event("HOME")
    def __update(self):
        '''Thread Device'''
        while True:
            self.state.run()
            self.on_event(self.hardware.get_code())
            time.sleep(0.1) #s for nice LCD for LCD
    def start(self):
        '''Start new CameraBuffer thread'''
        Thread(target=self.__update, args=()).start()        

class State(object):
    '''Abstrakte State-Klasse'''
    def __init__(self):
        self.data = Data()
        self.hardware = Hardware()
        self.start_time = time.time()
        print('Processing current state:', str(self))
    def __repr__(self):
        return self.__str__()
    def __str__(self):
        return self.__class__.__name__
    def on_event(self, event):
        pass
    def run(self):
        pass
   
class HOME(State):
    '''Home-State'''    
    def on_event(self, event):
        if event == "menu_right":
            return SET_FPS()
        elif event == 'menu_left':
            return COMPANY()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        self.hardware.lcd_write("Smart Camera (c)", self.data.get_ip())
            
class SET_FPS(State):
    '''Set-FPS State'''
    def on_event(self, event):
        if event == 'menu_right':
            return SET_SIZE()
        elif event == 'menu_left':
            return HOME()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        if self.hardware.get_value_right():
            self.data.fps_up()
        elif self.hardware.get_value_left():
            self.data.fps_down()
        self.hardware.lcd_write("Frames/second:", ">" + str(self.data.get_fps()) + " fps" )

class SET_SIZE(State):
    '''Set-SIZE-State'''
    def on_event(self, event):
        if event == 'menu_right':
            return SET_RAM()
        elif event == 'menu_left':
            return SET_FPS()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        if self.hardware.get_value_right():
            self.data.size_up()
        elif self.hardware.get_value_left():
            self.data.size_down()
        self.hardware.lcd_write("Framesize: ", ">" + str(self.data.get_size()) + " px")

class SET_RAM(State):
    '''Set-RAM-State'''
    def on_event(self, event):
        if event == 'menu_right':
            return STATUS()
        elif event == 'menu_left':
            return SET_SIZE()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        if self.hardware.get_value_right():
            self.data.ram_up()
        elif self.hardware.get_value_left():
            self.data.ram_down()
        self.hardware.lcd_write("Buffersize: ", ">" + str(self.data.get_ram()) + " MB")

class STATUS(State):
    '''Show-Status-State (Frames,FPS,Time)'''
    def on_event(self, event):
        if event == 'menu_right':
            return COMPANY()
        elif event == 'menu_left':
            return SET_RAM()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        if self.hardware.get_value_right():
            self.hardware.lcd_write("Status-> FRAMES",str(self.data.get_frame_count()))
        elif self.hardware.get_value_left():
            self.hardware.lcd_write("Status-> TIME[s]","{:.0f}".format(self.data.get_time()))
        else:
            self.hardware.lcd_write("Status-> FPS ","{:.1f}".format(self.data.get_fps_real()))

class COMPANY(State):
    '''Company-State'''
    def on_event(self, event):
        if event == "menu_right":
            return HOME()
        elif event == 'menu_left':
            return STATUS()
        elif event == "trigger":
            return TRIGGER()
        return self
    def run(self):
        self.hardware.lcd_write("   SONY DADC","  FH Salzburg")

class TRIGGER(State):
    '''Trigger/Message-State, ONLY static text'''
    def on_event(self, event):
        if event == "HOME":
            return HOME()
        return self
    def run(self):
        self.hardware.lcd_write("MESSAGE:", "-> " + "TRIGGER" )

class Hardware:
    '''RaspberryPi-Hardware'''
    __instance = None
    __lock = threading.Lock()
    def __new__(cls):
        '''Singelton Thread save with correct init'''
        if Hardware.__instance is None:
            with Hardware.__lock:
                if Hardware.__instance is None:
                    Hardware.__instance = super(Hardware, cls).__new__(cls)
            cls.__instance.__initialized = False
        return cls.__instance
    def __init__(self):
        '''Init Define the Pins'''
        if(self.__initialized):
            return
        self.__initialized = True
        self.lcd = CharLCD(cols=16, rows=2, pin_rs=37, pin_e=35, pins_data=[33, 31, 29, 23],numbering_mode=GPIO.BOARD)
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup([8,10,12,16,18], GPIO.IN, pull_up_down=GPIO.PUD_UP)
        self.write_firstline = ""
        self.write_secondline = ""
        self.lcd.clear()
        print("Klasse Hardware erzeugt")
    def __del__(self):
        '''Dekonstruktor'''
        self.lcd.close(clear=True)
        GPIO.cleanup()
    def get_trigger(self):
        '''get key '''
        if GPIO.input(18):
            boolean = False
        else:
            boolean = True
        return boolean
    def get_menu_right(self):
        '''get key '''
        if GPIO.input(8):
            boolean = False
        else:
            boolean = True
        return boolean
    def get_menu_left(self):
        '''get key '''
        if GPIO.input(16):
            boolean = False
        else:
            boolean = True
        return boolean
    def get_value_left(self):
        '''get key '''
        if GPIO.input(12):
            boolean = False
        else:
            boolean = True
        return boolean
    def get_value_right(self):
        '''get key '''
        if GPIO.input(10):
            boolean = False
        else:
            boolean = True
        return boolean
    def get_code(self):
        '''return key code as string'''
        key = ""
        if self.get_trigger():
            key = "trigger"
        elif self.get_menu_right():
            key = "menu_left"
        elif self.get_menu_left():
            key = "menu_right"
        elif self.get_value_left():
            key = "value_left"
        elif self.get_value_right():
            key = "value_right"
        else:
            key = ""
        return key
    def lcd_write(self, firstline, secondline):
        '''Write on Display'''
        if self.write_firstline != firstline or self.write_secondline != secondline:
            self.write_firstline = firstline
            self.write_secondline = secondline
            self.lcd.clear()
            self.lcd.cursor_pos = (0,0)
            self.lcd.write_string(firstline[0:16])
            self.lcd.cursor_pos = (1,0)
            self.lcd.write_string(secondline[0:16])

if __name__ == '__main__':
    '''Testklasse'''
    Device().start()
