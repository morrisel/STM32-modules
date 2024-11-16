################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/widgets/animimg/lv_animimg.c 

OBJS += \
./lvgl/extra/widgets/animimg/lv_animimg.o 

C_DEPS += \
./lvgl/extra/widgets/animimg/lv_animimg.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/widgets/animimg/%.o lvgl/extra/widgets/animimg/%.su lvgl/extra/widgets/animimg/%.cyclo: ../lvgl/extra/widgets/animimg/%.c lvgl/extra/widgets/animimg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-widgets-2f-animimg

clean-lvgl-2f-extra-2f-widgets-2f-animimg:
	-$(RM) ./lvgl/extra/widgets/animimg/lv_animimg.cyclo ./lvgl/extra/widgets/animimg/lv_animimg.d ./lvgl/extra/widgets/animimg/lv_animimg.o ./lvgl/extra/widgets/animimg/lv_animimg.su

.PHONY: clean-lvgl-2f-extra-2f-widgets-2f-animimg

