################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/common/assert.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/common/io.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/common/memtest.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/common/startup.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/common/uif.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/assert.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/io.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/memtest.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/startup.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/uif.c \

OBJS += \
./Sources/common/assert.obj \
./Sources/common/io.obj \
./Sources/common/memtest.obj \
./Sources/common/startup.obj \
./Sources/common/uif.obj \

C_DEPS += \
./Sources/common/assert.d \
./Sources/common/io.d \
./Sources/common/memtest.d \
./Sources/common/startup.d \
./Sources/common/uif.d \

OBJS_QUOTED += \
"./Sources/common/assert.obj" \
"./Sources/common/io.obj" \
"./Sources/common/memtest.obj" \
"./Sources/common/startup.obj" \
"./Sources/common/uif.obj" \

OBJS_OS_FORMAT += \
./Sources/common/assert.obj \
./Sources/common/io.obj \
./Sources/common/memtest.obj \
./Sources/common/startup.obj \
./Sources/common/uif.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/common/assert.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/common/assert.args" -o "Sources/common/assert.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/common/assert.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/assert.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/common/io.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/io.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/common/io.args" -o "Sources/common/io.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/common/io.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/io.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/common/memtest.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/memtest.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/common/memtest.args" -o "Sources/common/memtest.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/common/memtest.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/memtest.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/common/startup.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/startup.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/common/startup.args" -o "Sources/common/startup.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/common/startup.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/startup.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/common/uif.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/uif.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/common/uif.args" -o "Sources/common/uif.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/common/uif.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/common/uif.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


