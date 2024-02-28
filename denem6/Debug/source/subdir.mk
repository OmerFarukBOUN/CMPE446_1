################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/omerfaruk/Projects/okul/denem6/OP_AL_32I.cpp \
/home/omerfaruk/Projects/okul/denem6/hart.cpp \
/home/omerfaruk/Projects/okul/denem6/mem.cpp 

OBJS += \
./source/OP_AL_32I.o \
./source/hart.o \
./source/mem.o 

CPP_DEPS += \
./source/OP_AL_32I.d \
./source/hart.d \
./source/mem.d 


# Each subdirectory must supply rules for building sources it contributes
source/OP_AL_32I.o: /home/omerfaruk/Projects/okul/denem6/OP_AL_32I.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include -I/home/omerfaruk/Projects/okul/denem6 -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/hart.o: /home/omerfaruk/Projects/okul/denem6/hart.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include -I/home/omerfaruk/Projects/okul/denem6 -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/mem.o: /home/omerfaruk/Projects/okul/denem6/mem.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include -I/home/omerfaruk/Projects/okul/denem6 -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -I/home/omerfaruk/tools/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


