################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/adc16/adc16.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/adc16/adc16.c \

OBJS += \
./Sources/drivers/adc16/adc16.obj \

C_DEPS += \
./Sources/drivers/adc16/adc16.d \

OBJS_QUOTED += \
"./Sources/drivers/adc16/adc16.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/adc16/adc16.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/adc16/adc16.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/adc16/adc16.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/adc16/adc16.args" -o "Sources/drivers/adc16/adc16.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/adc16/adc16.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/adc16/adc16.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


