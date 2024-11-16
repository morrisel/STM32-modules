################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/extra/libs/fsdrv/lv_fs_fatfs.c \
../lvgl/extra/libs/fsdrv/lv_fs_posix.c \
../lvgl/extra/libs/fsdrv/lv_fs_stdio.c \
../lvgl/extra/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./lvgl/extra/libs/fsdrv/lv_fs_fatfs.o \
./lvgl/extra/libs/fsdrv/lv_fs_posix.o \
./lvgl/extra/libs/fsdrv/lv_fs_stdio.o \
./lvgl/extra/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./lvgl/extra/libs/fsdrv/lv_fs_fatfs.d \
./lvgl/extra/libs/fsdrv/lv_fs_posix.d \
./lvgl/extra/libs/fsdrv/lv_fs_stdio.d \
./lvgl/extra/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/extra/libs/fsdrv/%.o lvgl/extra/libs/fsdrv/%.su lvgl/extra/libs/fsdrv/%.cyclo: ../lvgl/extra/libs/fsdrv/%.c lvgl/extra/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-extra-2f-libs-2f-fsdrv

clean-lvgl-2f-extra-2f-libs-2f-fsdrv:
	-$(RM) ./lvgl/extra/libs/fsdrv/lv_fs_fatfs.cyclo ./lvgl/extra/libs/fsdrv/lv_fs_fatfs.d ./lvgl/extra/libs/fsdrv/lv_fs_fatfs.o ./lvgl/extra/libs/fsdrv/lv_fs_fatfs.su ./lvgl/extra/libs/fsdrv/lv_fs_posix.cyclo ./lvgl/extra/libs/fsdrv/lv_fs_posix.d ./lvgl/extra/libs/fsdrv/lv_fs_posix.o ./lvgl/extra/libs/fsdrv/lv_fs_posix.su ./lvgl/extra/libs/fsdrv/lv_fs_stdio.cyclo ./lvgl/extra/libs/fsdrv/lv_fs_stdio.d ./lvgl/extra/libs/fsdrv/lv_fs_stdio.o ./lvgl/extra/libs/fsdrv/lv_fs_stdio.su ./lvgl/extra/libs/fsdrv/lv_fs_win32.cyclo ./lvgl/extra/libs/fsdrv/lv_fs_win32.d ./lvgl/extra/libs/fsdrv/lv_fs_win32.o ./lvgl/extra/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-lvgl-2f-extra-2f-libs-2f-fsdrv

