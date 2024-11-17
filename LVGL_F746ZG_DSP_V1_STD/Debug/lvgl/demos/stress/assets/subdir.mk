################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.c \
../lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.c \
../lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.c 

OBJS += \
./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.o \
./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.o \
./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.o 

C_DEPS += \
./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.d \
./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.d \
./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/demos/stress/assets/%.o lvgl/demos/stress/assets/%.su lvgl/demos/stress/assets/%.cyclo: ../lvgl/demos/stress/assets/%.c lvgl/demos/stress/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-demos-2f-stress-2f-assets

clean-lvgl-2f-demos-2f-stress-2f-assets:
	-$(RM) ./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.cyclo ./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.d ./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.o ./lvgl/demos/stress/assets/lv_font_montserrat_12_compr_az.su ./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.cyclo ./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.d ./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.o ./lvgl/demos/stress/assets/lv_font_montserrat_16_compr_az.su ./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.cyclo ./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.d ./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.o ./lvgl/demos/stress/assets/lv_font_montserrat_28_compr_az.su

.PHONY: clean-lvgl-2f-demos-2f-stress-2f-assets

