'''
(c)Niko Jozic 2018-1-25
Camera Daten Logger for RPi
'''
#! /usr/bin/env python3

import subprocess
import threading
import os
from os.path import dirname, abspath

class Data():
    '''Datenfelder'''
    size_data = [(160,120),(240,160),(320,240),(640,480),(800,600),(1024,768),(1280,720),(1640,922),(1920,1080),(3280,2464)] 
    fps_data = [1, 5, 10, 15, 20, 25, 30, 40 ,50, 60, 70, 80, 90]
    ram_data = [100, 200, 300, 400, 500]
    __instance = None
    __lock = threading.Lock()
    def __new__(cls):
        '''Singelton Thread save with correct init'''
        if Data.__instance is None:
            with Data.__lock:
                if Data.__instance is None:
                    Data.__instance = super(Data, cls).__new__(cls)
            cls.__instance.__initialized = False
        return cls.__instance
    def __init__(self):
        '''Init'''
        if(self.__initialized):
            return
        self.__initialized = True
        self.size_counter = 3
        self.fps_counter = 6
        self.ram_counter = 3
        self.frame_count = 0
        self.time = 0
        self.fps = 0
        self.buffer_time_len = 1
        self.buffer_frames_count=1
        # self.path = os.path.join(os.path.dirname(__file__),'../../records/')
        self.path = '/var/www/html/videos/'        
        print("Klasse Data erzeugt")

    def get_ip(self):
        '''get IP-Adress'''
        ip = '0.0.0.0'
        try:
            ip = subprocess.getoutput("hostname -I")
            self.ip = str(ip.split(" ",1)[0])
        except:
            pass
            #print('We have not IP! '+ self.ip)
        return self.ip
    
    def fps_up(self):
        '''change datafield'''
        if self.fps_counter < len(self.fps_data)-1:
            self.fps_counter += 1            
        else:
            self.fps_counter = len(self.fps_data)-1
    def fps_down(self):
        '''change datafield'''
        if self.fps_counter > 0:
            self.fps_counter -= 1
        else:
            self.fps_counter = 0
    def get_fps(self):
        '''get data'''
        return self.fps_data[self.fps_counter]
    def size_up(self):
        '''change datafield'''
        if self.size_counter < len(self.size_data)-1:
             self.size_counter += 1           
        else:
            self.size_counter = len(self.size_data)-1
    def size_down(self):
        '''change datafield'''
        if self.size_counter > 0:
            self.size_counter -= 1
        else:
            self.size_counter = 0
    def ram_up(self):
        '''change datafield'''
        if self.ram_counter < len(self.ram_data)-1:
             self.ram_counter += 1           
        else:
            self.ram_counter = len(self.ram_data)-1
    def ram_down(self):
        '''change datafield'''
        if self.ram_counter > 0:
            self.ram_counter -= 1
        else:
            self.ram_counter = 0
    def get_ram(self):
        '''get data'''
        return self.ram_data[self.ram_counter]
    def get_size(self):
        '''get data'''
        return self.size_data[self.size_counter]
    def set_frame_count(self, count):
        '''set data'''
        self.frame_count = count
    def get_frame_count(self):
        '''get data'''
        return self.frame_count
    def set_time(self, time):
        '''set data'''
        self.time = time
    def get_time(self):
        '''get data'''
        return self.time
    def set_fps_real(self,fps):
        '''set data'''
        self.fps = fps
    def get_fps_real(self):
        '''get data'''
        return self.fps
    def get_path(self):
        '''get data'''
        return self.path
    def set_buffer_time_len(self, length):
        '''set data'''
        self.buffer_time_len = length
    def get_buffer_time_len(self):
        '''get data'''
        return self.buffer_time_len
    def set_buffer_frames_count(self, length):
        '''set data'''
        self.buffer_frames_count = length
    def get_buffer_frames_count(self):
        '''get data'''
        return self.buffer_frames_count

if __name__ == '__main__':
    '''Testklasse'''
    data = Data()
    print(data.get_fps())
    data.fps_up()
    print(data.get_fps())
    data.fps_down()
    print(data.get_fps())
