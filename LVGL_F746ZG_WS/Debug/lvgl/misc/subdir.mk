################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/misc/lv_anim.c \
../lvgl/misc/lv_anim_timeline.c \
../lvgl/misc/lv_area.c \
../lvgl/misc/lv_async.c \
../lvgl/misc/lv_bidi.c \
../lvgl/misc/lv_color.c \
../lvgl/misc/lv_fs.c \
../lvgl/misc/lv_gc.c \
../lvgl/misc/lv_ll.c \
../lvgl/misc/lv_log.c \
../lvgl/misc/lv_math.c \
../lvgl/misc/lv_mem.c \
../lvgl/misc/lv_printf.c \
../lvgl/misc/lv_style.c \
../lvgl/misc/lv_style_gen.c \
../lvgl/misc/lv_templ.c \
../lvgl/misc/lv_timer.c \
../lvgl/misc/lv_tlsf.c \
../lvgl/misc/lv_txt.c \
../lvgl/misc/lv_txt_ap.c \
../lvgl/misc/lv_utils.c 

OBJS += \
./lvgl/misc/lv_anim.o \
./lvgl/misc/lv_anim_timeline.o \
./lvgl/misc/lv_area.o \
./lvgl/misc/lv_async.o \
./lvgl/misc/lv_bidi.o \
./lvgl/misc/lv_color.o \
./lvgl/misc/lv_fs.o \
./lvgl/misc/lv_gc.o \
./lvgl/misc/lv_ll.o \
./lvgl/misc/lv_log.o \
./lvgl/misc/lv_math.o \
./lvgl/misc/lv_mem.o \
./lvgl/misc/lv_printf.o \
./lvgl/misc/lv_style.o \
./lvgl/misc/lv_style_gen.o \
./lvgl/misc/lv_templ.o \
./lvgl/misc/lv_timer.o \
./lvgl/misc/lv_tlsf.o \
./lvgl/misc/lv_txt.o \
./lvgl/misc/lv_txt_ap.o \
./lvgl/misc/lv_utils.o 

C_DEPS += \
./lvgl/misc/lv_anim.d \
./lvgl/misc/lv_anim_timeline.d \
./lvgl/misc/lv_area.d \
./lvgl/misc/lv_async.d \
./lvgl/misc/lv_bidi.d \
./lvgl/misc/lv_color.d \
./lvgl/misc/lv_fs.d \
./lvgl/misc/lv_gc.d \
./lvgl/misc/lv_ll.d \
./lvgl/misc/lv_log.d \
./lvgl/misc/lv_math.d \
./lvgl/misc/lv_mem.d \
./lvgl/misc/lv_printf.d \
./lvgl/misc/lv_style.d \
./lvgl/misc/lv_style_gen.d \
./lvgl/misc/lv_templ.d \
./lvgl/misc/lv_timer.d \
./lvgl/misc/lv_tlsf.d \
./lvgl/misc/lv_txt.d \
./lvgl/misc/lv_txt_ap.d \
./lvgl/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/misc/%.o lvgl/misc/%.su lvgl/misc/%.cyclo: ../lvgl/misc/%.c lvgl/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-misc

clean-lvgl-2f-misc:
	-$(RM) ./lvgl/misc/lv_anim.cyclo ./lvgl/misc/lv_anim.d ./lvgl/misc/lv_anim.o ./lvgl/misc/lv_anim.su ./lvgl/misc/lv_anim_timeline.cyclo ./lvgl/misc/lv_anim_timeline.d ./lvgl/misc/lv_anim_timeline.o ./lvgl/misc/lv_anim_timeline.su ./lvgl/misc/lv_area.cyclo ./lvgl/misc/lv_area.d ./lvgl/misc/lv_area.o ./lvgl/misc/lv_area.su ./lvgl/misc/lv_async.cyclo ./lvgl/misc/lv_async.d ./lvgl/misc/lv_async.o ./lvgl/misc/lv_async.su ./lvgl/misc/lv_bidi.cyclo ./lvgl/misc/lv_bidi.d ./lvgl/misc/lv_bidi.o ./lvgl/misc/lv_bidi.su ./lvgl/misc/lv_color.cyclo ./lvgl/misc/lv_color.d ./lvgl/misc/lv_color.o ./lvgl/misc/lv_color.su ./lvgl/misc/lv_fs.cyclo ./lvgl/misc/lv_fs.d ./lvgl/misc/lv_fs.o ./lvgl/misc/lv_fs.su ./lvgl/misc/lv_gc.cyclo ./lvgl/misc/lv_gc.d ./lvgl/misc/lv_gc.o ./lvgl/misc/lv_gc.su ./lvgl/misc/lv_ll.cyclo ./lvgl/misc/lv_ll.d ./lvgl/misc/lv_ll.o ./lvgl/misc/lv_ll.su ./lvgl/misc/lv_log.cyclo ./lvgl/misc/lv_log.d ./lvgl/misc/lv_log.o ./lvgl/misc/lv_log.su ./lvgl/misc/lv_math.cyclo ./lvgl/misc/lv_math.d ./lvgl/misc/lv_math.o ./lvgl/misc/lv_math.su ./lvgl/misc/lv_mem.cyclo ./lvgl/misc/lv_mem.d ./lvgl/misc/lv_mem.o ./lvgl/misc/lv_mem.su ./lvgl/misc/lv_printf.cyclo ./lvgl/misc/lv_printf.d ./lvgl/misc/lv_printf.o ./lvgl/misc/lv_printf.su ./lvgl/misc/lv_style.cyclo ./lvgl/misc/lv_style.d ./lvgl/misc/lv_style.o ./lvgl/misc/lv_style.su ./lvgl/misc/lv_style_gen.cyclo ./lvgl/misc/lv_style_gen.d ./lvgl/misc/lv_style_gen.o ./lvgl/misc/lv_style_gen.su ./lvgl/misc/lv_templ.cyclo ./lvgl/misc/lv_templ.d ./lvgl/misc/lv_templ.o ./lvgl/misc/lv_templ.su ./lvgl/misc/lv_timer.cyclo ./lvgl/misc/lv_timer.d ./lvgl/misc/lv_timer.o ./lvgl/misc/lv_timer.su ./lvgl/misc/lv_tlsf.cyclo ./lvgl/misc/lv_tlsf.d ./lvgl/misc/lv_tlsf.o ./lvgl/misc/lv_tlsf.su ./lvgl/misc/lv_txt.cyclo ./lvgl/misc/lv_txt.d ./lvgl/misc/lv_txt.o ./lvgl/misc/lv_txt.su ./lvgl/misc/lv_txt_ap.cyclo ./lvgl/misc/lv_txt_ap.d ./lvgl/misc/lv_txt_ap.o ./lvgl/misc/lv_txt_ap.su ./lvgl/misc/lv_utils.cyclo ./lvgl/misc/lv_utils.d ./lvgl/misc/lv_utils.o ./lvgl/misc/lv_utils.su

.PHONY: clean-lvgl-2f-misc

