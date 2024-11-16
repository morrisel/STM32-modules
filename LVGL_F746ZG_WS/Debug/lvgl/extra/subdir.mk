################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/lv_extra.c 

OBJS += \
./lvgl/extra/lv_extra.o 

C_DEPS += \
./lvgl/extra/lv_extra.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/%.o lvgl/extra/%.su lvgl/extra/%.cyclo: ../lvgl/extra/%.c lvgl/extra/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra

clean-lvgl-2f-extra:
	-$(RM) ./lvgl/extra/lv_extra.cyclo ./lvgl/extra/lv_extra.d ./lvgl/extra/lv_extra.o ./lvgl/extra/lv_extra.su

.PHONY: clean-lvgl-2f-extra

