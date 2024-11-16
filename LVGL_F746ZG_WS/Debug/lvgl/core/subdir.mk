################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/core/lv_disp.c \
../lvgl/core/lv_event.c \
../lvgl/core/lv_group.c \
../lvgl/core/lv_indev.c \
../lvgl/core/lv_indev_scroll.c \
../lvgl/core/lv_obj.c \
../lvgl/core/lv_obj_class.c \
../lvgl/core/lv_obj_draw.c \
../lvgl/core/lv_obj_pos.c \
../lvgl/core/lv_obj_scroll.c \
../lvgl/core/lv_obj_style.c \
../lvgl/core/lv_obj_style_gen.c \
../lvgl/core/lv_obj_tree.c \
../lvgl/core/lv_refr.c \
../lvgl/core/lv_theme.c 

OBJS += \
./lvgl/core/lv_disp.o \
./lvgl/core/lv_event.o \
./lvgl/core/lv_group.o \
./lvgl/core/lv_indev.o \
./lvgl/core/lv_indev_scroll.o \
./lvgl/core/lv_obj.o \
./lvgl/core/lv_obj_class.o \
./lvgl/core/lv_obj_draw.o \
./lvgl/core/lv_obj_pos.o \
./lvgl/core/lv_obj_scroll.o \
./lvgl/core/lv_obj_style.o \
./lvgl/core/lv_obj_style_gen.o \
./lvgl/core/lv_obj_tree.o \
./lvgl/core/lv_refr.o \
./lvgl/core/lv_theme.o 

C_DEPS += \
./lvgl/core/lv_disp.d \
./lvgl/core/lv_event.d \
./lvgl/core/lv_group.d \
./lvgl/core/lv_indev.d \
./lvgl/core/lv_indev_scroll.d \
./lvgl/core/lv_obj.d \
./lvgl/core/lv_obj_class.d \
./lvgl/core/lv_obj_draw.d \
./lvgl/core/lv_obj_pos.d \
./lvgl/core/lv_obj_scroll.d \
./lvgl/core/lv_obj_style.d \
./lvgl/core/lv_obj_style_gen.d \
./lvgl/core/lv_obj_tree.d \
./lvgl/core/lv_refr.d \
./lvgl/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/core/%.o lvgl/core/%.su lvgl/core/%.cyclo: ../lvgl/core/%.c lvgl/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-core

clean-lvgl-2f-core:
	-$(RM) ./lvgl/core/lv_disp.cyclo ./lvgl/core/lv_disp.d ./lvgl/core/lv_disp.o ./lvgl/core/lv_disp.su ./lvgl/core/lv_event.cyclo ./lvgl/core/lv_event.d ./lvgl/core/lv_event.o ./lvgl/core/lv_event.su ./lvgl/core/lv_group.cyclo ./lvgl/core/lv_group.d ./lvgl/core/lv_group.o ./lvgl/core/lv_group.su ./lvgl/core/lv_indev.cyclo ./lvgl/core/lv_indev.d ./lvgl/core/lv_indev.o ./lvgl/core/lv_indev.su ./lvgl/core/lv_indev_scroll.cyclo ./lvgl/core/lv_indev_scroll.d ./lvgl/core/lv_indev_scroll.o ./lvgl/core/lv_indev_scroll.su ./lvgl/core/lv_obj.cyclo ./lvgl/core/lv_obj.d ./lvgl/core/lv_obj.o ./lvgl/core/lv_obj.su ./lvgl/core/lv_obj_class.cyclo ./lvgl/core/lv_obj_class.d ./lvgl/core/lv_obj_class.o ./lvgl/core/lv_obj_class.su ./lvgl/core/lv_obj_draw.cyclo ./lvgl/core/lv_obj_draw.d ./lvgl/core/lv_obj_draw.o ./lvgl/core/lv_obj_draw.su ./lvgl/core/lv_obj_pos.cyclo ./lvgl/core/lv_obj_pos.d ./lvgl/core/lv_obj_pos.o ./lvgl/core/lv_obj_pos.su ./lvgl/core/lv_obj_scroll.cyclo ./lvgl/core/lv_obj_scroll.d ./lvgl/core/lv_obj_scroll.o ./lvgl/core/lv_obj_scroll.su ./lvgl/core/lv_obj_style.cyclo ./lvgl/core/lv_obj_style.d ./lvgl/core/lv_obj_style.o ./lvgl/core/lv_obj_style.su ./lvgl/core/lv_obj_style_gen.cyclo ./lvgl/core/lv_obj_style_gen.d ./lvgl/core/lv_obj_style_gen.o ./lvgl/core/lv_obj_style_gen.su ./lvgl/core/lv_obj_tree.cyclo ./lvgl/core/lv_obj_tree.d ./lvgl/core/lv_obj_tree.o ./lvgl/core/lv_obj_tree.su ./lvgl/core/lv_refr.cyclo ./lvgl/core/lv_refr.d ./lvgl/core/lv_refr.o ./lvgl/core/lv_refr.su ./lvgl/core/lv_theme.cyclo ./lvgl/core/lv_theme.d ./lvgl/core/lv_theme.o ./lvgl/core/lv_theme.su

.PHONY: clean-lvgl-2f-core

