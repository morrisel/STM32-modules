################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/led/lv_led.c 

OBJS += \
./lvgl/extra/widgets/led/lv_led.o 

C_DEPS += \
./lvgl/extra/widgets/led/lv_led.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/led/%.o lvgl/extra/widgets/led/%.su lvgl/extra/widgets/led/%.cyclo: ../lvgl/extra/widgets/led/%.c lvgl/extra/widgets/led/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-led

clean-lvgl-2f-extra-2f-widgets-2f-led:
	-$(RM) ./lvgl/extra/widgets/led/lv_led.cyclo ./lvgl/extra/widgets/led/lv_led.d ./lvgl/extra/widgets/led/lv_led.o ./lvgl/extra/widgets/led/lv_led.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-led

