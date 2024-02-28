#include "parameters.hpp"

#ifdef DEBUG
#include <iostream>
#endif

pc_type hart(inst_type inst, pc_type pc)
{
//#pragma HLS PIPELINE II=4
	opcode_type opcode;
	rf_pntr_type rd,rs1, rs2 ;
	func3_type func3;
	func7_type func7;
	static r_type rf[XLEN];
	pc_type next_pc;
	imm_type imm_11_0;
	unsigned imm_31_12;
	imm_type imm_12;
	imm_type imm_11_S;

	bit_type error;


	rf[0] = 0;
    opcode= inst.range(6,0) ;
	rd = inst.range(11,7);
	rs1= inst.range(19,15);
	rs2= inst.range(24,20);
	func3= inst.range(14,12);
	func7= inst.range(31,25);
	imm_11_0=(imm_type)(inst >> 20);
	imm_12 = (imm_type) ((inst[31] << 12) & (inst[7] << 11)
			& (inst.range(30, 25) << 5) & (inst.range(11, 8) << 1));
	imm_11_S = (imm_type) (inst.range(31, 25)<<5) & (inst.range(11,7));

	uns offset = rf[rs1]+imm_11_0;

	r_e_type return_val;

//	static data_type data_mem[DATAMEMSIZE];
//	r_type data_val = (r_type) data_mem[offset.range(31,2)];

#ifdef EXTRA
	r_type data_val = (r_type) mem(offset.range(31,2), func3, rf[rs1], 0);
#endif
	switch(opcode){
	case OP_AL_R:
		return_val = OP_AL_32I(opcode,func7,func3,rf[rs1],rf[rs2]);
		if (rd!=0) if (rd!=0) rf[rd]=return_val>>1;
		error = return_val[0];
		break;
	case OP_AL_I:
		return_val = OP_AL_32I(opcode,func7,func3,rf[rs1],(r_type) imm_11_0);
		if (rd!=0) rf[rd]=return_val>>1;
		error = return_val[0];
		break; //caution!!! check imm and fumc7

#ifdef EXTRA
	case OP_AL_B:
		return_val = OP_AL_32B(imm_12, func3, rf[rs1], rf[rs2]);
		next_pc += return_val>>1;
		error = return_val[0];
		break;
	case OP_AL_Load:
		switch(func3) {
		//case LB: if (rd!=0) rf[rd] = (imm_type) data_val.range((offset.range(1, 0)+1)*8, offset.range()); break;
		case LB:
			switch(offset.range(1,0)) {
			case 0: if (rd!=0) rf[rd] = (r_type) data_val.range(7,0); break;
			case 1: if (rd!=0) rf[rd] = (r_type) data_val.range(15, 8); break;
			case 2: if (rd!=0) rf[rd] = (r_type) data_val.range(23, 16); break;
			case 3: if (rd!=0) rf[rd] = (r_type) data_val.range(31, 24); break;
			}
			break;
		case LH:
			switch(offset.range(1,0)) {
			case 0: if (rd!=0) rf[rd] = (r_type) data_val.range(15,0); break;
			case 2: if (rd!=0) rf[rd] = (r_type) data_val.range(31, 16); break;
			default: if (rd!=0) rf[rd] = (r_type) 0xFFFFFFFF; error = 1;break;
			}
			break;
		case LW:
			switch(offset.range(1,0)) {
			case 0: if (rd!=0) rf[rd] = (r_type) data_val.range(31,0); break;
			default: if (rd!=0) rf[rd] = (r_type) 0xFFFFFFFF;error = 1; break;
			}
			break;
		case LBU:
			switch(offset.range(1,0)) {
			case 0: if (rd!=0) rf[rd] = (uns) data_val.range(7,0); break;
			case 1: if (rd!=0) rf[rd] = (uns) data_val.range(15, 8); break;
			case 2: if (rd!=0) rf[rd] = (uns) data_val.range(23, 16); break;
			case 3: if (rd!=0) rf[rd] = (uns) data_val.range(31, 24); break;
			}
			break;
		case LHU:
			switch(offset.range(1,0)) {
			case 0: if (rd!=0) rf[rd] = (uns) data_val.range(15,0); break;
			case 2: if (rd!=0) rf[rd] = (uns) data_val.range(31, 16); break;
			default: if (rd!=0) rf[rd] = (uns) 0xFFFFFFFF; error = 1; break;
			}
			break;
		}
		break;
	case OP_AL_Save: error = (bit_type) mem(rf[rs2], func3, rf[rs1], 1)[0];break;
#endif

    default: error = 1; break;
	}

#ifdef DEBUG
	std::cout << hex << rf[1] << std::endl;
#endif
	error ? next_pc = pc+5:  next_pc = pc+4;

	return(next_pc);
}
