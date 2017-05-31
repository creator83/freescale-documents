################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/cpu/arm_cm4.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/cpu/start.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/cpu/sysinit.c" \
"D:/Profiles/B22247/Desktop/SW Low Power/src/cpu/vectors.c" \

C_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/arm_cm4.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/start.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/sysinit.c \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/vectors.c \

S_SRCS += \
D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/cw_crt0.s \

S_SRCS_QUOTED += \
"D:/Profiles/B22247/Desktop/SW Low Power/src/cpu/cw_crt0.s" \

OBJS += \
./Sources/cpu/arm_cm4.obj \
./Sources/cpu/cw_crt0.obj \
./Sources/cpu/start.obj \
./Sources/cpu/sysinit.obj \
./Sources/cpu/vectors.obj \

C_DEPS += \
./Sources/cpu/arm_cm4.d \
./Sources/cpu/start.d \
./Sources/cpu/sysinit.d \
./Sources/cpu/vectors.d \

OBJS_QUOTED += \
"./Sources/cpu/arm_cm4.obj" \
"./Sources/cpu/cw_crt0.obj" \
"./Sources/cpu/start.obj" \
"./Sources/cpu/sysinit.obj" \
"./Sources/cpu/vectors.obj" \

OBJS_OS_FORMAT += \
./Sources/cpu/arm_cm4.obj \
./Sources/cpu/cw_crt0.obj \
./Sources/cpu/start.obj \
./Sources/cpu/sysinit.obj \
./Sources/cpu/vectors.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/cpu/arm_cm4.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/arm_cm4.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/cpu/arm_cm4.args" -o "Sources/cpu/arm_cm4.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/cpu/arm_cm4.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/arm_cm4.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/cpu/cw_crt0.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/cw_crt0.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Assembler'
	"$(ARM_ToolsDirEnv)/mwasmarm" @@"Sources/cpu/cw_crt0.args" -o "Sources/cpu/cw_crt0.obj" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Sources/cpu/start.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/start.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/cpu/start.args" -o "Sources/cpu/start.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/cpu/start.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/start.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/cpu/sysinit.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/sysinit.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/cpu/sysinit.args" -o "Sources/cpu/sysinit.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/cpu/sysinit.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/sysinit.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/cpu/vectors.obj: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/vectors.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/cpu/vectors.args" -o "Sources/cpu/vectors.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/cpu/vectors.d: D:/Profiles/B22247/Desktop/SW\ Low\ Power/src/cpu/vectors.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


