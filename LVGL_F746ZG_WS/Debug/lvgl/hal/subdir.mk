################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/hal/lv_hal_disp.c \
../lvgl/hal/lv_hal_indev.c \
../lvgl/hal/lv_hal_tick.c 

OBJS += \
./lvgl/hal/lv_hal_disp.o \
./lvgl/hal/lv_hal_indev.o \
./lvgl/hal/lv_hal_tick.o 

C_DEPS += \
./lvgl/hal/lv_hal_disp.d \
./lvgl/hal/lv_hal_indev.d \
./lvgl/hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/hal/%.o lvgl/hal/%.su lvgl/hal/%.cyclo: ../lvgl/hal/%.c lvgl/hal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-hal

clean-lvgl-2f-hal:
	-$(RM) ./lvgl/hal/lv_hal_disp.cyclo ./lvgl/hal/lv_hal_disp.d ./lvgl/hal/lv_hal_disp.o ./lvgl/hal/lv_hal_disp.su ./lvgl/hal/lv_hal_indev.cyclo ./lvgl/hal/lv_hal_indev.d ./lvgl/hal/lv_hal_indev.o ./lvgl/hal/lv_hal_indev.su ./lvgl/hal/lv_hal_tick.cyclo ./lvgl/hal/lv_hal_tick.d ./lvgl/hal/lv_hal_tick.o ./lvgl/hal/lv_hal_tick.su

.PHONY: clean-lvgl-2f-hal

