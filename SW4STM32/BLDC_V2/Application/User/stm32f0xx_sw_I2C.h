/* Software I2C for STM32 processors (Slave only currently)
 * Based on pseudo code algorithm on the I2C wikipedia page
 * File: stm32f0xx_sw_I2C.h
 *
 *
 *  Created on: Jul 8, 2016
 *      Author: Adam Holloway
 */

#ifndef APPLICATION_USER_STM32F0XX_SW_I2C_H_
#define APPLICATION_USER_STM32F0XX_SW_I2C_H_

// define some initial variables */
#define	uint32_t I2C_SPEED; // Not sure if I need this here yet (probably going to end up removing it)
#define uint16_t ADDRESS 0xA2;


// Declare base I2C functions
uint8_t READ_SCL(SCL); // Return 8 bit integer for current value of SCL
uint8_t READ_SDA(SDA); // Return 8 bit integer for current value of SDA
void I2C_DELAY(void);
void SET_SDA(SDA); 	   // Drive SDA high
void CLEAR_SDA(SDA);   // Drive SDA low
// End core functions

// Declare I2C operations
void I2C_START_COND(void);
void I2C_STOP_COND(void);
void I2C_WRITE_BIT(BIT);
void I2C_WRITE_BYTE(BYTE);
uint8_t I2C_READ_BIT(void);
uint8_t I2C_READ_BYTE(void);



#endif /* APPLICATION_USER_STM32F0XX_SW_I2C_H_ */
