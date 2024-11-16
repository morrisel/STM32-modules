################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/widgets/lv_arc.c \
../lvgl/widgets/lv_bar.c \
../lvgl/widgets/lv_btn.c \
../lvgl/widgets/lv_btnmatrix.c \
../lvgl/widgets/lv_canvas.c \
../lvgl/widgets/lv_checkbox.c \
../lvgl/widgets/lv_dropdown.c \
../lvgl/widgets/lv_img.c \
../lvgl/widgets/lv_label.c \
../lvgl/widgets/lv_line.c \
../lvgl/widgets/lv_objx_templ.c \
../lvgl/widgets/lv_roller.c \
../lvgl/widgets/lv_slider.c \
../lvgl/widgets/lv_switch.c \
../lvgl/widgets/lv_table.c \
../lvgl/widgets/lv_textarea.c 

OBJS += \
./lvgl/widgets/lv_arc.o \
./lvgl/widgets/lv_bar.o \
./lvgl/widgets/lv_btn.o \
./lvgl/widgets/lv_btnmatrix.o \
./lvgl/widgets/lv_canvas.o \
./lvgl/widgets/lv_checkbox.o \
./lvgl/widgets/lv_dropdown.o \
./lvgl/widgets/lv_img.o \
./lvgl/widgets/lv_label.o \
./lvgl/widgets/lv_line.o \
./lvgl/widgets/lv_objx_templ.o \
./lvgl/widgets/lv_roller.o \
./lvgl/widgets/lv_slider.o \
./lvgl/widgets/lv_switch.o \
./lvgl/widgets/lv_table.o \
./lvgl/widgets/lv_textarea.o 

C_DEPS += \
./lvgl/widgets/lv_arc.d \
./lvgl/widgets/lv_bar.d \
./lvgl/widgets/lv_btn.d \
./lvgl/widgets/lv_btnmatrix.d \
./lvgl/widgets/lv_canvas.d \
./lvgl/widgets/lv_checkbox.d \
./lvgl/widgets/lv_dropdown.d \
./lvgl/widgets/lv_img.d \
./lvgl/widgets/lv_label.d \
./lvgl/widgets/lv_line.d \
./lvgl/widgets/lv_objx_templ.d \
./lvgl/widgets/lv_roller.d \
./lvgl/widgets/lv_slider.d \
./lvgl/widgets/lv_switch.d \
./lvgl/widgets/lv_table.d \
./lvgl/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/widgets/%.o lvgl/widgets/%.su lvgl/widgets/%.cyclo: ../lvgl/widgets/%.c lvgl/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-widgets

clean-lvgl-2f-widgets:
	-$(RM) ./lvgl/widgets/lv_arc.cyclo ./lvgl/widgets/lv_arc.d ./lvgl/widgets/lv_arc.o ./lvgl/widgets/lv_arc.su ./lvgl/widgets/lv_bar.cyclo ./lvgl/widgets/lv_bar.d ./lvgl/widgets/lv_bar.o ./lvgl/widgets/lv_bar.su ./lvgl/widgets/lv_btn.cyclo ./lvgl/widgets/lv_btn.d ./lvgl/widgets/lv_btn.o ./lvgl/widgets/lv_btn.su ./lvgl/widgets/lv_btnmatrix.cyclo ./lvgl/widgets/lv_btnmatrix.d ./lvgl/widgets/lv_btnmatrix.o ./lvgl/widgets/lv_btnmatrix.su ./lvgl/widgets/lv_canvas.cyclo ./lvgl/widgets/lv_canvas.d ./lvgl/widgets/lv_canvas.o ./lvgl/widgets/lv_canvas.su ./lvgl/widgets/lv_checkbox.cyclo ./lvgl/widgets/lv_checkbox.d ./lvgl/widgets/lv_checkbox.o ./lvgl/widgets/lv_checkbox.su ./lvgl/widgets/lv_dropdown.cyclo ./lvgl/widgets/lv_dropdown.d ./lvgl/widgets/lv_dropdown.o ./lvgl/widgets/lv_dropdown.su ./lvgl/widgets/lv_img.cyclo ./lvgl/widgets/lv_img.d ./lvgl/widgets/lv_img.o ./lvgl/widgets/lv_img.su ./lvgl/widgets/lv_label.cyclo ./lvgl/widgets/lv_label.d ./lvgl/widgets/lv_label.o ./lvgl/widgets/lv_label.su ./lvgl/widgets/lv_line.cyclo ./lvgl/widgets/lv_line.d ./lvgl/widgets/lv_line.o ./lvgl/widgets/lv_line.su ./lvgl/widgets/lv_objx_templ.cyclo ./lvgl/widgets/lv_objx_templ.d ./lvgl/widgets/lv_objx_templ.o ./lvgl/widgets/lv_objx_templ.su ./lvgl/widgets/lv_roller.cyclo ./lvgl/widgets/lv_roller.d ./lvgl/widgets/lv_roller.o ./lvgl/widgets/lv_roller.su ./lvgl/widgets/lv_slider.cyclo ./lvgl/widgets/lv_slider.d ./lvgl/widgets/lv_slider.o ./lvgl/widgets/lv_slider.su ./lvgl/widgets/lv_switch.cyclo ./lvgl/widgets/lv_switch.d ./lvgl/widgets/lv_switch.o ./lvgl/widgets/lv_switch.su ./lvgl/widgets/lv_table.cyclo ./lvgl/widgets/lv_table.d ./lvgl/widgets/lv_table.o ./lvgl/widgets/lv_table.su ./lvgl/widgets/lv_textarea.cyclo ./lvgl/widgets/lv_textarea.d ./lvgl/widgets/lv_textarea.o ./lvgl/widgets/lv_textarea.su

.PHONY: clean-lvgl-2f-widgets

