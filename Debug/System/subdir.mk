################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../System/startup_stm32f072xb.s 

C_SRCS += \
../System/stm32f0xx_hal_msp.c \
../System/stm32f0xx_it.c \
../System/stm32f0xx_nucleo.c \
../System/system_stm32f0xx.c 

OBJS += \
./System/startup_stm32f072xb.o \
./System/stm32f0xx_hal_msp.o \
./System/stm32f0xx_it.o \
./System/stm32f0xx_nucleo.o \
./System/system_stm32f0xx.o 

C_DEPS += \
./System/stm32f0xx_hal_msp.d \
./System/stm32f0xx_it.d \
./System/stm32f0xx_nucleo.d \
./System/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
System/%.o: ../System/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo %cd%
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

System/%.o: ../System/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32F072xB -DUSE_HAL_DRIVER -DUSE_STM32F0XX_NUCLEO -I"D:/workspaceSTM32/Testtesttest/System" -I"D:/workspaceSTM32/Testtesttest/Drivers" -I"D:/workspaceSTM32/Testtesttest" -I"D:/workspaceSTM32/Testtesttest/Drivers/STM32F0xx_HAL_Driver/Inc" -Os -g3 -Wall -fmessage-length=0 -Wno-strict-aliasing -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


