################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/themes/default/lv_theme_default.c 

OBJS += \
./lvgl/extra/themes/default/lv_theme_default.o 

C_DEPS += \
./lvgl/extra/themes/default/lv_theme_default.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/themes/default/%.o lvgl/extra/themes/default/%.su lvgl/extra/themes/default/%.cyclo: ../lvgl/extra/themes/default/%.c lvgl/extra/themes/default/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-themes-2f-default

clean-lvgl-2f-extra-2f-themes-2f-default:
	-$(RM) ./lvgl/extra/themes/default/lv_theme_default.cyclo ./lvgl/extra/themes/default/lv_theme_default.d ./lvgl/extra/themes/default/lv_theme_default.o ./lvgl/extra/themes/default/lv_theme_default.su

.PHONY: clean-lvgl-2f-extra-2f-themes-2f-default
