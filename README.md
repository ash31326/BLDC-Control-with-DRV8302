# BLDC-Control-with-DRV8302
3 phase brushless DC motor control board. 12V supply with up to 30A of current draw.

Code in this repository is written for use with the motor control board linked here:
https://workspace.circuitmaker.com/Projects/Details/Adam-Holloway/BLDC-Control-with-DRV8302

Initial code for the STM32F030KT6 MCU was generated using STM32CubeMX. 

TO DO:
 * Finish implementation of software I2C slave
 * Implement routine to read ADC and trigger interrupt for 0 voltage crossing
 * Implement routine for controlling 3 designated PWM hardware timers with phase shifts based on 0 voltage crossing interrupt and I2C input from flight controller
 * To be determined
