# (c)Niko Jozic
# Camera Daten Logger for RPi
# Install Guide zum manuell installieren

# 1) Ausgehend von einer Standart Raspbian Konfiguration
# Siehe: https://www.raspberrypi.org/downloads/raspbian/

# 2) Internet einrichten
# Ethernet oder Wlan

# 3) Raspbian bereinigen (Überflüssigen Packages entfernen)
sudo apt-get purge wolfram-engine
sudo apt-get purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove

# 4) OpenCV und Python installieren

# 4.1) Install dependencies
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk2.0-dev libgtk-3-dev
sudo apt-get install libcanberra-gtk*
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python2.7-dev python3-dev

# 4.2) Download the OpenCV source code -> ev. neuere Verionen Verwenden
cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.3.0.zip
unzip opencv_contrib.zip

# 4.3) Install enviroment
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py
sudo rm -rf ~/.cache/pip
pip install numpy

# 4.4) Compile and install the optimized OpenCV library for Raspberry Pi
# -> Ev. ein vorcompelierte Verionen verwenden
cd ~/opencv-3.3.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules \
	-D ENABLE_NEON=ON \
	-D ENABLE_VFPV3=ON \
	-D BUILD_TESTS=OFF \
	-D INSTALL_PYTHON_EXAMPLES=OFF \
	-D BUILD_EXAMPLES=OFF ..

# 4.5) Install openCV with 4 threads (Sonst dauert das ewig)

# 4.5.1) Change Swapsize and start (Sonst bricht das Compelieren ab -> BUG)
-> open. /etc/dphys-swapfile
-> set: CONF_SWAPSIZE=1024
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start

# 4.5.2) Compile
make -j4

# 4.5.3) Install
sudo make install
sudo ldconfig

#4.5.4) Restore swapsize
-> open. /etc/dphys-swapfile
-> set: CONF_SWAPSIZE=100
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start

# 4.6) Test OpenCV
python
import cv2
cv2.__version__

# 5) Import PiLCD (Zum Testen des LCD Display)
# Nicht unbedignt notwendig
sudo pip3 install RPLCD
sudo apt-get install python3-smbus

sudo apt-get update && sudo apt-get upgrade

# 6) Install VLC-Player
# Nicht unbedignt notwendig
sudo apt-get update
sudo apt-get install vlc browser-plugin-vlc

# 7) For testing skrips from pyimagesearch -> Siehe Blog
# Nicht unbedignt notwendig
pip install "picamera[array]"

# 8) Autostart
# 8.1) Anlegen -> wurde nicht verwendet
sudo nano /etc/init.d/cameradatenlogger # -> copy  "cameradatenlogger"
sudo chmod 755 /etc/init.d/cameradatenlogger # Freigebe
# Testen
sudo /etc/init.d/cameradatenlogger start
sudo /etc/init.d/cameradatenlogger stop
sudo update-rc.d cameradatenlogger defaults
sudo update-rc.d cameradatenlogger remove

# 8.2) Freigebe
sudo chmod 777 /home/pi/Desktop/CameraDatenLogger/autostart.py # Wichtig!

# 8.3) In local autostart -> Das wurde Verwendet!
sudo nano /etc/rc.local
python3 /home/pi/Desktop/CameraDatenLogger/autostart.py # in '/etc/rc.local' einfügen und Pfad richtig angeben

# 9) Python-Code der zum Optimieren Verwendet wirde => Performance Test
# -> Finding the bottlenecks (Siehe: https://ymichael.com/2014/03/08/profiling-python-with-cprofile.html)
python3 -m cProfile -o log.txt camera_daten_logger.py
python3 -m cProfile camera_daten_logger.py
sudo pip install cprofilev
cprofilev -f /path/log