from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2

camera = PiCamera()
camera.resolution = (640,480)
camera.framerate = 100

rawCapture = PiRGBArray(camera, size=(640, 480))

time.sleep(0.1)

frame_counter = 0
total_time = time.time()

for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
    frame_counter += 1
    image = frame.array
    cv2.imshow("Image",image)
    key = cv2.waitKey(1) & 0xFF
    rawCapture.truncate(0)
    if key == ord("q"):
        break

print(frame_counter, 'frames', total_time,'ms')
