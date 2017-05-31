################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/pmc/pmc.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/pmc/pmc.c \

OBJS += \
./Sources/drivers/pmc/pmc.obj \

C_DEPS += \
./Sources/drivers/pmc/pmc.d \

OBJS_QUOTED += \
"./Sources/drivers/pmc/pmc.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/pmc/pmc.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/pmc/pmc.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/pmc/pmc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/pmc/pmc.args" -o "Sources/drivers/pmc/pmc.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/pmc/pmc.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/pmc/pmc.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


