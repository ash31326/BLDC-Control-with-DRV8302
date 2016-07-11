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
void I2C_DELAY(void){ // 400 kbps baud rate = 2.5 us per operation -> 1.25us delay between operations (rising/falling)
	/* Assembler macro sourced from code created by Carmine Noviello for the STM32F401RE
	 * With a 48 MHz clock, 48 cpu cycles will occur in 1us (Carmine estimated 16 loop cycles for 84 MHz clock, based on this (9 will be reasonably close for 48MHz clock)
	 * Will eventually put this on a scope to optimize
	 */
	#define delay(void) do {\
		asm volatile ( "MOV R0, %[loops]\n\t"\
				"1: \n\t"\
				"SUB R0, #1\n\t"\
				"CMP R0, #2\n\t"\
				"BNE 1b \n\t" : : [loops] "r" (9*us) : "memory"\
				);\
	} while(0)



}

