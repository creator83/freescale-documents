################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/drivers/sai/sai.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/sai/sai.c \

OBJS += \
./Sources/drivers/sai/sai.obj \

C_DEPS += \
./Sources/drivers/sai/sai.d \

OBJS_QUOTED += \
"./Sources/drivers/sai/sai.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/sai/sai.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/sai/sai.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/sai/sai.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/sai/sai.args" -o "Sources/drivers/sai/sai.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/sai/sai.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/sai/sai.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


