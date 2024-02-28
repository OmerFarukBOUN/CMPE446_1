#include <iostream>
#include "parameters.hpp"
using namespace std;

hart_id hart_error;

void handleIllegalOpcode(hart_id* hart_no);


int main(void) //execution environment
		{
	inst_type code[] = {
			//0x3e800093, 0x7d008113, 0xc1810193, 0x83018213, 0x3e820293
#if defined(LEGAL)
			0x00500113,
			0x00a10093,
			0x00c00393,
			0x0053f093,
			0x00a00493,
			0x0034e093,
			0x00a00593,
			0x0055c093,
			0x00500693,
			0x00269093,
			0x01400793,
			0x0037d093,
			0xfec00893,
			0x4028d093,
			0xffb00993,
			0x0039a093,
			0x7ff00a93,
			0x002ab093,
			0x000002b3,
			0x00328293,
			0x000001b3,
			0x00518193,
			0x005180b3,
			0x00000233,
			0x00a20213,
			0x405200b3,
			0x000003b3,
			0x00c38393,
			0x0053f0b3,
			0x000004b3,
			0x00a48493,
			0x0054e0b3,
			0x000005b3,
			0x00a58593,
			0x0055c0b3,
			0x000006b3,
			0x00568693,
			0x005690b3,
			0x000007b3,
			0x01478793,
			0x0057d0b3,
			0x000008b3,
			0xfec88893,
			0x4058d0b3,
			0x000009b3,
			0xffb98993,
			0x0059a0b3,
			0x00000ab3,
			0x7ffa8a93,
			0x005ab0b3

//			addi x2, x0, 5
//			addi x1, x2, 10
//
//			addi x7, x0, 12
//			andi x1, x7, 5
//
//			addi x9, x0, 10
//			ori x1, x9, 3
//
//			addi x11, x0, 10
//			xori x1, x11, 5
//
//			addi x13, x0, 5
//			slli x1, x13, 2
//
//			addi x15, x0, 20
//			srli x1, x15, 3
//
//			addi x17, x0, -20
//			srai x1, x17, 2
//
//			addi x19, x0, -5
//			slti x1, x19, 3
//
//			addi x21, x0, 2047
//			sltiu x1, x21, 2
//
//			add x5, x0, x0
//			addi x5, x5, 3
//
//			add x3, x0, x0
//			addi x3, x3, 5
//			add x1, x3, x5
//
//			add x4, x0, x0
//			addi x4, x4, 10
//			sub x1, x4, x5
//
//			add x7, x0, x0
//			addi x7, x7, 12
//			and x1, x7, x5
//
//			add x9, x0, x0
//			addi x9, x9, 10
//			or x1, x9, x5
//
//			add x11, x0, x0
//			addi x11, x11, 10
//			xor x1, x11, x5
//
//			add x13, x0, x0
//			addi x13, x13, 5
//			sll x1, x13, x5
//
//			add x15, x0, x0
//			addi x15, x15, 20
//			srl x1, x15, x5
//
//			add x17, x0, x0
//			addi x17, x17, -20
//			sra x1, x17, x5
//
//			add x19, x0, x0
//			addi x19, x19, -5
//			slt x1, x19, x5
//
//			add x21, x0, x0
//			addi x21, x21, 2047
//			sltu x1, x21, x5

#else
			0x00500093, // addi x1, x0, 5
			0x0,		// Illegal Opcode
			0x00500093  // addi x1, x0, 5
#endif

	}; //assuming 32-bit Instruction Memory interface
	int N = sizeof(code) >> 2;
	unsigned int pc = 0;
	while ((pc >> 2) < N) {
		cout << pc << " " << hex << code[pc >> 2] << "\n";
		pc = hart(code[pc >> 2], pc);
		if (pc & 1 != 0) {
			hart_error = 0;
			handleIllegalOpcode(&hart_error);
			return -1;
		}
	}
	return (0);

}


// For handling illegal opcodes. Can be redefined.
void handleIllegalOpcode(hart_id* hart_no) {
	cout << "Illegal Opcode!" << endl;
}
