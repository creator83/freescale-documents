################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rtc/rtc.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rtc/rtc.c \

OBJS += \
./Sources/drivers/rtc/rtc.obj \

C_DEPS += \
./Sources/drivers/rtc/rtc.d \

OBJS_QUOTED += \
"./Sources/drivers/rtc/rtc.obj" \

OBJS_OS_FORMAT += \
./Sources/drivers/rtc/rtc.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/drivers/rtc/rtc.obj: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rtc/rtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/drivers/rtc/rtc.args" -o "Sources/drivers/rtc/rtc.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/drivers/rtc/rtc.d: D:/Profiles/B22247/Desktop/kinetis_SC/src/drivers/rtc/rtc.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


