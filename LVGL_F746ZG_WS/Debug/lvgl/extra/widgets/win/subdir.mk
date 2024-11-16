################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/win/lv_win.c 

OBJS += \
./lvgl/extra/widgets/win/lv_win.o 

C_DEPS += \
./lvgl/extra/widgets/win/lv_win.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/win/%.o lvgl/extra/widgets/win/%.su lvgl/extra/widgets/win/%.cyclo: ../lvgl/extra/widgets/win/%.c lvgl/extra/widgets/win/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-win

clean-lvgl-2f-extra-2f-widgets-2f-win:
	-$(RM) ./lvgl/extra/widgets/win/lv_win.cyclo ./lvgl/extra/widgets/win/lv_win.d ./lvgl/extra/widgets/win/lv_win.o ./lvgl/extra/widgets/win/lv_win.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-win

