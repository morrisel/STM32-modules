################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/gpu/lv_gpu_nxp_pxp.c \
../lvgl/gpu/lv_gpu_nxp_pxp_osa.c \
../lvgl/gpu/lv_gpu_nxp_vglite.c \
../lvgl/gpu/lv_gpu_sdl.c \
../lvgl/gpu/lv_gpu_stm32_dma2d.c 

OBJS += \
./lvgl/gpu/lv_gpu_nxp_pxp.o \
./lvgl/gpu/lv_gpu_nxp_pxp_osa.o \
./lvgl/gpu/lv_gpu_nxp_vglite.o \
./lvgl/gpu/lv_gpu_sdl.o \
./lvgl/gpu/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./lvgl/gpu/lv_gpu_nxp_pxp.d \
./lvgl/gpu/lv_gpu_nxp_pxp_osa.d \
./lvgl/gpu/lv_gpu_nxp_vglite.d \
./lvgl/gpu/lv_gpu_sdl.d \
./lvgl/gpu/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/gpu/%.o lvgl/gpu/%.su lvgl/gpu/%.cyclo: ../lvgl/gpu/%.c lvgl/gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-gpu

clean-lvgl-2f-gpu:
	-$(RM) ./lvgl/gpu/lv_gpu_nxp_pxp.cyclo ./lvgl/gpu/lv_gpu_nxp_pxp.d ./lvgl/gpu/lv_gpu_nxp_pxp.o ./lvgl/gpu/lv_gpu_nxp_pxp.su ./lvgl/gpu/lv_gpu_nxp_pxp_osa.cyclo ./lvgl/gpu/lv_gpu_nxp_pxp_osa.d ./lvgl/gpu/lv_gpu_nxp_pxp_osa.o ./lvgl/gpu/lv_gpu_nxp_pxp_osa.su ./lvgl/gpu/lv_gpu_nxp_vglite.cyclo ./lvgl/gpu/lv_gpu_nxp_vglite.d ./lvgl/gpu/lv_gpu_nxp_vglite.o ./lvgl/gpu/lv_gpu_nxp_vglite.su ./lvgl/gpu/lv_gpu_sdl.cyclo ./lvgl/gpu/lv_gpu_sdl.d ./lvgl/gpu/lv_gpu_sdl.o ./lvgl/gpu/lv_gpu_sdl.su ./lvgl/gpu/lv_gpu_stm32_dma2d.cyclo ./lvgl/gpu/lv_gpu_stm32_dma2d.d ./lvgl/gpu/lv_gpu_stm32_dma2d.o ./lvgl/gpu/lv_gpu_stm32_dma2d.su

.PHONY: clean-lvgl-2f-gpu

