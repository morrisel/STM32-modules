################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/spinner/lv_spinner.c 

OBJS += \
./lvgl/extra/widgets/spinner/lv_spinner.o 

C_DEPS += \
./lvgl/extra/widgets/spinner/lv_spinner.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/spinner/%.o lvgl/extra/widgets/spinner/%.su lvgl/extra/widgets/spinner/%.cyclo: ../lvgl/extra/widgets/spinner/%.c lvgl/extra/widgets/spinner/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-spinner

clean-lvgl-2f-extra-2f-widgets-2f-spinner:
	-$(RM) ./lvgl/extra/widgets/spinner/lv_spinner.cyclo ./lvgl/extra/widgets/spinner/lv_spinner.d ./lvgl/extra/widgets/spinner/lv_spinner.o ./lvgl/extra/widgets/spinner/lv_spinner.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-spinner

