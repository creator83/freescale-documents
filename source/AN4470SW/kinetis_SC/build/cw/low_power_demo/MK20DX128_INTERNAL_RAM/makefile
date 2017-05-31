################################################################################
# Automatically-generated file. Do not edit!
################################################################################

first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(Gnu_Make_Install_DirEnv)/rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/semihosting/cw/subdir.mk
-include Sources/low_power_demo/subdir.mk
-include Sources/drivers/wdog/subdir.mk
-include Sources/drivers/uart/subdir.mk
-include Sources/drivers/smc/subdir.mk
-include Sources/drivers/sai/subdir.mk
-include Sources/drivers/rtc/subdir.mk
-include Sources/drivers/rcm/subdir.mk
-include Sources/drivers/pmc/subdir.mk
-include Sources/drivers/mcg/subdir.mk
-include Sources/drivers/lptmr/subdir.mk
-include Sources/drivers/llwu/subdir.mk
-include Sources/drivers/adc16/subdir.mk
-include Sources/cpu/subdir.mk
-include Sources/common/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
k20_low_power_demo.afx \

EXECUTABLES_QUOTED += \
"k20_low_power_demo.afx" \

EXECUTABLES_OS_FORMAT += \
k20_low_power_demo.afx \


# All Target
all: k20_low_power_demo.afx

# Tool invocations
k20_low_power_demo.afx: $(OBJS) $(LCF_BUILD_DEPENCENCY) $(USER_OBJS) $(LCF_SRCS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Linker'
	"$(ARM_ToolsDirEnv)/mwldarm" @@"k20_low_power_demo.args" -o "k20_low_power_demo.afx"  $(USER_OBJS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CXX_DEPS_QUOTED)$(OBJS)$(CXX_DEPS_OS_FORMAT)$(C_DEPS)$(CC_DEPS_OS_FORMAT)$(C_UPPER_DEPS_OS_FORMAT)$(EXECUTABLES_OS_FORMAT)$(CXX_DEPS)$(C++_DEPS)$(C_UPPER_DEPS_QUOTED)$(CC_DEPS)$(CPP_DEPS_OS_FORMAT)$(OBJS_QUOTED)$(CC_DEPS_QUOTED)$(CPP_DEPS_QUOTED)$(C++_DEPS_QUOTED)$(C_DEPS_OS_FORMAT)$(EXECUTABLES_QUOTED)$(CPP_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(OBJS_OS_FORMAT)$(C++_DEPS_OS_FORMAT)$(C_DEPS_QUOTED) k20_low_power_demo.afx
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
