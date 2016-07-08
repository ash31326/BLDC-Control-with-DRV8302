################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/adc.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/gpio.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/main.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/stm32f0xx_hal_msp.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/stm32f0xx_it.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/tim.c \
C:/Users/Adam/BLDC_V2/BLDC_V2/Src/usart.c 

OBJS += \
./Application/User/adc.o \
./Application/User/gpio.o \
./Application/User/main.o \
./Application/User/stm32f0xx_hal_msp.o \
./Application/User/stm32f0xx_it.o \
./Application/User/tim.o \
./Application/User/usart.o 

C_DEPS += \
./Application/User/adc.d \
./Application/User/gpio.d \
./Application/User/main.d \
./Application/User/stm32f0xx_hal_msp.d \
./Application/User/stm32f0xx_it.d \
./Application/User/tim.d \
./Application/User/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/adc.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_hal_msp.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/stm32f0xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_it.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/stm32f0xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usart.o: C:/Users/Adam/BLDC_V2/BLDC_V2/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F030x6 -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Include" -I"C:/Users/Adam/BLDC_V2/BLDC_V2/Drivers/CMSIS/Device/ST/STM32F0xx/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


