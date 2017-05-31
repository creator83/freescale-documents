################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/semihosting/cw/Retarget.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/semihosting/cw/Retarget.c \

OBJS += \
./Sources/semihosting/cw/Retarget.obj \

C_DEPS += \
./Sources/semihosting/cw/Retarget.d \

OBJS_QUOTED += \
"./Sources/semihosting/cw/Retarget.obj" \

OBJS_OS_FORMAT += \
./Sources/semihosting/cw/Retarget.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/semihosting/cw/Retarget.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/semihosting/cw/Retarget.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/semihosting/cw/Retarget.args" -o "Sources/semihosting/cw/Retarget.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/semihosting/cw/Retarget.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/semihosting/cw/Retarget.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


