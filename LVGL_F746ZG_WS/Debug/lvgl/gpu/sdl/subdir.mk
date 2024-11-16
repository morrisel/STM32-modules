################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.c \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.c \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_img.c \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_label.c \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_line.c \
../lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.c \
../lvgl/gpu/sdl/lv_gpu_sdl_lru.c \
../lvgl/gpu/sdl/lv_gpu_sdl_mask.c \
../lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.c \
../lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.c \
../lvgl/gpu/sdl/lv_gpu_sdl_utils.c 

OBJS += \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.o \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.o \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.o \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.o \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.o \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.o \
./lvgl/gpu/sdl/lv_gpu_sdl_lru.o \
./lvgl/gpu/sdl/lv_gpu_sdl_mask.o \
./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.o \
./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.o \
./lvgl/gpu/sdl/lv_gpu_sdl_utils.o 

C_DEPS += \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.d \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.d \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.d \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.d \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.d \
./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.d \
./lvgl/gpu/sdl/lv_gpu_sdl_lru.d \
./lvgl/gpu/sdl/lv_gpu_sdl_mask.d \
./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.d \
./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.d \
./lvgl/gpu/sdl/lv_gpu_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/gpu/sdl/%.o lvgl/gpu/sdl/%.su lvgl/gpu/sdl/%.cyclo: ../lvgl/gpu/sdl/%.c lvgl/gpu/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-gpu-2f-sdl

clean-lvgl-2f-gpu-2f-sdl:
	-$(RM) ./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_arc.su ./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_blend.su ./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_img.su ./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_label.su ./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_line.su ./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.d ./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.o ./lvgl/gpu/sdl/lv_gpu_sdl_draw_rect.su ./lvgl/gpu/sdl/lv_gpu_sdl_lru.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_lru.d ./lvgl/gpu/sdl/lv_gpu_sdl_lru.o ./lvgl/gpu/sdl/lv_gpu_sdl_lru.su ./lvgl/gpu/sdl/lv_gpu_sdl_mask.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_mask.d ./lvgl/gpu/sdl/lv_gpu_sdl_mask.o ./lvgl/gpu/sdl/lv_gpu_sdl_mask.su ./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.d ./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.o ./lvgl/gpu/sdl/lv_gpu_sdl_stack_blur.su ./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.d ./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.o ./lvgl/gpu/sdl/lv_gpu_sdl_texture_cache.su ./lvgl/gpu/sdl/lv_gpu_sdl_utils.cyclo ./lvgl/gpu/sdl/lv_gpu_sdl_utils.d ./lvgl/gpu/sdl/lv_gpu_sdl_utils.o ./lvgl/gpu/sdl/lv_gpu_sdl_utils.su

.PHONY: clean-lvgl-2f-gpu-2f-sdl

