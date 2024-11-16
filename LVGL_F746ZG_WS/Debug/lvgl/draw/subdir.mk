################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/draw/lv_draw_arc.c \
../lvgl/draw/lv_draw_blend.c \
../lvgl/draw/lv_draw_img.c \
../lvgl/draw/lv_draw_label.c \
../lvgl/draw/lv_draw_line.c \
../lvgl/draw/lv_draw_mask.c \
../lvgl/draw/lv_draw_rect.c \
../lvgl/draw/lv_draw_triangle.c \
../lvgl/draw/lv_img_buf.c \
../lvgl/draw/lv_img_cache.c \
../lvgl/draw/lv_img_decoder.c 

OBJS += \
./lvgl/draw/lv_draw_arc.o \
./lvgl/draw/lv_draw_blend.o \
./lvgl/draw/lv_draw_img.o \
./lvgl/draw/lv_draw_label.o \
./lvgl/draw/lv_draw_line.o \
./lvgl/draw/lv_draw_mask.o \
./lvgl/draw/lv_draw_rect.o \
./lvgl/draw/lv_draw_triangle.o \
./lvgl/draw/lv_img_buf.o \
./lvgl/draw/lv_img_cache.o \
./lvgl/draw/lv_img_decoder.o 

C_DEPS += \
./lvgl/draw/lv_draw_arc.d \
./lvgl/draw/lv_draw_blend.d \
./lvgl/draw/lv_draw_img.d \
./lvgl/draw/lv_draw_label.d \
./lvgl/draw/lv_draw_line.d \
./lvgl/draw/lv_draw_mask.d \
./lvgl/draw/lv_draw_rect.d \
./lvgl/draw/lv_draw_triangle.d \
./lvgl/draw/lv_img_buf.d \
./lvgl/draw/lv_img_cache.d \
./lvgl/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/draw/%.o lvgl/draw/%.su lvgl/draw/%.cyclo: ../lvgl/draw/%.c lvgl/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-draw

clean-lvgl-2f-draw:
	-$(RM) ./lvgl/draw/lv_draw_arc.cyclo ./lvgl/draw/lv_draw_arc.d ./lvgl/draw/lv_draw_arc.o ./lvgl/draw/lv_draw_arc.su ./lvgl/draw/lv_draw_blend.cyclo ./lvgl/draw/lv_draw_blend.d ./lvgl/draw/lv_draw_blend.o ./lvgl/draw/lv_draw_blend.su ./lvgl/draw/lv_draw_img.cyclo ./lvgl/draw/lv_draw_img.d ./lvgl/draw/lv_draw_img.o ./lvgl/draw/lv_draw_img.su ./lvgl/draw/lv_draw_label.cyclo ./lvgl/draw/lv_draw_label.d ./lvgl/draw/lv_draw_label.o ./lvgl/draw/lv_draw_label.su ./lvgl/draw/lv_draw_line.cyclo ./lvgl/draw/lv_draw_line.d ./lvgl/draw/lv_draw_line.o ./lvgl/draw/lv_draw_line.su ./lvgl/draw/lv_draw_mask.cyclo ./lvgl/draw/lv_draw_mask.d ./lvgl/draw/lv_draw_mask.o ./lvgl/draw/lv_draw_mask.su ./lvgl/draw/lv_draw_rect.cyclo ./lvgl/draw/lv_draw_rect.d ./lvgl/draw/lv_draw_rect.o ./lvgl/draw/lv_draw_rect.su ./lvgl/draw/lv_draw_triangle.cyclo ./lvgl/draw/lv_draw_triangle.d ./lvgl/draw/lv_draw_triangle.o ./lvgl/draw/lv_draw_triangle.su ./lvgl/draw/lv_img_buf.cyclo ./lvgl/draw/lv_img_buf.d ./lvgl/draw/lv_img_buf.o ./lvgl/draw/lv_img_buf.su ./lvgl/draw/lv_img_cache.cyclo ./lvgl/draw/lv_img_cache.d ./lvgl/draw/lv_img_cache.o ./lvgl/draw/lv_img_cache.su ./lvgl/draw/lv_img_decoder.cyclo ./lvgl/draw/lv_img_decoder.d ./lvgl/draw/lv_img_decoder.o ./lvgl/draw/lv_img_decoder.su

.PHONY: clean-lvgl-2f-draw

