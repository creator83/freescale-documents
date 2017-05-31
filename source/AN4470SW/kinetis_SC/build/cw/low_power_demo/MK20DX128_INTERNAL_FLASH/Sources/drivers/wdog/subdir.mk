################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/wdog/wdog.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/wdog/wdog.c \

OBJS += \
./Sources/drivers/wdog/wdog.obj \

C_DEPS += \
./Sources/drivers/wdog/wdog.d \

OBJS_QUOTED += \
"./Sources/drivers/wdog/wdog.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/wdog/wdog.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/wdog/wdog.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/wdog/wdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/wdog/wdog.args" -o "Sources/drivers/wdog/wdog.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/wdog/wdog.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/wdog/wdog.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


