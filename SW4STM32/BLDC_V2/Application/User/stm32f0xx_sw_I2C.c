/* Software I2C for STM32 processors (Slave only currently)
 * Based on pseudo code algorithm on the I2C wikipedia page
 * File: stm32f0xx_sw_I2C.c
 *
 *
 *  Created on: Jul 8, 2016
 *      Author: Adam Holloway
 */

#include "stm32f0xx_sw_I2C.h"
#include "gpio.h"

//Delay function for executing i2c operations
void I2C_DELAY(void){ // Max 400 kbps baud rate = 2.5 us per operation -> minimum of 1.25us delay between operations (rising/falling)




}

