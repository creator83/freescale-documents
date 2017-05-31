################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/drivers/lptmr/lptmr.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/lptmr/lptmr.c \

OBJS += \
./Sources/drivers/lptmr/lptmr.obj \

C_DEPS += \
./Sources/drivers/lptmr/lptmr.d \

OBJS_QUOTED += \
"./Sources/drivers/lptmr/lptmr.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/lptmr/lptmr.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/lptmr/lptmr.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/lptmr/lptmr.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/lptmr/lptmr.args" -o "Sources/drivers/lptmr/lptmr.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/lptmr/lptmr.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/lptmr/lptmr.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


