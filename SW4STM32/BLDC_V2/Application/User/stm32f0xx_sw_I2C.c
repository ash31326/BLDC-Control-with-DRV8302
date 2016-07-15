/* Software I2C for STM32 processors (Slave only currently)
 * Based on pseudo code algorithm on the I2C wikipedia page
 * File: stm32f0xx_sw_I2C.c
 *
 *
 *  Created on: Jul 8, 2016
 *      Author: Adam Holloway
 */

#include "stm32f0xx_sw_I2C.h"
#include "stm32f0xx.h"
#include "gpio.h"
//#include <stdbool.h>

// Define I2C variables
static __IO _Bool I2C_STARTED = 0; //
static uint8_t I2C_SELF_ADDRESS = 0xA2; // Slave address of MCU on I2C bus
uint16_t SDA = GPIO_PIN_0;
uint16_t SCL = GPIO_PIN_1;


// -------- DELAY FUNCTIONS --------

// Intialize the SysTick register and set each tick to 1us
void SysTickInit(uint32_t frequency) {
	SysTick_Config(SystemCoreClock / 1000000);
}

//Update sys_ticks counter (defined as a volatile variable)
static __IO uint32_t sysTickCounter;
void SysTick_Handler(void) {
	if (sysTickCounter != 0x00) {
		sysTickCounter--;
	}

	HAL_IncTick();
	HAL_SYSTICK_IRQHandler();

}
// set counter to desired delay and wait for it to reach 0 (handler will count it down based on the tick interrupt)
void delay(uint32_t us) {
	sysTickCounter = us;
	while (sysTickCounter != 0x00) {
	}
}

void I2C_DELAY(void){ // delay for 2 us (~250Kbps baud rate)
	delay(10);
}
// -------- END DELAY FUNCTIONS --------


// -------- BASE I2C FUNCTIONS --------

// Return 8 bit integer for value of SCL (for applying bitwise operators)
uint8_t READ_SCL(void) { // Eventually do some magic here to determine the GPIO port register from the function input (pin)
	GPIO_PinState SCL_State = HAL_GPIO_ReadPin(GPIOF, SCL);
	if (SCL_State == GPIO_PIN_SET) {
		return 0x01;
	}
	else {
		return 0x00;
	}
}
// Return 8 bit integer for value of SDA
uint8_t READ_SDA(void) {
	GPIO_PinState SDA_State = HAL_GPIO_ReadPin(GPIOF, SDA);
	if (SDA_State == GPIO_PIN_SET) {
		return 0x01;
	}
	else {
		return 0x00;
	}
}

// Drive SDA pin high
void SET_SDA(void) {
	HAL_GPIO_WritePin(GPIOF, SDA, GPIO_PIN_SET);
}

// Drive SDA pin low
void CLEAR_SDA(void) {
	HAL_GPIO_WritePin(GPIOF, SDA, GPIO_PIN_RESET);
}

// Drive SCL pin high
void SET_SCL(void) {
	HAL_GPIO_WritePin(GPIOF, SCL, GPIO_PIN_SET);
}

// Drive SCL pin low
void CLEAR_SCL(void) {
	HAL_GPIO_WritePin(GPIOF, SCL, GPIO_PIN_RESET);
}


// -------- END BASE I2C FUNCTIONS --------


// -------- MAIN I2C FUNCTIONS --------


void I2C_START_COND(void) {
	if (I2C_STARTED) {
		// Restart Condition:
		// Send STOP bit
		SET_SDA();
		I2C_DELAY();
		// Send START bit

	}

}


