################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/drivers/llwu/llwu.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/llwu/llwu.c \

OBJS += \
./Sources/drivers/llwu/llwu.obj \

C_DEPS += \
./Sources/drivers/llwu/llwu.d \

OBJS_QUOTED += \
"./Sources/drivers/llwu/llwu.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/llwu/llwu.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/llwu/llwu.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/llwu/llwu.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/llwu/llwu.args" -o "Sources/drivers/llwu/llwu.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/llwu/llwu.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/drivers/llwu/llwu.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


