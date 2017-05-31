################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/drivers/mcg/mcg.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/drivers/mcg/mcg_ram.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg_ram.c \

OBJS += \
./Sources/drivers/mcg/mcg.obj \
./Sources/drivers/mcg/mcg_ram.obj \

C_DEPS += \
./Sources/drivers/mcg/mcg.d \
./Sources/drivers/mcg/mcg_ram.d \

OBJS_QUOTED += \
"./Sources/drivers/mcg/mcg.obj" \
"./Sources/drivers/mcg/mcg_ram.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/mcg/mcg.obj \
./Sources/drivers/mcg/mcg_ram.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/mcg/mcg.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/mcg/mcg.args" -o "Sources/drivers/mcg/mcg.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/mcg/mcg.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/drivers/mcg/mcg_ram.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg_ram.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/mcg/mcg_ram.args" -o "Sources/drivers/mcg/mcg_ram.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/mcg/mcg_ram.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/mcg/mcg_ram.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


