################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/libs/gif/gifdec.c \
../lvgl/extra/libs/gif/lv_gif.c 

OBJS += \
./lvgl/extra/libs/gif/gifdec.o \
./lvgl/extra/libs/gif/lv_gif.o 

C_DEPS += \
./lvgl/extra/libs/gif/gifdec.d \
./lvgl/extra/libs/gif/lv_gif.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/libs/gif/%.o lvgl/extra/libs/gif/%.su lvgl/extra/libs/gif/%.cyclo: ../lvgl/extra/libs/gif/%.c lvgl/extra/libs/gif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-libs-2f-gif

clean-lvgl-2f-extra-2f-libs-2f-gif:
	-$(RM) ./lvgl/extra/libs/gif/gifdec.cyclo ./lvgl/extra/libs/gif/gifdec.d ./lvgl/extra/libs/gif/gifdec.o ./lvgl/extra/libs/gif/gifdec.su ./lvgl/extra/libs/gif/lv_gif.cyclo ./lvgl/extra/libs/gif/lv_gif.d ./lvgl/extra/libs/gif/lv_gif.o ./lvgl/extra/libs/gif/lv_gif.su

.PHONY: clean-lvgl-2f-extra-2f-libs-2f-gif

