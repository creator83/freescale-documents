################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rcm/rcm.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rcm/rcm.c \

OBJS += \
./Sources/drivers/rcm/rcm.obj \

C_DEPS += \
./Sources/drivers/rcm/rcm.d \

OBJS_QUOTED += \
"./Sources/drivers/rcm/rcm.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/rcm/rcm.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/rcm/rcm.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rcm/rcm.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/rcm/rcm.args" -o "Sources/drivers/rcm/rcm.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/rcm/rcm.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rcm/rcm.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


