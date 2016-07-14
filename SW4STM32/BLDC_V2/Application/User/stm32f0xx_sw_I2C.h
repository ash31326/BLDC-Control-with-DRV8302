/* Software I2C for STM32 processors (Slave only currently)
 * Based on pseudo code algorithm on the I2C wikipedia page
 * File: stm32f0xx_sw_I2C.h
 *
 *
 *  Created on: Jul 8, 2016
 *      Author: Adam Holloway
 */

// Header file containing _HAL gpio functions for ARM Cortex M0 STM32 MCUs
#include "stm32f0xx_hal_gpio.h"

// Important .h  stuff be here
#ifndef APPLICATION_USER_STM32F0XX_SW_I2C_H_
#define APPLICATION_USER_STM32F0XX_SW_I2C_H_

// define some initial variables */
//#define	uint32_t I2C_SPEED; // Not sure if I need this here yet (probably going to end up removing it)
//#define I2C_SELF_ADDRESS ((uint8_t) 0xA2);

// Declare delay functions for I2C timing (based on SysTick interrupt code from Patrick Leyman as well as Peter Harrison)
void I2C_DELAY(void);
void SysTickInit(uint32_t frequency);
void SysTick_Handler(void);
void delay(uint32_t us);
// End delay functions

// Declare base I2C functions
uint8_t READ_SCL(uint16_t SCL); // Return 8 bit integer for current value of SCL
uint8_t READ_SDA(uint16_t SDA); // Return 8 bit integer for current value of SDA (maybe GPIO_PinState if I need it)
void SET_SDA(uint16_t SDA); 	   // Drive SDA high
void CLEAR_SDA(uint16_t SDA);   // Drive SDA low
// End core functions

// Declare I2C operations
void I2C_START_COND(void);
void I2C_STOP_COND(void);
void I2C_WRITE_BIT(uint8_t BIT);
void I2C_WRITE_BYTE(uint8_t BYTE);
uint8_t I2C_READ_BIT(void);
uint8_t I2C_READ_BYTE(void);



#endif /* APPLICATION_USER_STM32F0XX_SW_I2C_H_ */
