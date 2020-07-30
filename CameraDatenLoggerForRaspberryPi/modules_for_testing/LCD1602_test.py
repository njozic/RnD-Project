from RPi import GPIO
from RPLCD.gpio import CharLCD
import time

lcd = CharLCD(cols=16, rows=2, pin_rs=37, pin_e=35, pins_data=[33, 31, 29, 23],numbering_mode=GPIO.BOARD)

smiley = (
        0b10000,
        0b10000,
        0b10000,
        0b10000,
        0b10000,
        0b10000,
        0b10000,
        0b11111,)

lcd.write_string('Test\n\r Hallo 123 test')
lcd.cursor_pos = (1,0)
lcd.write_string('It works!')
time.sleep(1)
lcd.clear()
lcd.cursor_pos = (0,0)
lcd.create_char(0, smiley)
lcd.write_string('\x00')
time.sleep(5)
lcd.clear()
lcd.close(clear=True)
