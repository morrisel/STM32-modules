################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/libs/png/lodepng.c \
../lvgl/extra/libs/png/lv_png.c 

OBJS += \
./lvgl/extra/libs/png/lodepng.o \
./lvgl/extra/libs/png/lv_png.o 

C_DEPS += \
./lvgl/extra/libs/png/lodepng.d \
./lvgl/extra/libs/png/lv_png.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/libs/png/%.o lvgl/extra/libs/png/%.su lvgl/extra/libs/png/%.cyclo: ../lvgl/extra/libs/png/%.c lvgl/extra/libs/png/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-libs-2f-png

clean-lvgl-2f-extra-2f-libs-2f-png:
	-$(RM) ./lvgl/extra/libs/png/lodepng.cyclo ./lvgl/extra/libs/png/lodepng.d ./lvgl/extra/libs/png/lodepng.o ./lvgl/extra/libs/png/lodepng.su ./lvgl/extra/libs/png/lv_png.cyclo ./lvgl/extra/libs/png/lv_png.d ./lvgl/extra/libs/png/lv_png.o ./lvgl/extra/libs/png/lv_png.su

.PHONY: clean-lvgl-2f-extra-2f-libs-2f-png

