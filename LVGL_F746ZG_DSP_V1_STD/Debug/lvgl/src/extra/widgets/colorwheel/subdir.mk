################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c 

OBJS += \
./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.o 

C_DEPS += \
./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/widgets/colorwheel/%.o lvgl/src/extra/widgets/colorwheel/%.su lvgl/src/extra/widgets/colorwheel/%.cyclo: ../lvgl/src/extra/widgets/colorwheel/%.c lvgl/src/extra/widgets/colorwheel/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-colorwheel

clean-lvgl-2f-src-2f-extra-2f-widgets-2f-colorwheel:
	-$(RM) ./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.cyclo ./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.d ./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.o ./lvgl/src/extra/widgets/colorwheel/lv_colorwheel.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-widgets-2f-colorwheel
