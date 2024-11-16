################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/span/lv_span.c 

OBJS += \
./lvgl/extra/widgets/span/lv_span.o 

C_DEPS += \
./lvgl/extra/widgets/span/lv_span.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/span/%.o lvgl/extra/widgets/span/%.su lvgl/extra/widgets/span/%.cyclo: ../lvgl/extra/widgets/span/%.c lvgl/extra/widgets/span/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-span

clean-lvgl-2f-extra-2f-widgets-2f-span:
	-$(RM) ./lvgl/extra/widgets/span/lv_span.cyclo ./lvgl/extra/widgets/span/lv_span.d ./lvgl/extra/widgets/span/lv_span.o ./lvgl/extra/widgets/span/lv_span.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-span

