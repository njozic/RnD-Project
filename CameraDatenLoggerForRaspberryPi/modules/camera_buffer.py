'''
(c)Niko Jozic 2018-1-25
Camera Daten Logger for RPi
'''
#! /usr/bin/env python3

from threading import Thread
from modules.data import Data
from modules.device import Hardware
import sys
import cv2
import time
import datetime
import os
import threading

class Camera:
    '''Klasse Camera for standart-camera 0 with OpenCV'''
    '''Datenfelder'''
    __instance = None
    __lock = threading.Lock()
    def __new__(cls):
        '''Singelton Thread save with correct init'''
        if Camera.__instance is None:
            with Camera.__lock:
                if Camera.__instance is None:
                    Camera.__instance = super(Camera, cls).__new__(cls)
            cls.__instance.__initialized = False
        return cls.__instance
    def __init__(self, source=0):
        '''Init everything with Singelton'''
        if(self.__initialized):
            return
        self.__initialized = True
        self.source = source
        self.data = Data()
        self.cap = cv2.VideoCapture(self.source)
        self.update_data()
        self.__start_time = time.time() # Start Timer
        self.write_timer = 1
        self.__frame_count = 0          # Init frame counter
        print("Klasse Camera erzeugt")
    def set_FPS(self):
        '''set fps'''
        if float(self.data.get_fps()) != self.cap.get(cv2.CAP_PROP_FPS):
            self.cap.set(cv2.CAP_PROP_FPS, float(self.data.get_fps()) )
            print("Change FPS ", self.data.get_fps(), self.cap.get(cv2.CAP_PROP_FPS))
    def set_mode(self):
        '''set resolution mode'''
        (width, height) = self.data.get_size()
        if width != self.cap.get(cv2.CAP_PROP_FRAME_WIDTH):
            self.cap.set(cv2.CAP_PROP_FRAME_WIDTH,width)
            self.cap.set(cv2.CAP_PROP_FRAME_HEIGHT,height)
            print("Change resolution")       
    def __get_frame(self):
        '''read one frame vom camera'''
        self.__frame_count += 1
        (self.ret, self.frame) = self.cap.read()
    def update_data(self):
        '''update the camera options'''
        self.set_mode()
        self.set_FPS()
    def update_raw(self):
        '''Read single Frame-> only testing'''
        self.__get_frame()
        return [self.frame, self.__frame_count]
    def update(self):
        '''Read single frame with Data'''
        self.__get_frame()
        running_time = time.time() - self.__start_time
        if running_time >= self.write_timer: #update only every 1s
            self.write_timer += 1
            self.data.set_frame_count(self.__frame_count)
            self.data.set_time(running_time)
            fps = self.data.get_buffer_frames_count()/self.data.get_buffer_time_len()
            self.data.set_fps_real(fps)
        cv2.putText(self.frame, "{0:9.3f}sec {1:0>8d}frame {2:.0f}fps".format(running_time, self.data.get_frame_count(), self.data.get_fps_real()),
                    (5,15), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0,255,0), 1, cv2.LINE_AA)
        # Display the resulting frame
        #cv2.imshow('frame',self.frame)
        #cv2.waitKey(0)
        #if cv2.waitKey(1) & 0xFF == ord('q'):
        #    break        
        return [self.frame, self.__frame_count]

class RingBuffer():
    ''' new Ringbuffer'''
    def __init__(self, size_MB = 300):
        '''init ringbuffer'''
        self.data = Data()
        self.frame_count = 0
        self.frame_size = 0
        self.buffer_size = 0
        self.ring_buffer = []
        self.ring_buffer_time = []
        self.buffer_max_size_MB = 0
        self.update_data()
    def update_data(self):
        '''update ringbuffer options'''
        if self.buffer_max_size_MB != self.data.get_ram():
            self.buffer_max_size_MB = self.data.get_ram()
            print("Change RAM size")
    def append(self, frame):
        '''add frame to ringbuffer'''
        self.ring_buffer.append(frame)
        self.ring_buffer_time.append(time.time())
        self.data.set_buffer_time_len(self.ring_buffer_time[-1] - self.ring_buffer_time[0])
        self.data.set_buffer_frames_count(self.get_frame_buffer())
        self.frame_count += 1
        self.frame_size = sys.getsizeof(frame)/1000000 # Umrechng auf MB
        self.buffer_size += self.frame_size
        while self.buffer_size >= self.buffer_max_size_MB:
            self.buffer_size -= sys.getsizeof(self.ring_buffer[0])/1000000
            self.ring_buffer.pop(0)
            self.ring_buffer_time.pop(0)
        #print("Buffergröße: " + str(len(self.ring_buffer)) + " Framesize: " + str(self.frame_size) + " Size: " + str(self.buffer_size))
    def return_ring_buffer(self):
        '''return ringbuffer'''
        return self.ring_buffer
    def get_buffer_size(self):
        '''get buffer size in mb'''
        return self.buffer_size
    def get_frame_size(self):
        '''get frame size in mb'''
        return self.frame_size
    def get_frame_count(self):
        '''get total count of frames'''
        return self.frame_count
    def get_frame_buffer(self):
        '''get count of frams in buffer'''
        return len(self.ring_buffer)

class Camera_Buffer():
    '''Camera buffer'''
    def __init__(self):
        '''init camerabuffer'''
        self.camera = Camera()
        self.ring_buffer = RingBuffer()
        self.fread_active = False
        self.hardware = Hardware()
    def __update(self):
        '''Thread camerabuffer'''
        while True:
            frame, count = self.camera.update()
            self.ring_buffer.append(frame)
            if self.hardware.get_trigger():
                self.save()
                print("Trigger")
            self.camera.update_data()
            self.ring_buffer.update_data()
    def start(self):
        '''Start new CameraBuffer thread'''
        Thread(target=self.__update, args=()).start()
    def save(self):
        '''Save Buffer to .avi'''
        if not self.fread_active:
            Thread(target=self.__buffer_fread_mp4, args=()).start() # change to buffer_fread
        return self
    # TODO: Was passiert bei verschiednen auflösungen im Buffer
    def __buffer_fread_avi(self):
        '''Buffer thread method write to .avi'''
        self.fread_active = True
        data = Data()
        file_name = datetime.datetime.now().strftime("%y-%m-%d_%H-%M-%S-%f")
        fourcc = cv2.VideoWriter_fourcc(*'XVID')
        out = cv2.VideoWriter(data.get_path() + str(file_name) + '.avi', fourcc, data.get_fps_real(), data.get_size()) #/share/
        start_frame_count = self.ring_buffer.get_frame_count() + self.ring_buffer.get_frame_buffer() / 2
        while self.ring_buffer.get_frame_count() < start_frame_count: #Delay for best capture
            time.sleep(0.01)
        print("save Video .avi")
        for frame in self.ring_buffer.return_ring_buffer():
            out.write(frame)
        out.release()
        self.fread_active = False
    def __buffer_fread_mp4(self):
        '''Buffer thread method write to .mp4'''
        self.fread_active = True
        data = Data()
        file_name = int(datetime.datetime.now().timestamp())
        #fourcc = cv2.VideoWriter_fourcc(*'MP4V')
        fourcc = cv2.VideoWriter_fourcc(*'X264')
        #fourcc = cv2.VideoWriter_fourcc('M','P','4','V')
        #fourcc = cv2.VideoWriter_fourcc(*'H','2','6','4')
        #fourcc = cv2.VideoWriter_fourcc('M','J','P','G')
        #fourcc = cv2.VideoWriter_fourcc('W','E','B','M')
        out = cv2.VideoWriter(
            data.get_path() + str(file_name) + '.mp4',
            fourcc,
            data.get_fps_real()/2,
            data.get_size(),
            True
        ) #/share/
        start_frame_count = self.ring_buffer.get_frame_count() + self.ring_buffer.get_frame_buffer() / 2
        while self.ring_buffer.get_frame_count() < start_frame_count: #Delay for best capture
            time.sleep(0.01)
        print("save Video .mp4")
        for frame in self.ring_buffer.return_ring_buffer():
            out.write(frame)
        out.release()
        self.fread_active = False

if __name__ == '__main__':
    '''Testklasse'''
    Camera_Buffer().start()
