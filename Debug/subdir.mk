################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32F072xB -DUSE_HAL_DRIVER -DUSE_STM32F0XX_NUCLEO -I"D:/workspaceSTM32/Testtesttest/System" -I"D:/workspaceSTM32/Testtesttest/Drivers" -I"D:/workspaceSTM32/Testtesttest" -I"D:/workspaceSTM32/Testtesttest/Drivers/STM32F0xx_HAL_Driver/Inc" -Os -g3 -Wall -fmessage-length=0 -Wno-strict-aliasing -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


