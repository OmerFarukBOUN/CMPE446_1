-- ==============================================================
-- Generated by Vitis HLS v2023.2.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hart_OP_AL_32I is
port (
    ap_ready : OUT STD_LOGIC;
    opcode_val : IN STD_LOGIC_VECTOR (5 downto 0);
    func7_val : IN STD_LOGIC_VECTOR (6 downto 0);
    func3_val : IN STD_LOGIC_VECTOR (2 downto 0);
    op1_val : IN STD_LOGIC_VECTOR (30 downto 0);
    op2_val : IN STD_LOGIC_VECTOR (30 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of hart_OP_AL_32I is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv6_13 : STD_LOGIC_VECTOR (5 downto 0) := "010011";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv6_33 : STD_LOGIC_VECTOR (5 downto 0) := "110011";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_20 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_logic_0 : STD_LOGIC := '0';

attribute shreg_extract : string;
    signal grp_fu_262_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_rd_val_9_phi_fu_85_p52 : STD_LOGIC_VECTOR (30 downto 0);
    signal opcode_val_read_read_fu_76_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal func3_val_read_read_fu_64_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal func7_val_read_read_fu_70_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_226_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_234_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln8_1_fu_334_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln8_fu_339_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal rd_val_2_fu_352_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_254_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal rd_val_16_fu_308_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln8_1_fu_329_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal rd_val_14_fu_370_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_283_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_270_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ashr_ln29_fu_363_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln8_3_fu_388_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln8_2_fu_393_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln20_1_fu_383_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal ashr_ln16_fu_409_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal shl_ln16_fu_402_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_phi_mux_error_phi_fu_146_p52 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_226_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_226_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_234_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_234_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_242_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_242_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_248_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_248_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_254_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_254_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_262_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_262_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal op2_val_cast3_fu_291_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_277_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_283_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal grp_fu_277_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal op2_val_cast3_fu_291_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal op1_val_cast_fu_296_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln46_fu_300_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln46_fu_300_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal rd_val_16_fu_308_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln46cast_fu_304_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln45_fu_315_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln45_fu_315_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal op1_val_cast_fu_296_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln45_fu_319_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal rd_val_15_fu_323_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_242_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_248_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln39_fu_344_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln39_fu_344_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal rd_val_2_fu_352_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal trunc_ln39cast_fu_348_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal ashr_ln29_fu_363_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal op2_val_cast3cast23_fu_359_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal rd_val_14_fu_370_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal rd_val_14_fu_370_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal lshr_ln20_fu_377_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln16_fu_402_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal op2_val_cast3cast_fu_398_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal ashr_ln16_fu_409_p0 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_phi_mux_error_phi_fu_146_p52_assign_proc : process(opcode_val_read_read_fu_76_p2, func3_val_read_read_fu_64_p2, func7_val_read_read_fu_70_p2, grp_fu_270_p3)
    begin
        if (((not((func3_val_read_read_fu_64_p2 = ap_const_lv3_5)) and not((func3_val_read_read_fu_64_p2 = ap_const_lv3_0)) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or (not((func7_val_read_read_fu_70_p2 = ap_const_lv7_20)) and not((func7_val_read_read_fu_70_p2 = ap_const_lv7_0)) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or (not((func7_val_read_read_fu_70_p2 = ap_const_lv7_20)) and not((func7_val_read_read_fu_70_p2 = ap_const_lv7_0)) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or (not((opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) and not((opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))))) then 
            ap_phi_mux_error_phi_fu_146_p52 <= ap_const_lv1_1;
        elsif ((((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 
    = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_0) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_2) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_3) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_4) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_6) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_0) 
    and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_0) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_2) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_3) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_4) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_6) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func7_val_read_read_fu_70_p2 
    = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_7) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_7) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)))) then 
            ap_phi_mux_error_phi_fu_146_p52 <= ap_const_lv1_0;
        else 
            ap_phi_mux_error_phi_fu_146_p52 <= "X";
        end if; 
    end process;


    ap_phi_mux_rd_val_9_phi_fu_85_p52_assign_proc : process(grp_fu_262_p2, opcode_val_read_read_fu_76_p2, func3_val_read_read_fu_64_p2, func7_val_read_read_fu_70_p2, grp_fu_226_p2, grp_fu_234_p2, zext_ln8_1_fu_334_p1, zext_ln8_fu_339_p1, rd_val_2_fu_352_p2, grp_fu_254_p2, rd_val_16_fu_308_p2, trunc_ln8_1_fu_329_p1, rd_val_14_fu_370_p2, grp_fu_283_p2, grp_fu_270_p3, ashr_ln29_fu_363_p2, zext_ln8_3_fu_388_p1, zext_ln8_2_fu_393_p1, trunc_ln20_1_fu_383_p1, ashr_ln16_fu_409_p2, shl_ln16_fu_402_p2)
    begin
        if (((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= shl_ln16_fu_402_p2;
        elsif (((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= ashr_ln16_fu_409_p2;
        elsif (((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= trunc_ln20_1_fu_383_p1;
        elsif (((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_2) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= zext_ln8_2_fu_393_p1;
        elsif (((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_3) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= zext_ln8_3_fu_388_p1;
        elsif (((grp_fu_270_p3 = ap_const_lv1_0) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= ashr_ln29_fu_363_p2;
        elsif ((((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((grp_fu_270_p3 = ap_const_lv1_1) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= grp_fu_283_p2;
        elsif (((func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_0) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= rd_val_14_fu_370_p2;
        elsif (((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= trunc_ln8_1_fu_329_p1;
        elsif (((func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= rd_val_16_fu_308_p2;
        elsif ((((func3_val_read_read_fu_64_p2 = ap_const_lv3_0) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_0) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= grp_fu_254_p2;
        elsif (((func3_val_read_read_fu_64_p2 = ap_const_lv3_1) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= rd_val_2_fu_352_p2;
        elsif (((func3_val_read_read_fu_64_p2 = ap_const_lv3_2) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= zext_ln8_fu_339_p1;
        elsif (((func3_val_read_read_fu_64_p2 = ap_const_lv3_3) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= zext_ln8_1_fu_334_p1;
        elsif ((((func3_val_read_read_fu_64_p2 = ap_const_lv3_4) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_4) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= grp_fu_234_p2;
        elsif ((((func3_val_read_read_fu_64_p2 = ap_const_lv3_6) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or ((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_6) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= grp_fu_226_p2;
        elsif (((not((func3_val_read_read_fu_64_p2 = ap_const_lv3_5)) and not((func3_val_read_read_fu_64_p2 = ap_const_lv3_0)) and (func7_val_read_read_fu_70_p2 = ap_const_lv7_20) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or (not((func7_val_read_read_fu_70_p2 = ap_const_lv7_20)) and not((func7_val_read_read_fu_70_p2 = ap_const_lv7_0)) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_5) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)) or (not((func7_val_read_read_fu_70_p2 = ap_const_lv7_20)) and not((func7_val_read_read_fu_70_p2 = ap_const_lv7_0)) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or (not((opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) and not((opcode_val_read_read_fu_76_p2 = ap_const_lv6_13))))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= ap_const_lv31_0;
        elsif ((((func7_val_read_read_fu_70_p2 = ap_const_lv7_0) and (func3_val_read_read_fu_64_p2 = ap_const_lv3_7) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_33)) or ((func3_val_read_read_fu_64_p2 = ap_const_lv3_7) and (opcode_val_read_read_fu_76_p2 = ap_const_lv6_13)))) then 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= grp_fu_262_p2;
        else 
            ap_phi_mux_rd_val_9_phi_fu_85_p52 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    ap_ready <= ap_const_logic_1;
    ap_return <= (ap_phi_mux_rd_val_9_phi_fu_85_p52 & ap_phi_mux_error_phi_fu_146_p52);
    ashr_ln16_fu_409_p0 <= op1_val;
    ashr_ln16_fu_409_p2 <= std_logic_vector(shift_right(signed(ashr_ln16_fu_409_p0),to_integer(unsigned('0' & grp_fu_277_p2(31-1 downto 0)))));
    ashr_ln29_fu_363_p0 <= op1_val;
    ashr_ln29_fu_363_p2 <= std_logic_vector(shift_right(signed(ashr_ln29_fu_363_p0),to_integer(unsigned('0' & op2_val_cast3cast23_fu_359_p1(31-1 downto 0)))));
    func3_val_read_read_fu_64_p2 <= func3_val;
    func7_val_read_read_fu_70_p2 <= func7_val;
    grp_fu_226_p0 <= op2_val;
    grp_fu_226_p1 <= op1_val;
    grp_fu_226_p2 <= (grp_fu_226_p1 or grp_fu_226_p0);
    grp_fu_234_p0 <= op2_val;
    grp_fu_234_p1 <= op1_val;
    grp_fu_234_p2 <= (grp_fu_234_p1 xor grp_fu_234_p0);
    grp_fu_242_p0 <= op1_val;
    grp_fu_242_p1 <= op2_val;
    grp_fu_242_p2 <= "1" when (unsigned(grp_fu_242_p0) < unsigned(grp_fu_242_p1)) else "0";
    grp_fu_248_p0 <= op1_val;
    grp_fu_248_p1 <= op2_val;
    grp_fu_248_p2 <= "1" when (signed(grp_fu_248_p0) < signed(grp_fu_248_p1)) else "0";
    grp_fu_254_p0 <= op2_val;
    grp_fu_254_p1 <= op1_val;
    grp_fu_254_p2 <= std_logic_vector(signed(grp_fu_254_p0) + signed(grp_fu_254_p1));
    grp_fu_262_p0 <= op2_val;
    grp_fu_262_p1 <= op1_val;
    grp_fu_262_p2 <= (grp_fu_262_p1 and grp_fu_262_p0);
    grp_fu_270_p3 <= op2_val_cast3_fu_291_p1(31 downto 31);
    grp_fu_277_p1 <= op2_val;
    grp_fu_277_p2 <= std_logic_vector(unsigned(ap_const_lv31_0) - unsigned(grp_fu_277_p1));
    grp_fu_283_p0 <= op1_val;
    grp_fu_283_p2 <= std_logic_vector(shift_left(unsigned(grp_fu_283_p0),to_integer(unsigned('0' & grp_fu_277_p2(31-1 downto 0)))));
    lshr_ln20_fu_377_p2 <= std_logic_vector(shift_right(unsigned(op1_val_cast_fu_296_p1),to_integer(unsigned('0' & op2_val_cast3_fu_291_p1(31-1 downto 0)))));
    op1_val_cast_fu_296_p0 <= op1_val;
        op1_val_cast_fu_296_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(op1_val_cast_fu_296_p0),32));

    op2_val_cast3_fu_291_p0 <= op2_val;
        op2_val_cast3_fu_291_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(op2_val_cast3_fu_291_p0),32));

    op2_val_cast3cast23_fu_359_p1 <= op2_val_cast3_fu_291_p1(31 - 1 downto 0);
    op2_val_cast3cast_fu_398_p1 <= op2_val_cast3_fu_291_p1(31 - 1 downto 0);
    opcode_val_read_read_fu_76_p2 <= opcode_val;
    rd_val_14_fu_370_p0 <= op1_val;
    rd_val_14_fu_370_p1 <= op2_val;
    rd_val_14_fu_370_p2 <= std_logic_vector(signed(rd_val_14_fu_370_p0) - signed(rd_val_14_fu_370_p1));
    rd_val_15_fu_323_p2 <= std_logic_vector(shift_right(unsigned(op1_val_cast_fu_296_p1),to_integer(unsigned('0' & zext_ln45_fu_319_p1(31-1 downto 0)))));
    rd_val_16_fu_308_p0 <= op1_val;
    rd_val_16_fu_308_p2 <= std_logic_vector(shift_right(signed(rd_val_16_fu_308_p0),to_integer(unsigned('0' & trunc_ln46cast_fu_304_p1(31-1 downto 0)))));
    rd_val_2_fu_352_p0 <= op1_val;
    rd_val_2_fu_352_p2 <= std_logic_vector(shift_left(unsigned(rd_val_2_fu_352_p0),to_integer(unsigned('0' & trunc_ln39cast_fu_348_p1(31-1 downto 0)))));
    shl_ln16_fu_402_p0 <= op1_val;
    shl_ln16_fu_402_p2 <= std_logic_vector(shift_left(unsigned(shl_ln16_fu_402_p0),to_integer(unsigned('0' & op2_val_cast3cast_fu_398_p1(31-1 downto 0)))));
    trunc_ln20_1_fu_383_p1 <= lshr_ln20_fu_377_p2(31 - 1 downto 0);
    trunc_ln39_fu_344_p0 <= op2_val;
    trunc_ln39_fu_344_p1 <= trunc_ln39_fu_344_p0(5 - 1 downto 0);
    trunc_ln39cast_fu_348_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln39_fu_344_p1),31));
    trunc_ln45_fu_315_p0 <= op2_val;
    trunc_ln45_fu_315_p1 <= trunc_ln45_fu_315_p0(5 - 1 downto 0);
    trunc_ln46_fu_300_p0 <= op2_val;
    trunc_ln46_fu_300_p1 <= trunc_ln46_fu_300_p0(5 - 1 downto 0);
    trunc_ln46cast_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln46_fu_300_p1),31));
    trunc_ln8_1_fu_329_p1 <= rd_val_15_fu_323_p2(31 - 1 downto 0);
    zext_ln45_fu_319_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln45_fu_315_p1),32));
    zext_ln8_1_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_242_p2),31));
    zext_ln8_2_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_248_p2),31));
    zext_ln8_3_fu_388_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_242_p2),31));
    zext_ln8_fu_339_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_248_p2),31));
end behav;
