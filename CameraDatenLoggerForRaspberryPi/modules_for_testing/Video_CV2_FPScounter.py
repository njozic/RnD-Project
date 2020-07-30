import numpy as np
import cv2
import time

cap = cv2.VideoCapture(0)
cap.set(cv2.CAP_PROP_FPS, 120)
cap.set(cv2.CAP_PROP_FRAME_WIDTH,320) 
cap.set(cv2.CAP_PROP_FRAME_HEIGHT,240)
       
FPS = 0
frame_count = 0
cycle_time = 0
start_time = time.time()
size = 10

while(True):
    #FPS.append(1/(time.time()-cycle_time))
    #cycle_time = time.time()
    #FPS.pop(0)
    #meanFPS = sum(FPS)/size
    #print(FPS)

    frame_count += 1
    laufeit = time.time()-start_time
    FPS =  frame_count / laufeit
    
    
    ret, frame = cap.read()
    image = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    
    output_string = str(laufeit)[0:5] + ' ' + str(FPS)[0:5]
    
    cv2.putText(image,
                output_string,
                (5,15),
                cv2.FONT_HERSHEY_SIMPLEX,
                0.5,
                (255,255,255),
                1,
                cv2.LINE_AA)
    
    cv2.imshow('frame',image)   
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
