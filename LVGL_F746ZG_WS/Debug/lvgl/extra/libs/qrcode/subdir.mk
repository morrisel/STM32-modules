################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/libs/qrcode/lv_qrcode.c \
../lvgl/extra/libs/qrcode/qrcodegen.c 

OBJS += \
./lvgl/extra/libs/qrcode/lv_qrcode.o \
./lvgl/extra/libs/qrcode/qrcodegen.o 

C_DEPS += \
./lvgl/extra/libs/qrcode/lv_qrcode.d \
./lvgl/extra/libs/qrcode/qrcodegen.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/libs/qrcode/%.o lvgl/extra/libs/qrcode/%.su lvgl/extra/libs/qrcode/%.cyclo: ../lvgl/extra/libs/qrcode/%.c lvgl/extra/libs/qrcode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-libs-2f-qrcode

clean-lvgl-2f-extra-2f-libs-2f-qrcode:
	-$(RM) ./lvgl/extra/libs/qrcode/lv_qrcode.cyclo ./lvgl/extra/libs/qrcode/lv_qrcode.d ./lvgl/extra/libs/qrcode/lv_qrcode.o ./lvgl/extra/libs/qrcode/lv_qrcode.su ./lvgl/extra/libs/qrcode/qrcodegen.cyclo ./lvgl/extra/libs/qrcode/qrcodegen.d ./lvgl/extra/libs/qrcode/qrcodegen.o ./lvgl/extra/libs/qrcode/qrcodegen.su

.PHONY: clean-lvgl-2f-extra-2f-libs-2f-qrcode

