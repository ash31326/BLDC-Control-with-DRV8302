# BLDC-Control-with-DRV8302
3 phase brushless DC motor control board. 12V supply with up to 30A of current draw.

Code in this repository is written for use with the motor control board linked here:
https://workspace.circuitmaker.com/Projects/Details/Adam-Holloway/BLDC-Control-with-DRV8302

Initial code for the STM32F030KT6 MCU was generated using STM32CubeMX. 

TO DO:
  I improperly read the datasheet of the MCU and did not realize the pins selected as I2C on the board schematic are not dedicated hardware I2C pins (they are in different versions of the STM32F0xx MCU line, oops). This means that simple i2c communication will need to be handled in software with the pins configured as GPIO. This is not ideal as it will consume alot of CPU resources but should work considering CPU load in general will be light (mainly back emf voltage detection and simple pwm signal generation with hardware timers). 

Stuff will eventually go here
