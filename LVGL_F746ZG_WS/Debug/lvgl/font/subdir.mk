################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/font/lv_font.c \
../lvgl/font/lv_font_dejavu_16_persian_hebrew.c \
../lvgl/font/lv_font_fmt_txt.c \
../lvgl/font/lv_font_loader.c \
../lvgl/font/lv_font_montserrat_10.c \
../lvgl/font/lv_font_montserrat_12.c \
../lvgl/font/lv_font_montserrat_12_subpx.c \
../lvgl/font/lv_font_montserrat_14.c \
../lvgl/font/lv_font_montserrat_16.c \
../lvgl/font/lv_font_montserrat_18.c \
../lvgl/font/lv_font_montserrat_20.c \
../lvgl/font/lv_font_montserrat_22.c \
../lvgl/font/lv_font_montserrat_24.c \
../lvgl/font/lv_font_montserrat_26.c \
../lvgl/font/lv_font_montserrat_28.c \
../lvgl/font/lv_font_montserrat_28_compressed.c \
../lvgl/font/lv_font_montserrat_30.c \
../lvgl/font/lv_font_montserrat_32.c \
../lvgl/font/lv_font_montserrat_34.c \
../lvgl/font/lv_font_montserrat_36.c \
../lvgl/font/lv_font_montserrat_38.c \
../lvgl/font/lv_font_montserrat_40.c \
../lvgl/font/lv_font_montserrat_42.c \
../lvgl/font/lv_font_montserrat_44.c \
../lvgl/font/lv_font_montserrat_46.c \
../lvgl/font/lv_font_montserrat_48.c \
../lvgl/font/lv_font_montserrat_8.c \
../lvgl/font/lv_font_simsun_16_cjk.c \
../lvgl/font/lv_font_unscii_16.c \
../lvgl/font/lv_font_unscii_8.c 

OBJS += \
./lvgl/font/lv_font.o \
./lvgl/font/lv_font_dejavu_16_persian_hebrew.o \
./lvgl/font/lv_font_fmt_txt.o \
./lvgl/font/lv_font_loader.o \
./lvgl/font/lv_font_montserrat_10.o \
./lvgl/font/lv_font_montserrat_12.o \
./lvgl/font/lv_font_montserrat_12_subpx.o \
./lvgl/font/lv_font_montserrat_14.o \
./lvgl/font/lv_font_montserrat_16.o \
./lvgl/font/lv_font_montserrat_18.o \
./lvgl/font/lv_font_montserrat_20.o \
./lvgl/font/lv_font_montserrat_22.o \
./lvgl/font/lv_font_montserrat_24.o \
./lvgl/font/lv_font_montserrat_26.o \
./lvgl/font/lv_font_montserrat_28.o \
./lvgl/font/lv_font_montserrat_28_compressed.o \
./lvgl/font/lv_font_montserrat_30.o \
./lvgl/font/lv_font_montserrat_32.o \
./lvgl/font/lv_font_montserrat_34.o \
./lvgl/font/lv_font_montserrat_36.o \
./lvgl/font/lv_font_montserrat_38.o \
./lvgl/font/lv_font_montserrat_40.o \
./lvgl/font/lv_font_montserrat_42.o \
./lvgl/font/lv_font_montserrat_44.o \
./lvgl/font/lv_font_montserrat_46.o \
./lvgl/font/lv_font_montserrat_48.o \
./lvgl/font/lv_font_montserrat_8.o \
./lvgl/font/lv_font_simsun_16_cjk.o \
./lvgl/font/lv_font_unscii_16.o \
./lvgl/font/lv_font_unscii_8.o 

C_DEPS += \
./lvgl/font/lv_font.d \
./lvgl/font/lv_font_dejavu_16_persian_hebrew.d \
./lvgl/font/lv_font_fmt_txt.d \
./lvgl/font/lv_font_loader.d \
./lvgl/font/lv_font_montserrat_10.d \
./lvgl/font/lv_font_montserrat_12.d \
./lvgl/font/lv_font_montserrat_12_subpx.d \
./lvgl/font/lv_font_montserrat_14.d \
./lvgl/font/lv_font_montserrat_16.d \
./lvgl/font/lv_font_montserrat_18.d \
./lvgl/font/lv_font_montserrat_20.d \
./lvgl/font/lv_font_montserrat_22.d \
./lvgl/font/lv_font_montserrat_24.d \
./lvgl/font/lv_font_montserrat_26.d \
./lvgl/font/lv_font_montserrat_28.d \
./lvgl/font/lv_font_montserrat_28_compressed.d \
./lvgl/font/lv_font_montserrat_30.d \
./lvgl/font/lv_font_montserrat_32.d \
./lvgl/font/lv_font_montserrat_34.d \
./lvgl/font/lv_font_montserrat_36.d \
./lvgl/font/lv_font_montserrat_38.d \
./lvgl/font/lv_font_montserrat_40.d \
./lvgl/font/lv_font_montserrat_42.d \
./lvgl/font/lv_font_montserrat_44.d \
./lvgl/font/lv_font_montserrat_46.d \
./lvgl/font/lv_font_montserrat_48.d \
./lvgl/font/lv_font_montserrat_8.d \
./lvgl/font/lv_font_simsun_16_cjk.d \
./lvgl/font/lv_font_unscii_16.d \
./lvgl/font/lv_font_unscii_8.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/font/%.o lvgl/font/%.su lvgl/font/%.cyclo: ../lvgl/font/%.c lvgl/font/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-font

clean-lvgl-2f-font:
	-$(RM) ./lvgl/font/lv_font.cyclo ./lvgl/font/lv_font.d ./lvgl/font/lv_font.o ./lvgl/font/lv_font.su ./lvgl/font/lv_font_dejavu_16_persian_hebrew.cyclo ./lvgl/font/lv_font_dejavu_16_persian_hebrew.d ./lvgl/font/lv_font_dejavu_16_persian_hebrew.o ./lvgl/font/lv_font_dejavu_16_persian_hebrew.su ./lvgl/font/lv_font_fmt_txt.cyclo ./lvgl/font/lv_font_fmt_txt.d ./lvgl/font/lv_font_fmt_txt.o ./lvgl/font/lv_font_fmt_txt.su ./lvgl/font/lv_font_loader.cyclo ./lvgl/font/lv_font_loader.d ./lvgl/font/lv_font_loader.o ./lvgl/font/lv_font_loader.su ./lvgl/font/lv_font_montserrat_10.cyclo ./lvgl/font/lv_font_montserrat_10.d ./lvgl/font/lv_font_montserrat_10.o ./lvgl/font/lv_font_montserrat_10.su ./lvgl/font/lv_font_montserrat_12.cyclo ./lvgl/font/lv_font_montserrat_12.d ./lvgl/font/lv_font_montserrat_12.o ./lvgl/font/lv_font_montserrat_12.su ./lvgl/font/lv_font_montserrat_12_subpx.cyclo ./lvgl/font/lv_font_montserrat_12_subpx.d ./lvgl/font/lv_font_montserrat_12_subpx.o ./lvgl/font/lv_font_montserrat_12_subpx.su ./lvgl/font/lv_font_montserrat_14.cyclo ./lvgl/font/lv_font_montserrat_14.d ./lvgl/font/lv_font_montserrat_14.o ./lvgl/font/lv_font_montserrat_14.su ./lvgl/font/lv_font_montserrat_16.cyclo ./lvgl/font/lv_font_montserrat_16.d ./lvgl/font/lv_font_montserrat_16.o ./lvgl/font/lv_font_montserrat_16.su ./lvgl/font/lv_font_montserrat_18.cyclo ./lvgl/font/lv_font_montserrat_18.d ./lvgl/font/lv_font_montserrat_18.o ./lvgl/font/lv_font_montserrat_18.su ./lvgl/font/lv_font_montserrat_20.cyclo ./lvgl/font/lv_font_montserrat_20.d ./lvgl/font/lv_font_montserrat_20.o ./lvgl/font/lv_font_montserrat_20.su ./lvgl/font/lv_font_montserrat_22.cyclo ./lvgl/font/lv_font_montserrat_22.d ./lvgl/font/lv_font_montserrat_22.o ./lvgl/font/lv_font_montserrat_22.su ./lvgl/font/lv_font_montserrat_24.cyclo ./lvgl/font/lv_font_montserrat_24.d ./lvgl/font/lv_font_montserrat_24.o ./lvgl/font/lv_font_montserrat_24.su ./lvgl/font/lv_font_montserrat_26.cyclo ./lvgl/font/lv_font_montserrat_26.d ./lvgl/font/lv_font_montserrat_26.o ./lvgl/font/lv_font_montserrat_26.su ./lvgl/font/lv_font_montserrat_28.cyclo ./lvgl/font/lv_font_montserrat_28.d ./lvgl/font/lv_font_montserrat_28.o ./lvgl/font/lv_font_montserrat_28.su ./lvgl/font/lv_font_montserrat_28_compressed.cyclo ./lvgl/font/lv_font_montserrat_28_compressed.d ./lvgl/font/lv_font_montserrat_28_compressed.o ./lvgl/font/lv_font_montserrat_28_compressed.su ./lvgl/font/lv_font_montserrat_30.cyclo ./lvgl/font/lv_font_montserrat_30.d ./lvgl/font/lv_font_montserrat_30.o ./lvgl/font/lv_font_montserrat_30.su ./lvgl/font/lv_font_montserrat_32.cyclo ./lvgl/font/lv_font_montserrat_32.d ./lvgl/font/lv_font_montserrat_32.o ./lvgl/font/lv_font_montserrat_32.su ./lvgl/font/lv_font_montserrat_34.cyclo ./lvgl/font/lv_font_montserrat_34.d ./lvgl/font/lv_font_montserrat_34.o ./lvgl/font/lv_font_montserrat_34.su ./lvgl/font/lv_font_montserrat_36.cyclo ./lvgl/font/lv_font_montserrat_36.d ./lvgl/font/lv_font_montserrat_36.o ./lvgl/font/lv_font_montserrat_36.su ./lvgl/font/lv_font_montserrat_38.cyclo ./lvgl/font/lv_font_montserrat_38.d ./lvgl/font/lv_font_montserrat_38.o ./lvgl/font/lv_font_montserrat_38.su ./lvgl/font/lv_font_montserrat_40.cyclo ./lvgl/font/lv_font_montserrat_40.d ./lvgl/font/lv_font_montserrat_40.o ./lvgl/font/lv_font_montserrat_40.su ./lvgl/font/lv_font_montserrat_42.cyclo ./lvgl/font/lv_font_montserrat_42.d ./lvgl/font/lv_font_montserrat_42.o ./lvgl/font/lv_font_montserrat_42.su ./lvgl/font/lv_font_montserrat_44.cyclo ./lvgl/font/lv_font_montserrat_44.d ./lvgl/font/lv_font_montserrat_44.o ./lvgl/font/lv_font_montserrat_44.su ./lvgl/font/lv_font_montserrat_46.cyclo ./lvgl/font/lv_font_montserrat_46.d ./lvgl/font/lv_font_montserrat_46.o ./lvgl/font/lv_font_montserrat_46.su ./lvgl/font/lv_font_montserrat_48.cyclo ./lvgl/font/lv_font_montserrat_48.d ./lvgl/font/lv_font_montserrat_48.o ./lvgl/font/lv_font_montserrat_48.su ./lvgl/font/lv_font_montserrat_8.cyclo ./lvgl/font/lv_font_montserrat_8.d ./lvgl/font/lv_font_montserrat_8.o ./lvgl/font/lv_font_montserrat_8.su ./lvgl/font/lv_font_simsun_16_cjk.cyclo ./lvgl/font/lv_font_simsun_16_cjk.d ./lvgl/font/lv_font_simsun_16_cjk.o ./lvgl/font/lv_font_simsun_16_cjk.su ./lvgl/font/lv_font_unscii_16.cyclo ./lvgl/font/lv_font_unscii_16.d ./lvgl/font/lv_font_unscii_16.o ./lvgl/font/lv_font_unscii_16.su ./lvgl/font/lv_font_unscii_8.cyclo ./lvgl/font/lv_font_unscii_8.d ./lvgl/font/lv_font_unscii_8.o ./lvgl/font/lv_font_unscii_8.su

.PHONY: clean-lvgl-2f-font

