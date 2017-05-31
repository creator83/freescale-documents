################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/projects/low_power_demo/low_power_demo.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/projects/low_power_demo/low_power_demo.c \

OBJS += \
./Sources/low_power_demo/low_power_demo.obj \

C_DEPS += \
./Sources/low_power_demo/low_power_demo.d \

OBJS_QUOTED += \
"./Sources/low_power_demo/low_power_demo.obj" \

OBJS_OS_FORMAT += \
./Sources/low_power_demo/low_power_demo.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/low_power_demo/low_power_demo.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/projects/low_power_demo/low_power_demo.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/low_power_demo/low_power_demo.args" -o "Sources/low_power_demo/low_power_demo.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/low_power_demo/low_power_demo.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/projects/low_power_demo/low_power_demo.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


