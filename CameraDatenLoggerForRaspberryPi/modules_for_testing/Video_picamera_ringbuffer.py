import picamera
#import cv2
import random

from pynput.keyboard import Key, Controller
import getch

def detectFailure():
    x = random.randint(0,200) == 100
    return x

keyboard = Controller()


camera = picamera.PiCamera()
camera.resolution = (640,480)
camera.framerate = 2
stream = picamera.PiCameraCircularIO(camera, seconds=1)
camera.start_recording(stream, format='h264')

try:
    print('Start Camera')
    count = 1
    while True:
        if getch.getche() == 'a':
            print('Starte aufnahme!')
            count += 1
            camera.wait_recording(1)
            link = '/home/pi/Desktop/CameraLogger/TEST/test' + str(count) + '.h264'
            stream.copy_to(link)
finally:
    camera.stop_recording()
