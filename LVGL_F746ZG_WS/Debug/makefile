################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include lvgl/widgets/subdir.mk
-include lvgl/misc/subdir.mk
-include lvgl/hal/subdir.mk
-include lvgl/gpu/sdl/subdir.mk
-include lvgl/gpu/subdir.mk
-include lvgl/font/subdir.mk
-include lvgl/extra/widgets/win/subdir.mk
-include lvgl/extra/widgets/tileview/subdir.mk
-include lvgl/extra/widgets/tabview/subdir.mk
-include lvgl/extra/widgets/spinner/subdir.mk
-include lvgl/extra/widgets/spinbox/subdir.mk
-include lvgl/extra/widgets/span/subdir.mk
-include lvgl/extra/widgets/msgbox/subdir.mk
-include lvgl/extra/widgets/meter/subdir.mk
-include lvgl/extra/widgets/list/subdir.mk
-include lvgl/extra/widgets/led/subdir.mk
-include lvgl/extra/widgets/keyboard/subdir.mk
-include lvgl/extra/widgets/imgbtn/subdir.mk
-include lvgl/extra/widgets/colorwheel/subdir.mk
-include lvgl/extra/widgets/chart/subdir.mk
-include lvgl/extra/widgets/calendar/subdir.mk
-include lvgl/extra/widgets/animimg/subdir.mk
-include lvgl/extra/themes/mono/subdir.mk
-include lvgl/extra/themes/default/subdir.mk
-include lvgl/extra/themes/basic/subdir.mk
-include lvgl/extra/others/snapshot/subdir.mk
-include lvgl/extra/libs/sjpg/subdir.mk
-include lvgl/extra/libs/rlottie/subdir.mk
-include lvgl/extra/libs/qrcode/subdir.mk
-include lvgl/extra/libs/png/subdir.mk
-include lvgl/extra/libs/gif/subdir.mk
-include lvgl/extra/libs/fsdrv/subdir.mk
-include lvgl/extra/libs/freetype/subdir.mk
-include lvgl/extra/libs/bmp/subdir.mk
-include lvgl/extra/layouts/grid/subdir.mk
-include lvgl/extra/layouts/flex/subdir.mk
-include lvgl/extra/subdir.mk
-include lvgl/draw/subdir.mk
-include lvgl/core/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := LVGL_F746ZG_WS
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
LVGL_F746ZG_WS.elf \

MAP_FILES += \
LVGL_F746ZG_WS.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
LVGL_F746ZG_WS.list \


# All Target
all: main-build

# Main-build Target
main-build: LVGL_F746ZG_WS.elf secondary-outputs

# Tool invocations
LVGL_F746ZG_WS.elf LVGL_F746ZG_WS.map: $(OBJS) $(USER_OBJS) /home/go/STM32CubeIDE/EmbeddedEdu/LVGL_F746ZG_WS/STM32F746ZGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "LVGL_F746ZG_WS.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"/home/go/STM32CubeIDE/EmbeddedEdu/LVGL_F746ZG_WS/STM32F746ZGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="LVGL_F746ZG_WS.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

LVGL_F746ZG_WS.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "LVGL_F746ZG_WS.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) LVGL_F746ZG_WS.elf LVGL_F746ZG_WS.list LVGL_F746ZG_WS.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
