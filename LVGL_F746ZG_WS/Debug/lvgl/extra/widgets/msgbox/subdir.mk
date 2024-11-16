################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/msgbox/lv_msgbox.c 

OBJS += \
./lvgl/extra/widgets/msgbox/lv_msgbox.o 

C_DEPS += \
./lvgl/extra/widgets/msgbox/lv_msgbox.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/msgbox/%.o lvgl/extra/widgets/msgbox/%.su lvgl/extra/widgets/msgbox/%.cyclo: ../lvgl/extra/widgets/msgbox/%.c lvgl/extra/widgets/msgbox/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-msgbox

clean-lvgl-2f-extra-2f-widgets-2f-msgbox:
	-$(RM) ./lvgl/extra/widgets/msgbox/lv_msgbox.cyclo ./lvgl/extra/widgets/msgbox/lv_msgbox.d ./lvgl/extra/widgets/msgbox/lv_msgbox.o ./lvgl/extra/widgets/msgbox/lv_msgbox.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-msgbox

