################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/smc/smc.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/smc/smc.c \

OBJS += \
./Sources/drivers/smc/smc.obj \

C_DEPS += \
./Sources/drivers/smc/smc.d \

OBJS_QUOTED += \
"./Sources/drivers/smc/smc.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/smc/smc.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/smc/smc.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/smc/smc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/smc/smc.args" -o "Sources/drivers/smc/smc.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/smc/smc.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/smc/smc.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


