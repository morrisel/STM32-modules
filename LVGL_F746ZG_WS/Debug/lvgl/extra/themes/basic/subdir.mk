################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/themes/basic/lv_theme_basic.c 

OBJS += \
./lvgl/extra/themes/basic/lv_theme_basic.o 

C_DEPS += \
./lvgl/extra/themes/basic/lv_theme_basic.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/themes/basic/%.o lvgl/extra/themes/basic/%.su lvgl/extra/themes/basic/%.cyclo: ../lvgl/extra/themes/basic/%.c lvgl/extra/themes/basic/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-themes-2f-basic

clean-lvgl-2f-extra-2f-themes-2f-basic:
	-$(RM) ./lvgl/extra/themes/basic/lv_theme_basic.cyclo ./lvgl/extra/themes/basic/lv_theme_basic.d ./lvgl/extra/themes/basic/lv_theme_basic.o ./lvgl/extra/themes/basic/lv_theme_basic.su

.PHONY: clean-lvgl-2f-extra-2f-themes-2f-basic

