----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from fir_rtl
-- VHDL created on Wed May 11 17:50:56 2016


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/13.0sp1/232/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1303
entity fir_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(13 downto 0);
        bankIn_0 : in std_logic_vector(2 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(36 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of fir_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_data_q_11_q : std_logic_vector (16 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_15_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_19_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_wi0_phasedelay0_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr1_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr1_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr2_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr2_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr3_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr3_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr4_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr4_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr5_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr5_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr6_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr6_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr7_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr7_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr8_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr8_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr9_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr9_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr10_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr10_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr11_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr11_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr12_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr12_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr13_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr13_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr14_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr14_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr15_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr15_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr16_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr16_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr17_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr17_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr18_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr18_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr19_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr19_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr20_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr20_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr21_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr21_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr22_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr22_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr23_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr23_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr24_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr24_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr25_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr25_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr26_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr26_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr27_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr27_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr28_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr28_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr29_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr29_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr30_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr30_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr31_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr31_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr32_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr32_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr33_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr33_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr34_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr34_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr35_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr35_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr36_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr36_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr37_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr37_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr38_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr38_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr39_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr39_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr40_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr40_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr41_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr41_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr42_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr42_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr43_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr43_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr44_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr44_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr45_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr45_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr46_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr46_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr47_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr47_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr48_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr48_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr49_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr49_q_12_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr50_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr51_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr52_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr52_q_13_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr53_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr54_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr55_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr56_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr57_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr58_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr59_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr60_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr61_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr62_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr63_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr64_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr65_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr66_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr67_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr68_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr69_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr70_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr71_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr72_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr73_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr74_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr75_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr76_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr77_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr78_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr79_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr80_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr81_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr82_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr83_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr84_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr85_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr86_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr87_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr88_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr89_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr90_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr91_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr92_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_wi0_delayr92_q_15_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr93_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr94_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr95_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr96_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr97_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr98_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr99_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr100_q : std_logic_vector (13 downto 0);
    signal d_u0_m0_wo0_bank_phasedelay0_q_15_q : std_logic_vector (2 downto 0);
    signal d_u0_m0_wo0_bank_delayr8_q_13_q : std_logic_vector (2 downto 0);
    signal d_u0_m0_wo0_bank_delayr48_q_12_q : std_logic_vector (2 downto 0);
    signal d_u0_m0_wo0_bank_delayr52_q_13_q : std_logic_vector (2 downto 0);
    signal u0_m0_wo0_cm0_q : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_cm49_q : std_logic_vector(15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_pr : SIGNED (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : std_logic_vector(32 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : std_logic_vector (32 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : std_logic_vector(33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : std_logic_vector (33 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : std_logic_vector(34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : std_logic_vector (34 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : std_logic_vector(35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : std_logic_vector (35 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    type u0_m0_wo0_mtree_madd4_25_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_a : u0_m0_wo0_mtree_madd4_25_cma_a_type;
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_mtree_madd4_25_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_25_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_c : u0_m0_wo0_mtree_madd4_25_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_25_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_25_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_d : u0_m0_wo0_mtree_madd4_25_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_25_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_25_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_r : u0_m0_wo0_mtree_madd4_25_cma_r_type;
    type u0_m0_wo0_mtree_madd4_25_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_p : u0_m0_wo0_mtree_madd4_25_cma_p_type;
    type u0_m0_wo0_mtree_madd4_25_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_w : u0_m0_wo0_mtree_madd4_25_cma_w_type;
    type u0_m0_wo0_mtree_madd4_25_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_x : u0_m0_wo0_mtree_madd4_25_cma_x_type;
    type u0_m0_wo0_mtree_madd4_25_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_y : u0_m0_wo0_mtree_madd4_25_cma_y_type;
    type u0_m0_wo0_mtree_madd4_25_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_k0 : u0_m0_wo0_mtree_madd4_25_cma_romtype := (
        0 => TO_SIGNED(3231,16),
        1 => TO_SIGNED(-1556,16),
        2 => TO_SIGNED(-269,16),
        3 => TO_SIGNED(250,16),
        4 => TO_SIGNED(-5427,16),
        5 => TO_SIGNED(1016,16),
        6 => TO_SIGNED(554,16),
        7 => TO_SIGNED(-184,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_25_cma_k1 : u0_m0_wo0_mtree_madd4_25_cma_romtype := (
        0 => TO_SIGNED(-3036,16),
        1 => TO_SIGNED(1909,16),
        2 => TO_SIGNED(253,16),
        3 => TO_SIGNED(-307,16),
        4 => TO_SIGNED(1358,16),
        5 => TO_SIGNED(-963,16),
        6 => TO_SIGNED(-138,16),
        7 => TO_SIGNED(175,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_25_cma_k2 : u0_m0_wo0_mtree_madd4_25_cma_romtype := (
        0 => TO_SIGNED(-2291,16),
        1 => TO_SIGNED(1370,16),
        2 => TO_SIGNED(190,16),
        3 => TO_SIGNED(-220,16),
        4 => TO_SIGNED(1186,16),
        5 => TO_SIGNED(1641,16),
        6 => TO_SIGNED(-121,16),
        7 => TO_SIGNED(-298,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_25_cma_k3 : u0_m0_wo0_mtree_madd4_25_cma_romtype := (
        0 => TO_SIGNED(-1934,16),
        1 => TO_SIGNED(1103,16),
        2 => TO_SIGNED(161,16),
        3 => TO_SIGNED(-177,16),
        4 => TO_SIGNED(994,16),
        5 => TO_SIGNED(1239,16),
        6 => TO_SIGNED(-101,16),
        7 => TO_SIGNED(-225,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_25_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_25_cma_s : u0_m0_wo0_mtree_madd4_25_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_25_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_24_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_a : u0_m0_wo0_mtree_madd4_24_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_24_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_24_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_c : u0_m0_wo0_mtree_madd4_24_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_24_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_24_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_d : u0_m0_wo0_mtree_madd4_24_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_24_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_24_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_r : u0_m0_wo0_mtree_madd4_24_cma_r_type;
    type u0_m0_wo0_mtree_madd4_24_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_p : u0_m0_wo0_mtree_madd4_24_cma_p_type;
    type u0_m0_wo0_mtree_madd4_24_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_w : u0_m0_wo0_mtree_madd4_24_cma_w_type;
    type u0_m0_wo0_mtree_madd4_24_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_x : u0_m0_wo0_mtree_madd4_24_cma_x_type;
    type u0_m0_wo0_mtree_madd4_24_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_y : u0_m0_wo0_mtree_madd4_24_cma_y_type;
    type u0_m0_wo0_mtree_madd4_24_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_k0 : u0_m0_wo0_mtree_madd4_24_cma_romtype := (
        0 => TO_SIGNED(-1766,16),
        1 => TO_SIGNED(892,16),
        2 => TO_SIGNED(147,16),
        3 => TO_SIGNED(-143,16),
        4 => TO_SIGNED(752,16),
        5 => TO_SIGNED(-311,16),
        6 => TO_SIGNED(-76,16),
        7 => TO_SIGNED(56,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_24_cma_k1 : u0_m0_wo0_mtree_madd4_24_cma_romtype := (
        0 => TO_SIGNED(-1665,16),
        1 => TO_SIGNED(633,16),
        2 => TO_SIGNED(138,16),
        3 => TO_SIGNED(-101,16),
        4 => TO_SIGNED(444,16),
        5 => TO_SIGNED(-1476,16),
        6 => TO_SIGNED(-45,16),
        7 => TO_SIGNED(268,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_24_cma_k2 : u0_m0_wo0_mtree_madd4_24_cma_romtype := (
        0 => TO_SIGNED(-1561,16),
        1 => TO_SIGNED(296,16),
        2 => TO_SIGNED(130,16),
        3 => TO_SIGNED(-47,16),
        4 => TO_SIGNED(79,16),
        5 => TO_SIGNED(-1829,16),
        6 => TO_SIGNED(-8,16),
        7 => TO_SIGNED(332,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_24_cma_k3 : u0_m0_wo0_mtree_madd4_24_cma_romtype := (
        0 => TO_SIGNED(-1407,16),
        1 => TO_SIGNED(-101,16),
        2 => TO_SIGNED(117,16),
        3 => TO_SIGNED(16,16),
        4 => TO_SIGNED(-306,16),
        5 => TO_SIGNED(-1546,16),
        6 => TO_SIGNED(31,16),
        7 => TO_SIGNED(280,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_24_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_24_cma_s : u0_m0_wo0_mtree_madd4_24_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_24_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_23_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_a : u0_m0_wo0_mtree_madd4_23_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_23_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_23_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_c : u0_m0_wo0_mtree_madd4_23_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_23_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_23_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_d : u0_m0_wo0_mtree_madd4_23_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_23_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_23_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_r : u0_m0_wo0_mtree_madd4_23_cma_r_type;
    type u0_m0_wo0_mtree_madd4_23_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_p : u0_m0_wo0_mtree_madd4_23_cma_p_type;
    type u0_m0_wo0_mtree_madd4_23_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_w : u0_m0_wo0_mtree_madd4_23_cma_w_type;
    type u0_m0_wo0_mtree_madd4_23_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_x : u0_m0_wo0_mtree_madd4_23_cma_x_type;
    type u0_m0_wo0_mtree_madd4_23_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_y : u0_m0_wo0_mtree_madd4_23_cma_y_type;
    type u0_m0_wo0_mtree_madd4_23_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_k0 : u0_m0_wo0_mtree_madd4_23_cma_romtype := (
        0 => TO_SIGNED(-1178,16),
        1 => TO_SIGNED(-506,16),
        2 => TO_SIGNED(98,16),
        3 => TO_SIGNED(81,16),
        4 => TO_SIGNED(-645,16),
        5 => TO_SIGNED(-930,16),
        6 => TO_SIGNED(65,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_23_cma_k1 : u0_m0_wo0_mtree_madd4_23_cma_romtype := (
        0 => TO_SIGNED(-867,16),
        1 => TO_SIGNED(-848,16),
        2 => TO_SIGNED(72,16),
        3 => TO_SIGNED(136,16),
        4 => TO_SIGNED(-855,16),
        5 => TO_SIGNED(-305,16),
        6 => TO_SIGNED(87,16),
        7 => TO_SIGNED(55,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_23_cma_k2 : u0_m0_wo0_mtree_madd4_23_cma_romtype := (
        0 => TO_SIGNED(-474,16),
        1 => TO_SIGNED(-1054,16),
        2 => TO_SIGNED(39,16),
        3 => TO_SIGNED(169,16),
        4 => TO_SIGNED(-851,16),
        5 => TO_SIGNED(8,16),
        6 => TO_SIGNED(86,16),
        7 => TO_SIGNED(-1,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_23_cma_k3 : u0_m0_wo0_mtree_madd4_23_cma_romtype := (
        0 => TO_SIGNED(-10,16),
        1 => TO_SIGNED(-1071,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(172,16),
        4 => TO_SIGNED(-567,16),
        5 => TO_SIGNED(-152,16),
        6 => TO_SIGNED(58,16),
        7 => TO_SIGNED(27,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_23_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_23_cma_s : u0_m0_wo0_mtree_madd4_23_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_23_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_22_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_a : u0_m0_wo0_mtree_madd4_22_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_22_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_22_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_c : u0_m0_wo0_mtree_madd4_22_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_22_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_22_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_d : u0_m0_wo0_mtree_madd4_22_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_22_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_22_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_r : u0_m0_wo0_mtree_madd4_22_cma_r_type;
    type u0_m0_wo0_mtree_madd4_22_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_p : u0_m0_wo0_mtree_madd4_22_cma_p_type;
    type u0_m0_wo0_mtree_madd4_22_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_w : u0_m0_wo0_mtree_madd4_22_cma_w_type;
    type u0_m0_wo0_mtree_madd4_22_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_x : u0_m0_wo0_mtree_madd4_22_cma_x_type;
    type u0_m0_wo0_mtree_madd4_22_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_y : u0_m0_wo0_mtree_madd4_22_cma_y_type;
    type u0_m0_wo0_mtree_madd4_22_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_k0 : u0_m0_wo0_mtree_madd4_22_cma_romtype := (
        0 => TO_SIGNED(505,16),
        1 => TO_SIGNED(-873,16),
        2 => TO_SIGNED(-42,16),
        3 => TO_SIGNED(140,16),
        4 => TO_SIGNED(22,16),
        5 => TO_SIGNED(-635,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(115,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_22_cma_k1 : u0_m0_wo0_mtree_madd4_22_cma_romtype := (
        0 => TO_SIGNED(1046,16),
        1 => TO_SIGNED(-476,16),
        2 => TO_SIGNED(-87,16),
        3 => TO_SIGNED(76,16),
        4 => TO_SIGNED(886,16),
        5 => TO_SIGNED(-998,16),
        6 => TO_SIGNED(-90,16),
        7 => TO_SIGNED(181,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_22_cma_k2 : u0_m0_wo0_mtree_madd4_22_cma_romtype := (
        0 => TO_SIGNED(1581,16),
        1 => TO_SIGNED(61,16),
        2 => TO_SIGNED(-131,16),
        3 => TO_SIGNED(-9,16),
        4 => TO_SIGNED(1941,16),
        5 => TO_SIGNED(-774,16),
        6 => TO_SIGNED(-198,16),
        7 => TO_SIGNED(140,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_22_cma_k3 : u0_m0_wo0_mtree_madd4_22_cma_romtype := (
        0 => TO_SIGNED(2074,16),
        1 => TO_SIGNED(651,16),
        2 => TO_SIGNED(-172,16),
        3 => TO_SIGNED(-104,16),
        4 => TO_SIGNED(3051,16),
        5 => TO_SIGNED(188,16),
        6 => TO_SIGNED(-311,16),
        7 => TO_SIGNED(-34,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_22_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_22_cma_s : u0_m0_wo0_mtree_madd4_22_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_22_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_21_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_a : u0_m0_wo0_mtree_madd4_21_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_21_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_21_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_c : u0_m0_wo0_mtree_madd4_21_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_21_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_21_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_d : u0_m0_wo0_mtree_madd4_21_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_21_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_21_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_r : u0_m0_wo0_mtree_madd4_21_cma_r_type;
    type u0_m0_wo0_mtree_madd4_21_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_p : u0_m0_wo0_mtree_madd4_21_cma_p_type;
    type u0_m0_wo0_mtree_madd4_21_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_w : u0_m0_wo0_mtree_madd4_21_cma_w_type;
    type u0_m0_wo0_mtree_madd4_21_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_x : u0_m0_wo0_mtree_madd4_21_cma_x_type;
    type u0_m0_wo0_mtree_madd4_21_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_y : u0_m0_wo0_mtree_madd4_21_cma_y_type;
    type u0_m0_wo0_mtree_madd4_21_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_k0 : u0_m0_wo0_mtree_madd4_21_cma_romtype := (
        0 => TO_SIGNED(2491,16),
        1 => TO_SIGNED(1178,16),
        2 => TO_SIGNED(-207,16),
        3 => TO_SIGNED(-189,16),
        4 => TO_SIGNED(4045,16),
        5 => TO_SIGNED(1550,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-281,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_21_cma_k1 : u0_m0_wo0_mtree_madd4_21_cma_romtype := (
        0 => TO_SIGNED(2794,16),
        1 => TO_SIGNED(1530,16),
        2 => TO_SIGNED(-232,16),
        3 => TO_SIGNED(-246,16),
        4 => TO_SIGNED(4753,16),
        5 => TO_SIGNED(2627,16),
        6 => TO_SIGNED(-485,16),
        7 => TO_SIGNED(-477,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_21_cma_k2 : u0_m0_wo0_mtree_madd4_21_cma_romtype := (
        0 => TO_SIGNED(2952,16),
        1 => TO_SIGNED(1617,16),
        2 => TO_SIGNED(-246,16),
        3 => TO_SIGNED(-259,16),
        4 => TO_SIGNED(5031,16),
        5 => TO_SIGNED(2785,16),
        6 => TO_SIGNED(-514,16),
        7 => TO_SIGNED(-506,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_21_cma_k3 : u0_m0_wo0_mtree_madd4_21_cma_romtype := (
        0 => TO_SIGNED(2937,16),
        1 => TO_SIGNED(1390,16),
        2 => TO_SIGNED(-244,16),
        3 => TO_SIGNED(-223,16),
        4 => TO_SIGNED(4796,16),
        5 => TO_SIGNED(1859,16),
        6 => TO_SIGNED(-490,16),
        7 => TO_SIGNED(-337,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_21_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_21_cma_s : u0_m0_wo0_mtree_madd4_21_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_21_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_20_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_a : u0_m0_wo0_mtree_madd4_20_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_20_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_20_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_c : u0_m0_wo0_mtree_madd4_20_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_20_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_20_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_d : u0_m0_wo0_mtree_madd4_20_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_20_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_20_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_r : u0_m0_wo0_mtree_madd4_20_cma_r_type;
    type u0_m0_wo0_mtree_madd4_20_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_p : u0_m0_wo0_mtree_madd4_20_cma_p_type;
    type u0_m0_wo0_mtree_madd4_20_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_w : u0_m0_wo0_mtree_madd4_20_cma_w_type;
    type u0_m0_wo0_mtree_madd4_20_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_x : u0_m0_wo0_mtree_madd4_20_cma_x_type;
    type u0_m0_wo0_mtree_madd4_20_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_y : u0_m0_wo0_mtree_madd4_20_cma_y_type;
    type u0_m0_wo0_mtree_madd4_20_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_k0 : u0_m0_wo0_mtree_madd4_20_cma_romtype := (
        0 => TO_SIGNED(2731,16),
        1 => TO_SIGNED(860,16),
        2 => TO_SIGNED(-227,16),
        3 => TO_SIGNED(-138,16),
        4 => TO_SIGNED(4047,16),
        5 => TO_SIGNED(306,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-55,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_20_cma_k1 : u0_m0_wo0_mtree_madd4_20_cma_romtype := (
        0 => TO_SIGNED(2327,16),
        1 => TO_SIGNED(96,16),
        2 => TO_SIGNED(-193,16),
        3 => TO_SIGNED(-15,16),
        4 => TO_SIGNED(2876,16),
        5 => TO_SIGNED(-1039,16),
        6 => TO_SIGNED(-293,16),
        7 => TO_SIGNED(188,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_20_cma_k2 : u0_m0_wo0_mtree_madd4_20_cma_romtype := (
        0 => TO_SIGNED(1725,16),
        1 => TO_SIGNED(-775,16),
        2 => TO_SIGNED(-143,16),
        3 => TO_SIGNED(124,16),
        4 => TO_SIGNED(1458,16),
        5 => TO_SIGNED(-1484,16),
        6 => TO_SIGNED(-148,16),
        7 => TO_SIGNED(269,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_20_cma_k3 : u0_m0_wo0_mtree_madd4_20_cma_romtype := (
        0 => TO_SIGNED(941,16),
        1 => TO_SIGNED(-1595,16),
        2 => TO_SIGNED(-78,16),
        3 => TO_SIGNED(256,16),
        4 => TO_SIGNED(25,16),
        5 => TO_SIGNED(-933,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_20_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_20_cma_s : u0_m0_wo0_mtree_madd4_20_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_20_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_19_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_a : u0_m0_wo0_mtree_madd4_19_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_19_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_19_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_c : u0_m0_wo0_mtree_madd4_19_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_19_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_19_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_d : u0_m0_wo0_mtree_madd4_19_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_19_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_19_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_r : u0_m0_wo0_mtree_madd4_19_cma_r_type;
    type u0_m0_wo0_mtree_madd4_19_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_p : u0_m0_wo0_mtree_madd4_19_cma_p_type;
    type u0_m0_wo0_mtree_madd4_19_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_w : u0_m0_wo0_mtree_madd4_19_cma_w_type;
    type u0_m0_wo0_mtree_madd4_19_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_x : u0_m0_wo0_mtree_madd4_19_cma_x_type;
    type u0_m0_wo0_mtree_madd4_19_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_y : u0_m0_wo0_mtree_madd4_19_cma_y_type;
    type u0_m0_wo0_mtree_madd4_19_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_k0 : u0_m0_wo0_mtree_madd4_19_cma_romtype := (
        0 => TO_SIGNED(2,16),
        1 => TO_SIGNED(-2193,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(352,16),
        4 => TO_SIGNED(-1171,16),
        5 => TO_SIGNED(1,16),
        6 => TO_SIGNED(119,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_19_cma_k1 : u0_m0_wo0_mtree_madd4_19_cma_romtype := (
        0 => TO_SIGNED(-1047,16),
        1 => TO_SIGNED(-2424,16),
        2 => TO_SIGNED(87,16),
        3 => TO_SIGNED(389,16),
        4 => TO_SIGNED(-1911,16),
        5 => TO_SIGNED(368,16),
        6 => TO_SIGNED(195,16),
        7 => TO_SIGNED(-66,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_19_cma_k2 : u0_m0_wo0_mtree_madd4_19_cma_romtype := (
        0 => TO_SIGNED(-2159,16),
        1 => TO_SIGNED(-2199,16),
        2 => TO_SIGNED(179,16),
        3 => TO_SIGNED(353,16),
        4 => TO_SIGNED(-2051,16),
        5 => TO_SIGNED(-476,16),
        6 => TO_SIGNED(209,16),
        7 => TO_SIGNED(86,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_19_cma_k3 : u0_m0_wo0_mtree_madd4_19_cma_romtype := (
        0 => TO_SIGNED(-3268,16),
        1 => TO_SIGNED(-1505,16),
        2 => TO_SIGNED(272,16),
        3 => TO_SIGNED(242,16),
        4 => TO_SIGNED(-1564,16),
        5 => TO_SIGNED(-2352,16),
        6 => TO_SIGNED(159,16),
        7 => TO_SIGNED(427,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_19_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_19_cma_s : u0_m0_wo0_mtree_madd4_19_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_19_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_18_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_a : u0_m0_wo0_mtree_madd4_18_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_18_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_18_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_c : u0_m0_wo0_mtree_madd4_18_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_18_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_18_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_d : u0_m0_wo0_mtree_madd4_18_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_18_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_18_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_r : u0_m0_wo0_mtree_madd4_18_cma_r_type;
    type u0_m0_wo0_mtree_madd4_18_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_p : u0_m0_wo0_mtree_madd4_18_cma_p_type;
    type u0_m0_wo0_mtree_madd4_18_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_w : u0_m0_wo0_mtree_madd4_18_cma_w_type;
    type u0_m0_wo0_mtree_madd4_18_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_x : u0_m0_wo0_mtree_madd4_18_cma_x_type;
    type u0_m0_wo0_mtree_madd4_18_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_y : u0_m0_wo0_mtree_madd4_18_cma_y_type;
    type u0_m0_wo0_mtree_madd4_18_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_k0 : u0_m0_wo0_mtree_madd4_18_cma_romtype := (
        0 => TO_SIGNED(-4308,16),
        1 => TO_SIGNED(-423,16),
        2 => TO_SIGNED(359,16),
        3 => TO_SIGNED(68,16),
        4 => TO_SIGNED(-553,16),
        5 => TO_SIGNED(-4242,16),
        6 => TO_SIGNED(56,16),
        7 => TO_SIGNED(770,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_18_cma_k1 : u0_m0_wo0_mtree_madd4_18_cma_romtype := (
        0 => TO_SIGNED(-5206,16),
        1 => TO_SIGNED(882,16),
        2 => TO_SIGNED(433,16),
        3 => TO_SIGNED(-141,16),
        4 => TO_SIGNED(741,16),
        5 => TO_SIGNED(-4832,16),
        6 => TO_SIGNED(-75,16),
        7 => TO_SIGNED(877,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_18_cma_k2 : u0_m0_wo0_mtree_madd4_18_cma_romtype := (
        0 => TO_SIGNED(-5887,16),
        1 => TO_SIGNED(2184,16),
        2 => TO_SIGNED(490,16),
        3 => TO_SIGNED(-351,16),
        4 => TO_SIGNED(1985,16),
        5 => TO_SIGNED(-3352,16),
        6 => TO_SIGNED(-202,16),
        7 => TO_SIGNED(609,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_18_cma_k3 : u0_m0_wo0_mtree_madd4_18_cma_romtype := (
        0 => TO_SIGNED(-6281,16),
        1 => TO_SIGNED(3223,16),
        2 => TO_SIGNED(523,16),
        3 => TO_SIGNED(-518,16),
        4 => TO_SIGNED(2796,16),
        5 => TO_SIGNED(-161,16),
        6 => TO_SIGNED(-285,16),
        7 => TO_SIGNED(29,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_18_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_18_cma_s : u0_m0_wo0_mtree_madd4_18_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_18_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_17_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_a : u0_m0_wo0_mtree_madd4_17_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_17_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_17_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_c : u0_m0_wo0_mtree_madd4_17_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_17_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_17_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_d : u0_m0_wo0_mtree_madd4_17_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_17_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_17_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_r : u0_m0_wo0_mtree_madd4_17_cma_r_type;
    type u0_m0_wo0_mtree_madd4_17_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_p : u0_m0_wo0_mtree_madd4_17_cma_p_type;
    type u0_m0_wo0_mtree_madd4_17_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_w : u0_m0_wo0_mtree_madd4_17_cma_w_type;
    type u0_m0_wo0_mtree_madd4_17_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_x : u0_m0_wo0_mtree_madd4_17_cma_x_type;
    type u0_m0_wo0_mtree_madd4_17_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_y : u0_m0_wo0_mtree_madd4_17_cma_y_type;
    type u0_m0_wo0_mtree_madd4_17_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_k0 : u0_m0_wo0_mtree_madd4_17_cma_romtype := (
        0 => TO_SIGNED(-6325,16),
        1 => TO_SIGNED(3757,16),
        2 => TO_SIGNED(527,16),
        3 => TO_SIGNED(-604,16),
        4 => TO_SIGNED(2808,16),
        5 => TO_SIGNED(3324,16),
        6 => TO_SIGNED(-286,16),
        7 => TO_SIGNED(-604,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_17_cma_k1 : u0_m0_wo0_mtree_madd4_17_cma_romtype := (
        0 => TO_SIGNED(-5966,16),
        1 => TO_SIGNED(3611,16),
        2 => TO_SIGNED(497,16),
        3 => TO_SIGNED(-580,16),
        4 => TO_SIGNED(1752,16),
        5 => TO_SIGNED(5392,16),
        6 => TO_SIGNED(-179,16),
        7 => TO_SIGNED(-979,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_17_cma_k2 : u0_m0_wo0_mtree_madd4_17_cma_romtype := (
        0 => TO_SIGNED(-5165,16),
        1 => TO_SIGNED(2711,16),
        2 => TO_SIGNED(430,16),
        3 => TO_SIGNED(-435,16),
        4 => TO_SIGNED(-485,16),
        5 => TO_SIGNED(5092,16),
        6 => TO_SIGNED(49,16),
        7 => TO_SIGNED(-925,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_17_cma_k3 : u0_m0_wo0_mtree_madd4_17_cma_romtype := (
        0 => TO_SIGNED(-3902,16),
        1 => TO_SIGNED(1119,16),
        2 => TO_SIGNED(325,16),
        3 => TO_SIGNED(-179,16),
        4 => TO_SIGNED(-3816,16),
        5 => TO_SIGNED(2904,16),
        6 => TO_SIGNED(389,16),
        7 => TO_SIGNED(-527,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_17_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_17_cma_s : u0_m0_wo0_mtree_madd4_17_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_17_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_16_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_a : u0_m0_wo0_mtree_madd4_16_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_16_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_16_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_c : u0_m0_wo0_mtree_madd4_16_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_16_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_16_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_d : u0_m0_wo0_mtree_madd4_16_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_16_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_16_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_r : u0_m0_wo0_mtree_madd4_16_cma_r_type;
    type u0_m0_wo0_mtree_madd4_16_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_p : u0_m0_wo0_mtree_madd4_16_cma_p_type;
    type u0_m0_wo0_mtree_madd4_16_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_w : u0_m0_wo0_mtree_madd4_16_cma_w_type;
    type u0_m0_wo0_mtree_madd4_16_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_x : u0_m0_wo0_mtree_madd4_16_cma_x_type;
    type u0_m0_wo0_mtree_madd4_16_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_y : u0_m0_wo0_mtree_madd4_16_cma_y_type;
    type u0_m0_wo0_mtree_madd4_16_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_k0 : u0_m0_wo0_mtree_madd4_16_cma_romtype := (
        0 => TO_SIGNED(-2175,16),
        1 => TO_SIGNED(-965,16),
        2 => TO_SIGNED(181,16),
        3 => TO_SIGNED(155,16),
        4 => TO_SIGNED(-7940,16),
        5 => TO_SIGNED(566,16),
        6 => TO_SIGNED(811,16),
        7 => TO_SIGNED(-102,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_16_cma_k1 : u0_m0_wo0_mtree_madd4_16_cma_romtype := (
        0 => TO_SIGNED(-2,16),
        1 => TO_SIGNED(-3219,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(517,16),
        4 => TO_SIGNED(-12363,16),
        5 => TO_SIGNED(5,16),
        6 => TO_SIGNED(1263,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_16_cma_k2 : u0_m0_wo0_mtree_madd4_16_cma_romtype := (
        0 => TO_SIGNED(2574,16),
        1 => TO_SIGNED(-5231,16),
        2 => TO_SIGNED(-214,16),
        3 => TO_SIGNED(840,16),
        4 => TO_SIGNED(-16455,16),
        5 => TO_SIGNED(2024,16),
        6 => TO_SIGNED(1681,16),
        7 => TO_SIGNED(-367,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_16_cma_k3 : u0_m0_wo0_mtree_madd4_16_cma_romtype := (
        0 => TO_SIGNED(5500,16),
        1 => TO_SIGNED(-6564,16),
        2 => TO_SIGNED(-458,16),
        3 => TO_SIGNED(1055,16),
        4 => TO_SIGNED(-19540,16),
        5 => TO_SIGNED(5496,16),
        6 => TO_SIGNED(1996,16),
        7 => TO_SIGNED(-998,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_16_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_16_cma_s : u0_m0_wo0_mtree_madd4_16_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_16_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_15_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_a : u0_m0_wo0_mtree_madd4_15_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_15_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_15_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_c : u0_m0_wo0_mtree_madd4_15_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_15_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_15_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_d : u0_m0_wo0_mtree_madd4_15_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_15_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_15_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_r : u0_m0_wo0_mtree_madd4_15_cma_r_type;
    type u0_m0_wo0_mtree_madd4_15_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_p : u0_m0_wo0_mtree_madd4_15_cma_p_type;
    type u0_m0_wo0_mtree_madd4_15_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_w : u0_m0_wo0_mtree_madd4_15_cma_w_type;
    type u0_m0_wo0_mtree_madd4_15_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_x : u0_m0_wo0_mtree_madd4_15_cma_x_type;
    type u0_m0_wo0_mtree_madd4_15_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_y : u0_m0_wo0_mtree_madd4_15_cma_y_type;
    type u0_m0_wo0_mtree_madd4_15_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_k0 : u0_m0_wo0_mtree_madd4_15_cma_romtype := (
        0 => TO_SIGNED(8697,16),
        1 => TO_SIGNED(-6816,16),
        2 => TO_SIGNED(-724,16),
        3 => TO_SIGNED(1095,16),
        4 => TO_SIGNED(-20991,16),
        5 => TO_SIGNED(7719,16),
        6 => TO_SIGNED(2144,16),
        7 => TO_SIGNED(-1402,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_15_cma_k1 : u0_m0_wo0_mtree_madd4_15_cma_romtype := (
        0 => TO_SIGNED(12071,16),
        1 => TO_SIGNED(-5693,16),
        2 => TO_SIGNED(-1005,16),
        3 => TO_SIGNED(915,16),
        4 => TO_SIGNED(-20338,16),
        5 => TO_SIGNED(5878,16),
        6 => TO_SIGNED(2077,16),
        7 => TO_SIGNED(-1068,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_15_cma_k2 : u0_m0_wo0_mtree_madd4_15_cma_romtype := (
        0 => TO_SIGNED(15516,16),
        1 => TO_SIGNED(-3062,16),
        2 => TO_SIGNED(-1293,16),
        3 => TO_SIGNED(492,16),
        4 => TO_SIGNED(-17345,16),
        5 => TO_SIGNED(-1120,16),
        6 => TO_SIGNED(1772,16),
        7 => TO_SIGNED(203,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_15_cma_k3 : u0_m0_wo0_mtree_madd4_15_cma_romtype := (
        0 => TO_SIGNED(18920,16),
        1 => TO_SIGNED(1018,16),
        2 => TO_SIGNED(-1576,16),
        3 => TO_SIGNED(-163,16),
        4 => TO_SIGNED(-12094,16),
        5 => TO_SIGNED(-11491,16),
        6 => TO_SIGNED(1235,16),
        7 => TO_SIGNED(2087,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_15_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_15_cma_s : u0_m0_wo0_mtree_madd4_15_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_15_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_14_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_a : u0_m0_wo0_mtree_madd4_14_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_14_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_14_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_c : u0_m0_wo0_mtree_madd4_14_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_14_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_14_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_d : u0_m0_wo0_mtree_madd4_14_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_14_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_14_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_r : u0_m0_wo0_mtree_madd4_14_cma_r_type;
    type u0_m0_wo0_mtree_madd4_14_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_p : u0_m0_wo0_mtree_madd4_14_cma_p_type;
    type u0_m0_wo0_mtree_madd4_14_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_w : u0_m0_wo0_mtree_madd4_14_cma_w_type;
    type u0_m0_wo0_mtree_madd4_14_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_x : u0_m0_wo0_mtree_madd4_14_cma_x_type;
    type u0_m0_wo0_mtree_madd4_14_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_y : u0_m0_wo0_mtree_madd4_14_cma_y_type;
    type u0_m0_wo0_mtree_madd4_14_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_k0 : u0_m0_wo0_mtree_madd4_14_cma_romtype := (
        0 => TO_SIGNED(22169,16),
        1 => TO_SIGNED(6286,16),
        2 => TO_SIGNED(-1847,16),
        3 => TO_SIGNED(-1010,16),
        4 => TO_SIGNED(-4942,16),
        5 => TO_SIGNED(-20920,16),
        6 => TO_SIGNED(504,16),
        7 => TO_SIGNED(3800,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_14_cma_k1 : u0_m0_wo0_mtree_madd4_14_cma_romtype := (
        0 => TO_SIGNED(25149,16),
        1 => TO_SIGNED(12295,16),
        2 => TO_SIGNED(-2095,16),
        3 => TO_SIGNED(-1976,16),
        4 => TO_SIGNED(3435,16),
        5 => TO_SIGNED(-24426,16),
        6 => TO_SIGNED(-351,16),
        7 => TO_SIGNED(4437,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_14_cma_k2 : u0_m0_wo0_mtree_madd4_14_cma_romtype := (
        0 => TO_SIGNED(27754,16),
        1 => TO_SIGNED(18462,16),
        2 => TO_SIGNED(-2312,16),
        3 => TO_SIGNED(-2967,16),
        4 => TO_SIGNED(12174,16),
        5 => TO_SIGNED(-18906,16),
        6 => TO_SIGNED(-1243,16),
        7 => TO_SIGNED(3434,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_14_cma_k3 : u0_m0_wo0_mtree_madd4_14_cma_romtype := (
        0 => TO_SIGNED(29883,16),
        1 => TO_SIGNED(24152,16),
        2 => TO_SIGNED(-2490,16),
        3 => TO_SIGNED(-3882,16),
        4 => TO_SIGNED(20323,16),
        5 => TO_SIGNED(-5035,16),
        6 => TO_SIGNED(-2076,16),
        7 => TO_SIGNED(914,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_14_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_14_cma_s : u0_m0_wo0_mtree_madd4_14_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_14_cma_q : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_a : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_b : std_logic_vector(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_o : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmult_a : std_logic_vector (15 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmult_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmult_s1 : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmult_pr : SIGNED (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmult_q : std_logic_vector (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum1_a : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum1_b : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum1_o : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum1_q : std_logic_vector (30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum_final_a : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum_final_b : std_logic_vector(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum_final_o : std_logic_vector (31 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_sum_final_q : std_logic_vector (31 downto 0);
    type u0_m0_wo0_mtree_madd4_12_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_a : u0_m0_wo0_mtree_madd4_12_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_12_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_12_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_c : u0_m0_wo0_mtree_madd4_12_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_12_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_12_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_d : u0_m0_wo0_mtree_madd4_12_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_12_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_12_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_r : u0_m0_wo0_mtree_madd4_12_cma_r_type;
    type u0_m0_wo0_mtree_madd4_12_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_p : u0_m0_wo0_mtree_madd4_12_cma_p_type;
    type u0_m0_wo0_mtree_madd4_12_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_w : u0_m0_wo0_mtree_madd4_12_cma_w_type;
    type u0_m0_wo0_mtree_madd4_12_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_x : u0_m0_wo0_mtree_madd4_12_cma_x_type;
    type u0_m0_wo0_mtree_madd4_12_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_y : u0_m0_wo0_mtree_madd4_12_cma_y_type;
    type u0_m0_wo0_mtree_madd4_12_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_k0 : u0_m0_wo0_mtree_madd4_12_cma_romtype := (
        0 => TO_SIGNED(31466,16),
        1 => TO_SIGNED(28748,16),
        2 => TO_SIGNED(-2622,16),
        3 => TO_SIGNED(-4621,16),
        4 => TO_SIGNED(26946,16),
        5 => TO_SIGNED(12563,16),
        6 => TO_SIGNED(-2753,16),
        7 => TO_SIGNED(-2282,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_12_cma_k1 : u0_m0_wo0_mtree_madd4_12_cma_romtype := (
        0 => TO_SIGNED(29883,16),
        1 => TO_SIGNED(24152,16),
        2 => TO_SIGNED(-2490,16),
        3 => TO_SIGNED(-3882,16),
        4 => TO_SIGNED(20323,16),
        5 => TO_SIGNED(-5035,16),
        6 => TO_SIGNED(-2076,16),
        7 => TO_SIGNED(914,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_12_cma_k2 : u0_m0_wo0_mtree_madd4_12_cma_romtype := (
        0 => TO_SIGNED(27754,16),
        1 => TO_SIGNED(18462,16),
        2 => TO_SIGNED(-2312,16),
        3 => TO_SIGNED(-2967,16),
        4 => TO_SIGNED(12174,16),
        5 => TO_SIGNED(-18906,16),
        6 => TO_SIGNED(-1243,16),
        7 => TO_SIGNED(3434,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_12_cma_k3 : u0_m0_wo0_mtree_madd4_12_cma_romtype := (
        0 => TO_SIGNED(25149,16),
        1 => TO_SIGNED(12295,16),
        2 => TO_SIGNED(-2095,16),
        3 => TO_SIGNED(-1976,16),
        4 => TO_SIGNED(3435,16),
        5 => TO_SIGNED(-24426,16),
        6 => TO_SIGNED(-351,16),
        7 => TO_SIGNED(4437,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_12_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_12_cma_s : u0_m0_wo0_mtree_madd4_12_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_12_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_11_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_a : u0_m0_wo0_mtree_madd4_11_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_11_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_11_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_c : u0_m0_wo0_mtree_madd4_11_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_11_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_11_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_d : u0_m0_wo0_mtree_madd4_11_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_11_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_11_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_r : u0_m0_wo0_mtree_madd4_11_cma_r_type;
    type u0_m0_wo0_mtree_madd4_11_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_p : u0_m0_wo0_mtree_madd4_11_cma_p_type;
    type u0_m0_wo0_mtree_madd4_11_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_w : u0_m0_wo0_mtree_madd4_11_cma_w_type;
    type u0_m0_wo0_mtree_madd4_11_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_x : u0_m0_wo0_mtree_madd4_11_cma_x_type;
    type u0_m0_wo0_mtree_madd4_11_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_y : u0_m0_wo0_mtree_madd4_11_cma_y_type;
    type u0_m0_wo0_mtree_madd4_11_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_k0 : u0_m0_wo0_mtree_madd4_11_cma_romtype := (
        0 => TO_SIGNED(22169,16),
        1 => TO_SIGNED(6286,16),
        2 => TO_SIGNED(-1847,16),
        3 => TO_SIGNED(-1010,16),
        4 => TO_SIGNED(-4942,16),
        5 => TO_SIGNED(-20920,16),
        6 => TO_SIGNED(504,16),
        7 => TO_SIGNED(3800,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_11_cma_k1 : u0_m0_wo0_mtree_madd4_11_cma_romtype := (
        0 => TO_SIGNED(18920,16),
        1 => TO_SIGNED(1018,16),
        2 => TO_SIGNED(-1576,16),
        3 => TO_SIGNED(-163,16),
        4 => TO_SIGNED(-12094,16),
        5 => TO_SIGNED(-11491,16),
        6 => TO_SIGNED(1235,16),
        7 => TO_SIGNED(2087,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_11_cma_k2 : u0_m0_wo0_mtree_madd4_11_cma_romtype := (
        0 => TO_SIGNED(15516,16),
        1 => TO_SIGNED(-3062,16),
        2 => TO_SIGNED(-1293,16),
        3 => TO_SIGNED(492,16),
        4 => TO_SIGNED(-17345,16),
        5 => TO_SIGNED(-1120,16),
        6 => TO_SIGNED(1772,16),
        7 => TO_SIGNED(203,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_11_cma_k3 : u0_m0_wo0_mtree_madd4_11_cma_romtype := (
        0 => TO_SIGNED(12071,16),
        1 => TO_SIGNED(-5693,16),
        2 => TO_SIGNED(-1005,16),
        3 => TO_SIGNED(915,16),
        4 => TO_SIGNED(-20338,16),
        5 => TO_SIGNED(5878,16),
        6 => TO_SIGNED(2077,16),
        7 => TO_SIGNED(-1068,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_11_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_11_cma_s : u0_m0_wo0_mtree_madd4_11_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_11_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_10_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_a : u0_m0_wo0_mtree_madd4_10_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_10_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_10_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_c : u0_m0_wo0_mtree_madd4_10_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_10_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_10_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_d : u0_m0_wo0_mtree_madd4_10_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_10_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_10_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_r : u0_m0_wo0_mtree_madd4_10_cma_r_type;
    type u0_m0_wo0_mtree_madd4_10_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_p : u0_m0_wo0_mtree_madd4_10_cma_p_type;
    type u0_m0_wo0_mtree_madd4_10_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_w : u0_m0_wo0_mtree_madd4_10_cma_w_type;
    type u0_m0_wo0_mtree_madd4_10_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_x : u0_m0_wo0_mtree_madd4_10_cma_x_type;
    type u0_m0_wo0_mtree_madd4_10_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_y : u0_m0_wo0_mtree_madd4_10_cma_y_type;
    type u0_m0_wo0_mtree_madd4_10_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_k0 : u0_m0_wo0_mtree_madd4_10_cma_romtype := (
        0 => TO_SIGNED(8697,16),
        1 => TO_SIGNED(-6816,16),
        2 => TO_SIGNED(-724,16),
        3 => TO_SIGNED(1095,16),
        4 => TO_SIGNED(-20991,16),
        5 => TO_SIGNED(7719,16),
        6 => TO_SIGNED(2144,16),
        7 => TO_SIGNED(-1402,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_10_cma_k1 : u0_m0_wo0_mtree_madd4_10_cma_romtype := (
        0 => TO_SIGNED(5500,16),
        1 => TO_SIGNED(-6564,16),
        2 => TO_SIGNED(-458,16),
        3 => TO_SIGNED(1055,16),
        4 => TO_SIGNED(-19540,16),
        5 => TO_SIGNED(5496,16),
        6 => TO_SIGNED(1996,16),
        7 => TO_SIGNED(-998,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_10_cma_k2 : u0_m0_wo0_mtree_madd4_10_cma_romtype := (
        0 => TO_SIGNED(2574,16),
        1 => TO_SIGNED(-5231,16),
        2 => TO_SIGNED(-214,16),
        3 => TO_SIGNED(840,16),
        4 => TO_SIGNED(-16455,16),
        5 => TO_SIGNED(2024,16),
        6 => TO_SIGNED(1681,16),
        7 => TO_SIGNED(-367,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_10_cma_k3 : u0_m0_wo0_mtree_madd4_10_cma_romtype := (
        0 => TO_SIGNED(-2,16),
        1 => TO_SIGNED(-3219,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(517,16),
        4 => TO_SIGNED(-12363,16),
        5 => TO_SIGNED(5,16),
        6 => TO_SIGNED(1263,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_10_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_10_cma_s : u0_m0_wo0_mtree_madd4_10_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_10_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_9_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_a : u0_m0_wo0_mtree_madd4_9_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_9_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_9_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_c : u0_m0_wo0_mtree_madd4_9_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_9_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_9_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_d : u0_m0_wo0_mtree_madd4_9_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_9_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_9_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_r : u0_m0_wo0_mtree_madd4_9_cma_r_type;
    type u0_m0_wo0_mtree_madd4_9_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_p : u0_m0_wo0_mtree_madd4_9_cma_p_type;
    type u0_m0_wo0_mtree_madd4_9_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_w : u0_m0_wo0_mtree_madd4_9_cma_w_type;
    type u0_m0_wo0_mtree_madd4_9_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_x : u0_m0_wo0_mtree_madd4_9_cma_x_type;
    type u0_m0_wo0_mtree_madd4_9_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_y : u0_m0_wo0_mtree_madd4_9_cma_y_type;
    type u0_m0_wo0_mtree_madd4_9_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_k0 : u0_m0_wo0_mtree_madd4_9_cma_romtype := (
        0 => TO_SIGNED(-2175,16),
        1 => TO_SIGNED(-965,16),
        2 => TO_SIGNED(181,16),
        3 => TO_SIGNED(155,16),
        4 => TO_SIGNED(-7940,16),
        5 => TO_SIGNED(566,16),
        6 => TO_SIGNED(811,16),
        7 => TO_SIGNED(-102,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_9_cma_k1 : u0_m0_wo0_mtree_madd4_9_cma_romtype := (
        0 => TO_SIGNED(-3902,16),
        1 => TO_SIGNED(1119,16),
        2 => TO_SIGNED(325,16),
        3 => TO_SIGNED(-179,16),
        4 => TO_SIGNED(-3816,16),
        5 => TO_SIGNED(2904,16),
        6 => TO_SIGNED(389,16),
        7 => TO_SIGNED(-527,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_9_cma_k2 : u0_m0_wo0_mtree_madd4_9_cma_romtype := (
        0 => TO_SIGNED(-5165,16),
        1 => TO_SIGNED(2711,16),
        2 => TO_SIGNED(430,16),
        3 => TO_SIGNED(-435,16),
        4 => TO_SIGNED(-485,16),
        5 => TO_SIGNED(5092,16),
        6 => TO_SIGNED(49,16),
        7 => TO_SIGNED(-925,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_9_cma_k3 : u0_m0_wo0_mtree_madd4_9_cma_romtype := (
        0 => TO_SIGNED(-5966,16),
        1 => TO_SIGNED(3611,16),
        2 => TO_SIGNED(497,16),
        3 => TO_SIGNED(-580,16),
        4 => TO_SIGNED(1752,16),
        5 => TO_SIGNED(5392,16),
        6 => TO_SIGNED(-179,16),
        7 => TO_SIGNED(-979,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_9_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_9_cma_s : u0_m0_wo0_mtree_madd4_9_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_9_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_8_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_a : u0_m0_wo0_mtree_madd4_8_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_8_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_8_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_c : u0_m0_wo0_mtree_madd4_8_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_8_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_8_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_d : u0_m0_wo0_mtree_madd4_8_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_8_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_8_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_r : u0_m0_wo0_mtree_madd4_8_cma_r_type;
    type u0_m0_wo0_mtree_madd4_8_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_p : u0_m0_wo0_mtree_madd4_8_cma_p_type;
    type u0_m0_wo0_mtree_madd4_8_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_w : u0_m0_wo0_mtree_madd4_8_cma_w_type;
    type u0_m0_wo0_mtree_madd4_8_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_x : u0_m0_wo0_mtree_madd4_8_cma_x_type;
    type u0_m0_wo0_mtree_madd4_8_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_y : u0_m0_wo0_mtree_madd4_8_cma_y_type;
    type u0_m0_wo0_mtree_madd4_8_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_k0 : u0_m0_wo0_mtree_madd4_8_cma_romtype := (
        0 => TO_SIGNED(-6325,16),
        1 => TO_SIGNED(3757,16),
        2 => TO_SIGNED(527,16),
        3 => TO_SIGNED(-604,16),
        4 => TO_SIGNED(2808,16),
        5 => TO_SIGNED(3324,16),
        6 => TO_SIGNED(-286,16),
        7 => TO_SIGNED(-604,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_8_cma_k1 : u0_m0_wo0_mtree_madd4_8_cma_romtype := (
        0 => TO_SIGNED(-6281,16),
        1 => TO_SIGNED(3223,16),
        2 => TO_SIGNED(523,16),
        3 => TO_SIGNED(-518,16),
        4 => TO_SIGNED(2796,16),
        5 => TO_SIGNED(-161,16),
        6 => TO_SIGNED(-285,16),
        7 => TO_SIGNED(29,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_8_cma_k2 : u0_m0_wo0_mtree_madd4_8_cma_romtype := (
        0 => TO_SIGNED(-5887,16),
        1 => TO_SIGNED(2184,16),
        2 => TO_SIGNED(490,16),
        3 => TO_SIGNED(-351,16),
        4 => TO_SIGNED(1985,16),
        5 => TO_SIGNED(-3352,16),
        6 => TO_SIGNED(-202,16),
        7 => TO_SIGNED(609,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_8_cma_k3 : u0_m0_wo0_mtree_madd4_8_cma_romtype := (
        0 => TO_SIGNED(-5206,16),
        1 => TO_SIGNED(882,16),
        2 => TO_SIGNED(433,16),
        3 => TO_SIGNED(-141,16),
        4 => TO_SIGNED(741,16),
        5 => TO_SIGNED(-4832,16),
        6 => TO_SIGNED(-75,16),
        7 => TO_SIGNED(877,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_8_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_8_cma_s : u0_m0_wo0_mtree_madd4_8_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_8_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_7_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_a : u0_m0_wo0_mtree_madd4_7_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_7_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_7_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_c : u0_m0_wo0_mtree_madd4_7_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_7_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_7_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_d : u0_m0_wo0_mtree_madd4_7_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_7_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_7_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_r : u0_m0_wo0_mtree_madd4_7_cma_r_type;
    type u0_m0_wo0_mtree_madd4_7_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_p : u0_m0_wo0_mtree_madd4_7_cma_p_type;
    type u0_m0_wo0_mtree_madd4_7_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_w : u0_m0_wo0_mtree_madd4_7_cma_w_type;
    type u0_m0_wo0_mtree_madd4_7_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_x : u0_m0_wo0_mtree_madd4_7_cma_x_type;
    type u0_m0_wo0_mtree_madd4_7_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_y : u0_m0_wo0_mtree_madd4_7_cma_y_type;
    type u0_m0_wo0_mtree_madd4_7_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_k0 : u0_m0_wo0_mtree_madd4_7_cma_romtype := (
        0 => TO_SIGNED(-4308,16),
        1 => TO_SIGNED(-423,16),
        2 => TO_SIGNED(359,16),
        3 => TO_SIGNED(68,16),
        4 => TO_SIGNED(-553,16),
        5 => TO_SIGNED(-4242,16),
        6 => TO_SIGNED(56,16),
        7 => TO_SIGNED(770,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_7_cma_k1 : u0_m0_wo0_mtree_madd4_7_cma_romtype := (
        0 => TO_SIGNED(-3268,16),
        1 => TO_SIGNED(-1505,16),
        2 => TO_SIGNED(272,16),
        3 => TO_SIGNED(242,16),
        4 => TO_SIGNED(-1564,16),
        5 => TO_SIGNED(-2352,16),
        6 => TO_SIGNED(159,16),
        7 => TO_SIGNED(427,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_7_cma_k2 : u0_m0_wo0_mtree_madd4_7_cma_romtype := (
        0 => TO_SIGNED(-2159,16),
        1 => TO_SIGNED(-2199,16),
        2 => TO_SIGNED(179,16),
        3 => TO_SIGNED(353,16),
        4 => TO_SIGNED(-2051,16),
        5 => TO_SIGNED(-476,16),
        6 => TO_SIGNED(209,16),
        7 => TO_SIGNED(86,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_7_cma_k3 : u0_m0_wo0_mtree_madd4_7_cma_romtype := (
        0 => TO_SIGNED(-1047,16),
        1 => TO_SIGNED(-2424,16),
        2 => TO_SIGNED(87,16),
        3 => TO_SIGNED(389,16),
        4 => TO_SIGNED(-1911,16),
        5 => TO_SIGNED(368,16),
        6 => TO_SIGNED(195,16),
        7 => TO_SIGNED(-66,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_7_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_7_cma_s : u0_m0_wo0_mtree_madd4_7_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_7_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_6_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_a : u0_m0_wo0_mtree_madd4_6_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_6_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_6_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_c : u0_m0_wo0_mtree_madd4_6_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_6_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_6_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_d : u0_m0_wo0_mtree_madd4_6_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_6_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_6_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_r : u0_m0_wo0_mtree_madd4_6_cma_r_type;
    type u0_m0_wo0_mtree_madd4_6_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_p : u0_m0_wo0_mtree_madd4_6_cma_p_type;
    type u0_m0_wo0_mtree_madd4_6_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_w : u0_m0_wo0_mtree_madd4_6_cma_w_type;
    type u0_m0_wo0_mtree_madd4_6_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_x : u0_m0_wo0_mtree_madd4_6_cma_x_type;
    type u0_m0_wo0_mtree_madd4_6_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_y : u0_m0_wo0_mtree_madd4_6_cma_y_type;
    type u0_m0_wo0_mtree_madd4_6_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_k0 : u0_m0_wo0_mtree_madd4_6_cma_romtype := (
        0 => TO_SIGNED(2,16),
        1 => TO_SIGNED(-2193,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(352,16),
        4 => TO_SIGNED(-1171,16),
        5 => TO_SIGNED(1,16),
        6 => TO_SIGNED(119,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_6_cma_k1 : u0_m0_wo0_mtree_madd4_6_cma_romtype := (
        0 => TO_SIGNED(941,16),
        1 => TO_SIGNED(-1595,16),
        2 => TO_SIGNED(-78,16),
        3 => TO_SIGNED(256,16),
        4 => TO_SIGNED(25,16),
        5 => TO_SIGNED(-933,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_6_cma_k2 : u0_m0_wo0_mtree_madd4_6_cma_romtype := (
        0 => TO_SIGNED(1725,16),
        1 => TO_SIGNED(-775,16),
        2 => TO_SIGNED(-143,16),
        3 => TO_SIGNED(124,16),
        4 => TO_SIGNED(1458,16),
        5 => TO_SIGNED(-1484,16),
        6 => TO_SIGNED(-148,16),
        7 => TO_SIGNED(269,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_6_cma_k3 : u0_m0_wo0_mtree_madd4_6_cma_romtype := (
        0 => TO_SIGNED(2327,16),
        1 => TO_SIGNED(96,16),
        2 => TO_SIGNED(-193,16),
        3 => TO_SIGNED(-15,16),
        4 => TO_SIGNED(2876,16),
        5 => TO_SIGNED(-1039,16),
        6 => TO_SIGNED(-293,16),
        7 => TO_SIGNED(188,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_6_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_6_cma_s : u0_m0_wo0_mtree_madd4_6_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_6_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_5_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_a : u0_m0_wo0_mtree_madd4_5_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_5_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_5_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_c : u0_m0_wo0_mtree_madd4_5_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_5_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_5_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_d : u0_m0_wo0_mtree_madd4_5_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_5_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_5_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_r : u0_m0_wo0_mtree_madd4_5_cma_r_type;
    type u0_m0_wo0_mtree_madd4_5_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_p : u0_m0_wo0_mtree_madd4_5_cma_p_type;
    type u0_m0_wo0_mtree_madd4_5_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_w : u0_m0_wo0_mtree_madd4_5_cma_w_type;
    type u0_m0_wo0_mtree_madd4_5_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_x : u0_m0_wo0_mtree_madd4_5_cma_x_type;
    type u0_m0_wo0_mtree_madd4_5_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_y : u0_m0_wo0_mtree_madd4_5_cma_y_type;
    type u0_m0_wo0_mtree_madd4_5_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_k0 : u0_m0_wo0_mtree_madd4_5_cma_romtype := (
        0 => TO_SIGNED(2731,16),
        1 => TO_SIGNED(860,16),
        2 => TO_SIGNED(-227,16),
        3 => TO_SIGNED(-138,16),
        4 => TO_SIGNED(4047,16),
        5 => TO_SIGNED(306,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-55,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_5_cma_k1 : u0_m0_wo0_mtree_madd4_5_cma_romtype := (
        0 => TO_SIGNED(2937,16),
        1 => TO_SIGNED(1390,16),
        2 => TO_SIGNED(-244,16),
        3 => TO_SIGNED(-223,16),
        4 => TO_SIGNED(4796,16),
        5 => TO_SIGNED(1859,16),
        6 => TO_SIGNED(-490,16),
        7 => TO_SIGNED(-337,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_5_cma_k2 : u0_m0_wo0_mtree_madd4_5_cma_romtype := (
        0 => TO_SIGNED(2952,16),
        1 => TO_SIGNED(1617,16),
        2 => TO_SIGNED(-246,16),
        3 => TO_SIGNED(-259,16),
        4 => TO_SIGNED(5031,16),
        5 => TO_SIGNED(2785,16),
        6 => TO_SIGNED(-514,16),
        7 => TO_SIGNED(-506,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_5_cma_k3 : u0_m0_wo0_mtree_madd4_5_cma_romtype := (
        0 => TO_SIGNED(2794,16),
        1 => TO_SIGNED(1530,16),
        2 => TO_SIGNED(-232,16),
        3 => TO_SIGNED(-246,16),
        4 => TO_SIGNED(4753,16),
        5 => TO_SIGNED(2627,16),
        6 => TO_SIGNED(-485,16),
        7 => TO_SIGNED(-477,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_5_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_5_cma_s : u0_m0_wo0_mtree_madd4_5_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_5_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_4_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_a : u0_m0_wo0_mtree_madd4_4_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_4_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_4_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_c : u0_m0_wo0_mtree_madd4_4_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_4_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_4_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_d : u0_m0_wo0_mtree_madd4_4_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_4_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_4_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_r : u0_m0_wo0_mtree_madd4_4_cma_r_type;
    type u0_m0_wo0_mtree_madd4_4_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_p : u0_m0_wo0_mtree_madd4_4_cma_p_type;
    type u0_m0_wo0_mtree_madd4_4_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_w : u0_m0_wo0_mtree_madd4_4_cma_w_type;
    type u0_m0_wo0_mtree_madd4_4_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_x : u0_m0_wo0_mtree_madd4_4_cma_x_type;
    type u0_m0_wo0_mtree_madd4_4_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_y : u0_m0_wo0_mtree_madd4_4_cma_y_type;
    type u0_m0_wo0_mtree_madd4_4_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_k0 : u0_m0_wo0_mtree_madd4_4_cma_romtype := (
        0 => TO_SIGNED(2491,16),
        1 => TO_SIGNED(1178,16),
        2 => TO_SIGNED(-207,16),
        3 => TO_SIGNED(-189,16),
        4 => TO_SIGNED(4045,16),
        5 => TO_SIGNED(1550,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-281,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_4_cma_k1 : u0_m0_wo0_mtree_madd4_4_cma_romtype := (
        0 => TO_SIGNED(2074,16),
        1 => TO_SIGNED(651,16),
        2 => TO_SIGNED(-172,16),
        3 => TO_SIGNED(-104,16),
        4 => TO_SIGNED(3051,16),
        5 => TO_SIGNED(188,16),
        6 => TO_SIGNED(-311,16),
        7 => TO_SIGNED(-34,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_4_cma_k2 : u0_m0_wo0_mtree_madd4_4_cma_romtype := (
        0 => TO_SIGNED(1581,16),
        1 => TO_SIGNED(61,16),
        2 => TO_SIGNED(-131,16),
        3 => TO_SIGNED(-9,16),
        4 => TO_SIGNED(1941,16),
        5 => TO_SIGNED(-774,16),
        6 => TO_SIGNED(-198,16),
        7 => TO_SIGNED(140,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_4_cma_k3 : u0_m0_wo0_mtree_madd4_4_cma_romtype := (
        0 => TO_SIGNED(1046,16),
        1 => TO_SIGNED(-476,16),
        2 => TO_SIGNED(-87,16),
        3 => TO_SIGNED(76,16),
        4 => TO_SIGNED(886,16),
        5 => TO_SIGNED(-998,16),
        6 => TO_SIGNED(-90,16),
        7 => TO_SIGNED(181,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_4_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_4_cma_s : u0_m0_wo0_mtree_madd4_4_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_4_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_3_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_a : u0_m0_wo0_mtree_madd4_3_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_3_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_3_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_c : u0_m0_wo0_mtree_madd4_3_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_3_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_3_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_d : u0_m0_wo0_mtree_madd4_3_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_3_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_3_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_r : u0_m0_wo0_mtree_madd4_3_cma_r_type;
    type u0_m0_wo0_mtree_madd4_3_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_p : u0_m0_wo0_mtree_madd4_3_cma_p_type;
    type u0_m0_wo0_mtree_madd4_3_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_w : u0_m0_wo0_mtree_madd4_3_cma_w_type;
    type u0_m0_wo0_mtree_madd4_3_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_x : u0_m0_wo0_mtree_madd4_3_cma_x_type;
    type u0_m0_wo0_mtree_madd4_3_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_y : u0_m0_wo0_mtree_madd4_3_cma_y_type;
    type u0_m0_wo0_mtree_madd4_3_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_k0 : u0_m0_wo0_mtree_madd4_3_cma_romtype := (
        0 => TO_SIGNED(505,16),
        1 => TO_SIGNED(-873,16),
        2 => TO_SIGNED(-42,16),
        3 => TO_SIGNED(140,16),
        4 => TO_SIGNED(22,16),
        5 => TO_SIGNED(-635,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(115,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_3_cma_k1 : u0_m0_wo0_mtree_madd4_3_cma_romtype := (
        0 => TO_SIGNED(-10,16),
        1 => TO_SIGNED(-1071,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(172,16),
        4 => TO_SIGNED(-567,16),
        5 => TO_SIGNED(-152,16),
        6 => TO_SIGNED(58,16),
        7 => TO_SIGNED(27,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_3_cma_k2 : u0_m0_wo0_mtree_madd4_3_cma_romtype := (
        0 => TO_SIGNED(-474,16),
        1 => TO_SIGNED(-1054,16),
        2 => TO_SIGNED(39,16),
        3 => TO_SIGNED(169,16),
        4 => TO_SIGNED(-851,16),
        5 => TO_SIGNED(8,16),
        6 => TO_SIGNED(86,16),
        7 => TO_SIGNED(-1,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_3_cma_k3 : u0_m0_wo0_mtree_madd4_3_cma_romtype := (
        0 => TO_SIGNED(-867,16),
        1 => TO_SIGNED(-848,16),
        2 => TO_SIGNED(72,16),
        3 => TO_SIGNED(136,16),
        4 => TO_SIGNED(-855,16),
        5 => TO_SIGNED(-305,16),
        6 => TO_SIGNED(87,16),
        7 => TO_SIGNED(55,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_3_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_3_cma_s : u0_m0_wo0_mtree_madd4_3_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_3_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_2_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_a : u0_m0_wo0_mtree_madd4_2_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_2_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_2_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_c : u0_m0_wo0_mtree_madd4_2_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_2_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_2_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_d : u0_m0_wo0_mtree_madd4_2_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_2_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_2_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_r : u0_m0_wo0_mtree_madd4_2_cma_r_type;
    type u0_m0_wo0_mtree_madd4_2_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_p : u0_m0_wo0_mtree_madd4_2_cma_p_type;
    type u0_m0_wo0_mtree_madd4_2_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_w : u0_m0_wo0_mtree_madd4_2_cma_w_type;
    type u0_m0_wo0_mtree_madd4_2_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_x : u0_m0_wo0_mtree_madd4_2_cma_x_type;
    type u0_m0_wo0_mtree_madd4_2_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_y : u0_m0_wo0_mtree_madd4_2_cma_y_type;
    type u0_m0_wo0_mtree_madd4_2_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_k0 : u0_m0_wo0_mtree_madd4_2_cma_romtype := (
        0 => TO_SIGNED(-1178,16),
        1 => TO_SIGNED(-506,16),
        2 => TO_SIGNED(98,16),
        3 => TO_SIGNED(81,16),
        4 => TO_SIGNED(-645,16),
        5 => TO_SIGNED(-930,16),
        6 => TO_SIGNED(65,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_2_cma_k1 : u0_m0_wo0_mtree_madd4_2_cma_romtype := (
        0 => TO_SIGNED(-1407,16),
        1 => TO_SIGNED(-101,16),
        2 => TO_SIGNED(117,16),
        3 => TO_SIGNED(16,16),
        4 => TO_SIGNED(-306,16),
        5 => TO_SIGNED(-1546,16),
        6 => TO_SIGNED(31,16),
        7 => TO_SIGNED(280,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_2_cma_k2 : u0_m0_wo0_mtree_madd4_2_cma_romtype := (
        0 => TO_SIGNED(-1561,16),
        1 => TO_SIGNED(296,16),
        2 => TO_SIGNED(130,16),
        3 => TO_SIGNED(-47,16),
        4 => TO_SIGNED(79,16),
        5 => TO_SIGNED(-1829,16),
        6 => TO_SIGNED(-8,16),
        7 => TO_SIGNED(332,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_2_cma_k3 : u0_m0_wo0_mtree_madd4_2_cma_romtype := (
        0 => TO_SIGNED(-1665,16),
        1 => TO_SIGNED(633,16),
        2 => TO_SIGNED(138,16),
        3 => TO_SIGNED(-101,16),
        4 => TO_SIGNED(444,16),
        5 => TO_SIGNED(-1476,16),
        6 => TO_SIGNED(-45,16),
        7 => TO_SIGNED(268,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_2_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_cma_s : u0_m0_wo0_mtree_madd4_2_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_2_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_1_cma_a_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_a : u0_m0_wo0_mtree_madd4_1_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_1_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_1_cma_c_type is array(0 to 3) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_c : u0_m0_wo0_mtree_madd4_1_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_1_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_1_cma_d_type is array(0 to 3) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_d : u0_m0_wo0_mtree_madd4_1_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_1_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_1_cma_r_type is array(0 to 3) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_r : u0_m0_wo0_mtree_madd4_1_cma_r_type;
    type u0_m0_wo0_mtree_madd4_1_cma_p_type is array(0 to 3) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_p : u0_m0_wo0_mtree_madd4_1_cma_p_type;
    type u0_m0_wo0_mtree_madd4_1_cma_w_type is array(0 to 1) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_w : u0_m0_wo0_mtree_madd4_1_cma_w_type;
    type u0_m0_wo0_mtree_madd4_1_cma_x_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_x : u0_m0_wo0_mtree_madd4_1_cma_x_type;
    type u0_m0_wo0_mtree_madd4_1_cma_y_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_y : u0_m0_wo0_mtree_madd4_1_cma_y_type;
    type u0_m0_wo0_mtree_madd4_1_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_k0 : u0_m0_wo0_mtree_madd4_1_cma_romtype := (
        0 => TO_SIGNED(-1766,16),
        1 => TO_SIGNED(892,16),
        2 => TO_SIGNED(147,16),
        3 => TO_SIGNED(-143,16),
        4 => TO_SIGNED(752,16),
        5 => TO_SIGNED(-311,16),
        6 => TO_SIGNED(-76,16),
        7 => TO_SIGNED(56,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_1_cma_k1 : u0_m0_wo0_mtree_madd4_1_cma_romtype := (
        0 => TO_SIGNED(-1934,16),
        1 => TO_SIGNED(1103,16),
        2 => TO_SIGNED(161,16),
        3 => TO_SIGNED(-177,16),
        4 => TO_SIGNED(994,16),
        5 => TO_SIGNED(1239,16),
        6 => TO_SIGNED(-101,16),
        7 => TO_SIGNED(-225,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_1_cma_k2 : u0_m0_wo0_mtree_madd4_1_cma_romtype := (
        0 => TO_SIGNED(-2291,16),
        1 => TO_SIGNED(1370,16),
        2 => TO_SIGNED(190,16),
        3 => TO_SIGNED(-220,16),
        4 => TO_SIGNED(1186,16),
        5 => TO_SIGNED(1641,16),
        6 => TO_SIGNED(-121,16),
        7 => TO_SIGNED(-298,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_1_cma_k3 : u0_m0_wo0_mtree_madd4_1_cma_romtype := (
        0 => TO_SIGNED(-3036,16),
        1 => TO_SIGNED(1909,16),
        2 => TO_SIGNED(253,16),
        3 => TO_SIGNED(-307,16),
        4 => TO_SIGNED(1358,16),
        5 => TO_SIGNED(-963,16),
        6 => TO_SIGNED(-138,16),
        7 => TO_SIGNED(175,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_1_cma_s_type is array(0 to 0) of SIGNED(31 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_cma_s : u0_m0_wo0_mtree_madd4_1_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_1_cma_q : std_logic_vector(31 downto 0);
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a_type is array(0 to 1) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a : signal is true;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c_type is array(0 to 1) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c : signal is true;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d_type is array(0 to 1) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d_type;
    attribute preserve of u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d : signal is true;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r_type is array(0 to 1) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r_type;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p_type is array(0 to 1) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p_type;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_w_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_w : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_w_type;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_x_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_x : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_x_type;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_y_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_y : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_y_type;
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_romtype is array(0 to 7) of SIGNED(15 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k0 : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_romtype := (
        0 => TO_SIGNED(31466,16),
        1 => TO_SIGNED(28748,16),
        2 => TO_SIGNED(-2622,16),
        3 => TO_SIGNED(-4621,16),
        4 => TO_SIGNED(26946,16),
        5 => TO_SIGNED(12563,16),
        6 => TO_SIGNED(-2753,16),
        7 => TO_SIGNED(-2282,16),
        others => (others => '0'));
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k1 : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_romtype := (
        0 => TO_SIGNED(32445,16),
        1 => TO_SIGNED(31729,16),
        2 => TO_SIGNED(-2703,16),
        3 => TO_SIGNED(-5100,16),
        4 => TO_SIGNED(31267,16),
        5 => TO_SIGNED(27133,16),
        6 => TO_SIGNED(-3194,16),
        7 => TO_SIGNED(-4929,16),
        others => (others => '0'));
    type u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s : u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s_type;
    signal u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_q : std_logic_vector(30 downto 0);
    signal xIn_bankIn_0_q : std_logic_vector (16 downto 0);
    signal data_u0_m0_wi0_wo0_in : std_logic_vector (13 downto 0);
    signal data_u0_m0_wi0_wo0_b : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q_int : std_logic_vector (28 downto 0);
    signal u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q : std_logic_vector (28 downto 0);
    signal bank_u0_m0_wi0_wo0_in : std_logic_vector (16 downto 0);
    signal bank_u0_m0_wi0_wo0_b : std_logic_vector (2 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--xIn(PORTIN,2)@10

	--d_u0_m0_wo0_memread_q_11(DELAY,403)@10
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_memread_q_12(DELAY,404)@11
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_memread_q_13(DELAY,405)@12
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_12_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_memread_q_15(DELAY,406)@13
    d_u0_m0_wo0_memread_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => d_u0_m0_wo0_memread_q_15_q, clk => clk, aclr => areset );

	--xIn_bankIn_0(BITJOIN,3)@10
    xIn_bankIn_0_q <= bankIn_0 & xIn_0;

	--d_in0_m0_wi0_wo0_assign_data_q_11(DELAY,401)@10
    d_in0_m0_wi0_wo0_assign_data_q_11 : dspba_delay
    GENERIC MAP ( width => 17, depth => 1 )
    PORT MAP ( xin => xIn_bankIn_0_q, xout => d_in0_m0_wi0_wo0_assign_data_q_11_q, clk => clk, aclr => areset );

	--data_u0_m0_wi0_wo0(BITSELECT,7)@11
    data_u0_m0_wi0_wo0_in <= d_in0_m0_wi0_wo0_assign_data_q_11_q(13 downto 0);
    data_u0_m0_wi0_wo0_b <= data_u0_m0_wi0_wo0_in(13 downto 0);

	--u0_m0_wo0_wi0_delayr1(DELAY,11)@11
    u0_m0_wo0_wi0_delayr1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => data_u0_m0_wi0_wo0_b, xout => u0_m0_wo0_wi0_delayr1_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr2(DELAY,12)@11
    u0_m0_wo0_wi0_delayr2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => u0_m0_wo0_wi0_delayr2_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr3(DELAY,13)@11
    u0_m0_wo0_wi0_delayr3 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => u0_m0_wo0_wi0_delayr3_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr4(DELAY,14)@11
    u0_m0_wo0_wi0_delayr4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => u0_m0_wo0_wi0_delayr4_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr5(DELAY,15)@11
    u0_m0_wo0_wi0_delayr5 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => u0_m0_wo0_wi0_delayr5_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr6(DELAY,16)@11
    u0_m0_wo0_wi0_delayr6 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => u0_m0_wo0_wi0_delayr6_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr7(DELAY,17)@11
    u0_m0_wo0_wi0_delayr7 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => u0_m0_wo0_wi0_delayr7_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr8(DELAY,18)@11
    u0_m0_wo0_wi0_delayr8 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => u0_m0_wo0_wi0_delayr8_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr9(DELAY,19)@11
    u0_m0_wo0_wi0_delayr9 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => u0_m0_wo0_wi0_delayr9_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr10(DELAY,20)@11
    u0_m0_wo0_wi0_delayr10 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => u0_m0_wo0_wi0_delayr10_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr11(DELAY,21)@11
    u0_m0_wo0_wi0_delayr11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => u0_m0_wo0_wi0_delayr11_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr12(DELAY,22)@11
    u0_m0_wo0_wi0_delayr12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => u0_m0_wo0_wi0_delayr12_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr13(DELAY,23)@11
    u0_m0_wo0_wi0_delayr13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => u0_m0_wo0_wi0_delayr13_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr14(DELAY,24)@11
    u0_m0_wo0_wi0_delayr14 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => u0_m0_wo0_wi0_delayr14_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr15(DELAY,25)@11
    u0_m0_wo0_wi0_delayr15 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => u0_m0_wo0_wi0_delayr15_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr16(DELAY,26)@11
    u0_m0_wo0_wi0_delayr16 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => u0_m0_wo0_wi0_delayr16_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr17(DELAY,27)@11
    u0_m0_wo0_wi0_delayr17 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => u0_m0_wo0_wi0_delayr17_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr18(DELAY,28)@11
    u0_m0_wo0_wi0_delayr18 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => u0_m0_wo0_wi0_delayr18_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr19(DELAY,29)@11
    u0_m0_wo0_wi0_delayr19 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => u0_m0_wo0_wi0_delayr19_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr20(DELAY,30)@11
    u0_m0_wo0_wi0_delayr20 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => u0_m0_wo0_wi0_delayr20_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr21(DELAY,31)@11
    u0_m0_wo0_wi0_delayr21 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => u0_m0_wo0_wi0_delayr21_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr22(DELAY,32)@11
    u0_m0_wo0_wi0_delayr22 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => u0_m0_wo0_wi0_delayr22_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr23(DELAY,33)@11
    u0_m0_wo0_wi0_delayr23 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => u0_m0_wo0_wi0_delayr23_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr24(DELAY,34)@11
    u0_m0_wo0_wi0_delayr24 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => u0_m0_wo0_wi0_delayr24_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr25(DELAY,35)@11
    u0_m0_wo0_wi0_delayr25 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => u0_m0_wo0_wi0_delayr25_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr26(DELAY,36)@11
    u0_m0_wo0_wi0_delayr26 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => u0_m0_wo0_wi0_delayr26_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr27(DELAY,37)@11
    u0_m0_wo0_wi0_delayr27 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr26_q, xout => u0_m0_wo0_wi0_delayr27_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr28(DELAY,38)@11
    u0_m0_wo0_wi0_delayr28 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr27_q, xout => u0_m0_wo0_wi0_delayr28_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr29(DELAY,39)@11
    u0_m0_wo0_wi0_delayr29 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr28_q, xout => u0_m0_wo0_wi0_delayr29_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr30(DELAY,40)@11
    u0_m0_wo0_wi0_delayr30 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => u0_m0_wo0_wi0_delayr30_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr31(DELAY,41)@11
    u0_m0_wo0_wi0_delayr31 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr30_q, xout => u0_m0_wo0_wi0_delayr31_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr32(DELAY,42)@11
    u0_m0_wo0_wi0_delayr32 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr31_q, xout => u0_m0_wo0_wi0_delayr32_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr33(DELAY,43)@11
    u0_m0_wo0_wi0_delayr33 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr32_q, xout => u0_m0_wo0_wi0_delayr33_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr34(DELAY,44)@11
    u0_m0_wo0_wi0_delayr34 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => u0_m0_wo0_wi0_delayr34_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr35(DELAY,45)@11
    u0_m0_wo0_wi0_delayr35 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr34_q, xout => u0_m0_wo0_wi0_delayr35_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr36(DELAY,46)@11
    u0_m0_wo0_wi0_delayr36 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr35_q, xout => u0_m0_wo0_wi0_delayr36_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr37(DELAY,47)@11
    u0_m0_wo0_wi0_delayr37 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr36_q, xout => u0_m0_wo0_wi0_delayr37_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr38(DELAY,48)@11
    u0_m0_wo0_wi0_delayr38 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr37_q, xout => u0_m0_wo0_wi0_delayr38_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr39(DELAY,49)@11
    u0_m0_wo0_wi0_delayr39 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr38_q, xout => u0_m0_wo0_wi0_delayr39_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr40(DELAY,50)@11
    u0_m0_wo0_wi0_delayr40 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr39_q, xout => u0_m0_wo0_wi0_delayr40_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr41(DELAY,51)@11
    u0_m0_wo0_wi0_delayr41 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr40_q, xout => u0_m0_wo0_wi0_delayr41_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr42(DELAY,52)@11
    u0_m0_wo0_wi0_delayr42 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr41_q, xout => u0_m0_wo0_wi0_delayr42_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr43(DELAY,53)@11
    u0_m0_wo0_wi0_delayr43 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr42_q, xout => u0_m0_wo0_wi0_delayr43_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr44(DELAY,54)@11
    u0_m0_wo0_wi0_delayr44 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr43_q, xout => u0_m0_wo0_wi0_delayr44_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr45(DELAY,55)@11
    u0_m0_wo0_wi0_delayr45 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr44_q, xout => u0_m0_wo0_wi0_delayr45_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr46(DELAY,56)@11
    u0_m0_wo0_wi0_delayr46 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr45_q, xout => u0_m0_wo0_wi0_delayr46_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr47(DELAY,57)@11
    u0_m0_wo0_wi0_delayr47 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr46_q, xout => u0_m0_wo0_wi0_delayr47_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr48(DELAY,58)@11
    u0_m0_wo0_wi0_delayr48 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr47_q, xout => u0_m0_wo0_wi0_delayr48_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr49(DELAY,59)@11
    u0_m0_wo0_wi0_delayr49 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr48_q, xout => u0_m0_wo0_wi0_delayr49_q, ena => d_u0_m0_wo0_memread_q_11_q(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr49_q_12(DELAY,457)@11
    d_u0_m0_wo0_wi0_delayr49_q_12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr49_q, xout => d_u0_m0_wo0_wi0_delayr49_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr50(DELAY,60)@12
    u0_m0_wo0_wi0_delayr50 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr49_q_12_q, xout => u0_m0_wo0_wi0_delayr50_q, ena => d_u0_m0_wo0_memread_q_12_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr51(DELAY,61)@12
    u0_m0_wo0_wi0_delayr51 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr50_q, xout => u0_m0_wo0_wi0_delayr51_q, ena => d_u0_m0_wo0_memread_q_12_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr52(DELAY,62)@12
    u0_m0_wo0_wi0_delayr52 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr51_q, xout => u0_m0_wo0_wi0_delayr52_q, ena => d_u0_m0_wo0_memread_q_12_q(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr52_q_13(DELAY,458)@12
    d_u0_m0_wo0_wi0_delayr52_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr52_q, xout => d_u0_m0_wo0_wi0_delayr52_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr53(DELAY,63)@13
    u0_m0_wo0_wi0_delayr53 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr52_q_13_q, xout => u0_m0_wo0_wi0_delayr53_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr54(DELAY,64)@13
    u0_m0_wo0_wi0_delayr54 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr53_q, xout => u0_m0_wo0_wi0_delayr54_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr55(DELAY,65)@13
    u0_m0_wo0_wi0_delayr55 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr54_q, xout => u0_m0_wo0_wi0_delayr55_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr56(DELAY,66)@13
    u0_m0_wo0_wi0_delayr56 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr55_q, xout => u0_m0_wo0_wi0_delayr56_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr57(DELAY,67)@13
    u0_m0_wo0_wi0_delayr57 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr56_q, xout => u0_m0_wo0_wi0_delayr57_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr58(DELAY,68)@13
    u0_m0_wo0_wi0_delayr58 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr57_q, xout => u0_m0_wo0_wi0_delayr58_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr59(DELAY,69)@13
    u0_m0_wo0_wi0_delayr59 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr58_q, xout => u0_m0_wo0_wi0_delayr59_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr60(DELAY,70)@13
    u0_m0_wo0_wi0_delayr60 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr59_q, xout => u0_m0_wo0_wi0_delayr60_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr61(DELAY,71)@13
    u0_m0_wo0_wi0_delayr61 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr60_q, xout => u0_m0_wo0_wi0_delayr61_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr62(DELAY,72)@13
    u0_m0_wo0_wi0_delayr62 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr61_q, xout => u0_m0_wo0_wi0_delayr62_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr63(DELAY,73)@13
    u0_m0_wo0_wi0_delayr63 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr62_q, xout => u0_m0_wo0_wi0_delayr63_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr64(DELAY,74)@13
    u0_m0_wo0_wi0_delayr64 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr63_q, xout => u0_m0_wo0_wi0_delayr64_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr65(DELAY,75)@13
    u0_m0_wo0_wi0_delayr65 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr64_q, xout => u0_m0_wo0_wi0_delayr65_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr66(DELAY,76)@13
    u0_m0_wo0_wi0_delayr66 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr65_q, xout => u0_m0_wo0_wi0_delayr66_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr67(DELAY,77)@13
    u0_m0_wo0_wi0_delayr67 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr66_q, xout => u0_m0_wo0_wi0_delayr67_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr68(DELAY,78)@13
    u0_m0_wo0_wi0_delayr68 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr67_q, xout => u0_m0_wo0_wi0_delayr68_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr69(DELAY,79)@13
    u0_m0_wo0_wi0_delayr69 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr68_q, xout => u0_m0_wo0_wi0_delayr69_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr70(DELAY,80)@13
    u0_m0_wo0_wi0_delayr70 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr69_q, xout => u0_m0_wo0_wi0_delayr70_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr71(DELAY,81)@13
    u0_m0_wo0_wi0_delayr71 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr70_q, xout => u0_m0_wo0_wi0_delayr71_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr72(DELAY,82)@13
    u0_m0_wo0_wi0_delayr72 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr71_q, xout => u0_m0_wo0_wi0_delayr72_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr73(DELAY,83)@13
    u0_m0_wo0_wi0_delayr73 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr72_q, xout => u0_m0_wo0_wi0_delayr73_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr74(DELAY,84)@13
    u0_m0_wo0_wi0_delayr74 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr73_q, xout => u0_m0_wo0_wi0_delayr74_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr75(DELAY,85)@13
    u0_m0_wo0_wi0_delayr75 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr74_q, xout => u0_m0_wo0_wi0_delayr75_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr76(DELAY,86)@13
    u0_m0_wo0_wi0_delayr76 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr75_q, xout => u0_m0_wo0_wi0_delayr76_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr77(DELAY,87)@13
    u0_m0_wo0_wi0_delayr77 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr76_q, xout => u0_m0_wo0_wi0_delayr77_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr78(DELAY,88)@13
    u0_m0_wo0_wi0_delayr78 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr77_q, xout => u0_m0_wo0_wi0_delayr78_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr79(DELAY,89)@13
    u0_m0_wo0_wi0_delayr79 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr78_q, xout => u0_m0_wo0_wi0_delayr79_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr80(DELAY,90)@13
    u0_m0_wo0_wi0_delayr80 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr79_q, xout => u0_m0_wo0_wi0_delayr80_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr81(DELAY,91)@13
    u0_m0_wo0_wi0_delayr81 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr80_q, xout => u0_m0_wo0_wi0_delayr81_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr82(DELAY,92)@13
    u0_m0_wo0_wi0_delayr82 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr81_q, xout => u0_m0_wo0_wi0_delayr82_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr83(DELAY,93)@13
    u0_m0_wo0_wi0_delayr83 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr82_q, xout => u0_m0_wo0_wi0_delayr83_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr84(DELAY,94)@13
    u0_m0_wo0_wi0_delayr84 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr83_q, xout => u0_m0_wo0_wi0_delayr84_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr85(DELAY,95)@13
    u0_m0_wo0_wi0_delayr85 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr84_q, xout => u0_m0_wo0_wi0_delayr85_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr86(DELAY,96)@13
    u0_m0_wo0_wi0_delayr86 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr85_q, xout => u0_m0_wo0_wi0_delayr86_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr87(DELAY,97)@13
    u0_m0_wo0_wi0_delayr87 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr86_q, xout => u0_m0_wo0_wi0_delayr87_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr88(DELAY,98)@13
    u0_m0_wo0_wi0_delayr88 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr87_q, xout => u0_m0_wo0_wi0_delayr88_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr89(DELAY,99)@13
    u0_m0_wo0_wi0_delayr89 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr88_q, xout => u0_m0_wo0_wi0_delayr89_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr90(DELAY,100)@13
    u0_m0_wo0_wi0_delayr90 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr89_q, xout => u0_m0_wo0_wi0_delayr90_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr91(DELAY,101)@13
    u0_m0_wo0_wi0_delayr91 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr90_q, xout => u0_m0_wo0_wi0_delayr91_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr92(DELAY,102)@13
    u0_m0_wo0_wi0_delayr92 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr91_q, xout => u0_m0_wo0_wi0_delayr92_q, ena => d_u0_m0_wo0_memread_q_13_q(0), clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr92_q_15(DELAY,459)@13
    d_u0_m0_wo0_wi0_delayr92_q_15 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr92_q, xout => d_u0_m0_wo0_wi0_delayr92_q_15_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr93(DELAY,103)@15
    u0_m0_wo0_wi0_delayr93 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_delayr92_q_15_q, xout => u0_m0_wo0_wi0_delayr93_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr94(DELAY,104)@15
    u0_m0_wo0_wi0_delayr94 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr93_q, xout => u0_m0_wo0_wi0_delayr94_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr95(DELAY,105)@15
    u0_m0_wo0_wi0_delayr95 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr94_q, xout => u0_m0_wo0_wi0_delayr95_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr96(DELAY,106)@15
    u0_m0_wo0_wi0_delayr96 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr95_q, xout => u0_m0_wo0_wi0_delayr96_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr97(DELAY,107)@15
    u0_m0_wo0_wi0_delayr97 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr96_q, xout => u0_m0_wo0_wi0_delayr97_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr98(DELAY,108)@15
    u0_m0_wo0_wi0_delayr98 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr97_q, xout => u0_m0_wo0_wi0_delayr98_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr99(DELAY,109)@15
    u0_m0_wo0_wi0_delayr99 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr98_q, xout => u0_m0_wo0_wi0_delayr99_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--bank_u0_m0_wi0_wo0(BITSELECT,6)@10
    bank_u0_m0_wi0_wo0_in <= xIn_bankIn_0_q;
    bank_u0_m0_wi0_wo0_b <= bank_u0_m0_wi0_wo0_in(16 downto 14);

	--d_u0_m0_wo0_bank_phasedelay0_q_15(DELAY,460)@10
    d_u0_m0_wo0_bank_phasedelay0_q_15 : dspba_delay
    GENERIC MAP ( width => 3, depth => 5 )
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_phasedelay0_q_15_q, clk => clk, aclr => areset );

	--u0_m0_wo0_wi0_delayr100(DELAY,110)@15
    u0_m0_wo0_wi0_delayr100 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr99_q, xout => u0_m0_wo0_wi0_delayr100_q, ena => d_u0_m0_wo0_memread_q_15_q(0), clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_25_cma(CHAINMULTADD,370)@15
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_25_cma_k0 <= (
        0 => TO_SIGNED(3231,16),
        1 => TO_SIGNED(-1556,16),
        2 => TO_SIGNED(-269,16),
        3 => TO_SIGNED(250,16),
        4 => TO_SIGNED(-5427,16),
        5 => TO_SIGNED(1016,16),
        6 => TO_SIGNED(554,16),
        7 => TO_SIGNED(-184,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_25_cma_k1 <= (
        0 => TO_SIGNED(-3036,16),
        1 => TO_SIGNED(1909,16),
        2 => TO_SIGNED(253,16),
        3 => TO_SIGNED(-307,16),
        4 => TO_SIGNED(1358,16),
        5 => TO_SIGNED(-963,16),
        6 => TO_SIGNED(-138,16),
        7 => TO_SIGNED(175,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_25_cma_k2 <= (
        0 => TO_SIGNED(-2291,16),
        1 => TO_SIGNED(1370,16),
        2 => TO_SIGNED(190,16),
        3 => TO_SIGNED(-220,16),
        4 => TO_SIGNED(1186,16),
        5 => TO_SIGNED(1641,16),
        6 => TO_SIGNED(-121,16),
        7 => TO_SIGNED(-298,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_25_cma_k3 <= (
        0 => TO_SIGNED(-1934,16),
        1 => TO_SIGNED(1103,16),
        2 => TO_SIGNED(161,16),
        3 => TO_SIGNED(-177,16),
        4 => TO_SIGNED(994,16),
        5 => TO_SIGNED(1239,16),
        6 => TO_SIGNED(-101,16),
        7 => TO_SIGNED(-225,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_25_cma_r(0) <= u0_m0_wo0_mtree_madd4_25_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_25_cma_c(0)));
    u0_m0_wo0_mtree_madd4_25_cma_r(1) <= u0_m0_wo0_mtree_madd4_25_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_25_cma_c(1)));
    u0_m0_wo0_mtree_madd4_25_cma_r(2) <= u0_m0_wo0_mtree_madd4_25_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_25_cma_c(2)));
    u0_m0_wo0_mtree_madd4_25_cma_r(3) <= u0_m0_wo0_mtree_madd4_25_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_25_cma_c(3)));
    u0_m0_wo0_mtree_madd4_25_cma_p(0) <= u0_m0_wo0_mtree_madd4_25_cma_a(0) * u0_m0_wo0_mtree_madd4_25_cma_r(0);
    u0_m0_wo0_mtree_madd4_25_cma_p(1) <= u0_m0_wo0_mtree_madd4_25_cma_a(1) * u0_m0_wo0_mtree_madd4_25_cma_r(1);
    u0_m0_wo0_mtree_madd4_25_cma_p(2) <= u0_m0_wo0_mtree_madd4_25_cma_a(2) * u0_m0_wo0_mtree_madd4_25_cma_r(2);
    u0_m0_wo0_mtree_madd4_25_cma_p(3) <= u0_m0_wo0_mtree_madd4_25_cma_a(3) * u0_m0_wo0_mtree_madd4_25_cma_r(3);
    u0_m0_wo0_mtree_madd4_25_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_25_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_25_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_25_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_25_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_25_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_25_cma_x(0) <= u0_m0_wo0_mtree_madd4_25_cma_w(0) + u0_m0_wo0_mtree_madd4_25_cma_w(1);
    u0_m0_wo0_mtree_madd4_25_cma_y(0) <= u0_m0_wo0_mtree_madd4_25_cma_x(0);
    u0_m0_wo0_mtree_madd4_25_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_25_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_25_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_25_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_25_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_25_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr100_q),14);
            u0_m0_wo0_mtree_madd4_25_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr99_q),14);
            u0_m0_wo0_mtree_madd4_25_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr98_q),14);
            u0_m0_wo0_mtree_madd4_25_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr97_q),14);
            u0_m0_wo0_mtree_madd4_25_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_25_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_25_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_25_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_25_cma_d(0) <= u0_m0_wo0_mtree_madd4_25_cma_a(0);
            u0_m0_wo0_mtree_madd4_25_cma_d(1) <= u0_m0_wo0_mtree_madd4_25_cma_a(1);
            u0_m0_wo0_mtree_madd4_25_cma_d(2) <= u0_m0_wo0_mtree_madd4_25_cma_a(2);
            u0_m0_wo0_mtree_madd4_25_cma_d(3) <= u0_m0_wo0_mtree_madd4_25_cma_a(3);
            u0_m0_wo0_mtree_madd4_25_cma_s(0) <= u0_m0_wo0_mtree_madd4_25_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_25_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_25_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_25_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_24_cma(CHAINMULTADD,371)@15
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_24_cma_k0 <= (
        0 => TO_SIGNED(-1766,16),
        1 => TO_SIGNED(892,16),
        2 => TO_SIGNED(147,16),
        3 => TO_SIGNED(-143,16),
        4 => TO_SIGNED(752,16),
        5 => TO_SIGNED(-311,16),
        6 => TO_SIGNED(-76,16),
        7 => TO_SIGNED(56,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_24_cma_k1 <= (
        0 => TO_SIGNED(-1665,16),
        1 => TO_SIGNED(633,16),
        2 => TO_SIGNED(138,16),
        3 => TO_SIGNED(-101,16),
        4 => TO_SIGNED(444,16),
        5 => TO_SIGNED(-1476,16),
        6 => TO_SIGNED(-45,16),
        7 => TO_SIGNED(268,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_24_cma_k2 <= (
        0 => TO_SIGNED(-1561,16),
        1 => TO_SIGNED(296,16),
        2 => TO_SIGNED(130,16),
        3 => TO_SIGNED(-47,16),
        4 => TO_SIGNED(79,16),
        5 => TO_SIGNED(-1829,16),
        6 => TO_SIGNED(-8,16),
        7 => TO_SIGNED(332,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_24_cma_k3 <= (
        0 => TO_SIGNED(-1407,16),
        1 => TO_SIGNED(-101,16),
        2 => TO_SIGNED(117,16),
        3 => TO_SIGNED(16,16),
        4 => TO_SIGNED(-306,16),
        5 => TO_SIGNED(-1546,16),
        6 => TO_SIGNED(31,16),
        7 => TO_SIGNED(280,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_24_cma_r(0) <= u0_m0_wo0_mtree_madd4_24_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_24_cma_c(0)));
    u0_m0_wo0_mtree_madd4_24_cma_r(1) <= u0_m0_wo0_mtree_madd4_24_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_24_cma_c(1)));
    u0_m0_wo0_mtree_madd4_24_cma_r(2) <= u0_m0_wo0_mtree_madd4_24_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_24_cma_c(2)));
    u0_m0_wo0_mtree_madd4_24_cma_r(3) <= u0_m0_wo0_mtree_madd4_24_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_24_cma_c(3)));
    u0_m0_wo0_mtree_madd4_24_cma_p(0) <= u0_m0_wo0_mtree_madd4_24_cma_a(0) * u0_m0_wo0_mtree_madd4_24_cma_r(0);
    u0_m0_wo0_mtree_madd4_24_cma_p(1) <= u0_m0_wo0_mtree_madd4_24_cma_a(1) * u0_m0_wo0_mtree_madd4_24_cma_r(1);
    u0_m0_wo0_mtree_madd4_24_cma_p(2) <= u0_m0_wo0_mtree_madd4_24_cma_a(2) * u0_m0_wo0_mtree_madd4_24_cma_r(2);
    u0_m0_wo0_mtree_madd4_24_cma_p(3) <= u0_m0_wo0_mtree_madd4_24_cma_a(3) * u0_m0_wo0_mtree_madd4_24_cma_r(3);
    u0_m0_wo0_mtree_madd4_24_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_24_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_24_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_24_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_24_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_24_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_24_cma_x(0) <= u0_m0_wo0_mtree_madd4_24_cma_w(0) + u0_m0_wo0_mtree_madd4_24_cma_w(1);
    u0_m0_wo0_mtree_madd4_24_cma_y(0) <= u0_m0_wo0_mtree_madd4_24_cma_x(0);
    u0_m0_wo0_mtree_madd4_24_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_24_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_24_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_24_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_24_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_24_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr96_q),14);
            u0_m0_wo0_mtree_madd4_24_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr95_q),14);
            u0_m0_wo0_mtree_madd4_24_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr94_q),14);
            u0_m0_wo0_mtree_madd4_24_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr93_q),14);
            u0_m0_wo0_mtree_madd4_24_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_24_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_24_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_24_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_phasedelay0_q_15_q),3);
            u0_m0_wo0_mtree_madd4_24_cma_d(0) <= u0_m0_wo0_mtree_madd4_24_cma_a(0);
            u0_m0_wo0_mtree_madd4_24_cma_d(1) <= u0_m0_wo0_mtree_madd4_24_cma_a(1);
            u0_m0_wo0_mtree_madd4_24_cma_d(2) <= u0_m0_wo0_mtree_madd4_24_cma_a(2);
            u0_m0_wo0_mtree_madd4_24_cma_d(3) <= u0_m0_wo0_mtree_madd4_24_cma_a(3);
            u0_m0_wo0_mtree_madd4_24_cma_s(0) <= u0_m0_wo0_mtree_madd4_24_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_24_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_24_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_24_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_12(ADD,352)@17
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_24_cma_q(31)) & u0_m0_wo0_mtree_madd4_24_cma_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_25_cma_q(31)) & u0_m0_wo0_mtree_madd4_25_cma_q);
    u0_m0_wo0_mtree_add0_12: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(32 downto 0);


	--d_u0_m0_wo0_bank_delayr8_q_13(DELAY,468)@10
    d_u0_m0_wo0_bank_delayr8_q_13 : dspba_delay
    GENERIC MAP ( width => 3, depth => 3 )
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_delayr8_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_23_cma(CHAINMULTADD,372)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_23_cma_k0 <= (
        0 => TO_SIGNED(-1178,16),
        1 => TO_SIGNED(-506,16),
        2 => TO_SIGNED(98,16),
        3 => TO_SIGNED(81,16),
        4 => TO_SIGNED(-645,16),
        5 => TO_SIGNED(-930,16),
        6 => TO_SIGNED(65,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_23_cma_k1 <= (
        0 => TO_SIGNED(-867,16),
        1 => TO_SIGNED(-848,16),
        2 => TO_SIGNED(72,16),
        3 => TO_SIGNED(136,16),
        4 => TO_SIGNED(-855,16),
        5 => TO_SIGNED(-305,16),
        6 => TO_SIGNED(87,16),
        7 => TO_SIGNED(55,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_23_cma_k2 <= (
        0 => TO_SIGNED(-474,16),
        1 => TO_SIGNED(-1054,16),
        2 => TO_SIGNED(39,16),
        3 => TO_SIGNED(169,16),
        4 => TO_SIGNED(-851,16),
        5 => TO_SIGNED(8,16),
        6 => TO_SIGNED(86,16),
        7 => TO_SIGNED(-1,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_23_cma_k3 <= (
        0 => TO_SIGNED(-10,16),
        1 => TO_SIGNED(-1071,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(172,16),
        4 => TO_SIGNED(-567,16),
        5 => TO_SIGNED(-152,16),
        6 => TO_SIGNED(58,16),
        7 => TO_SIGNED(27,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_23_cma_r(0) <= u0_m0_wo0_mtree_madd4_23_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_23_cma_c(0)));
    u0_m0_wo0_mtree_madd4_23_cma_r(1) <= u0_m0_wo0_mtree_madd4_23_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_23_cma_c(1)));
    u0_m0_wo0_mtree_madd4_23_cma_r(2) <= u0_m0_wo0_mtree_madd4_23_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_23_cma_c(2)));
    u0_m0_wo0_mtree_madd4_23_cma_r(3) <= u0_m0_wo0_mtree_madd4_23_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_23_cma_c(3)));
    u0_m0_wo0_mtree_madd4_23_cma_p(0) <= u0_m0_wo0_mtree_madd4_23_cma_a(0) * u0_m0_wo0_mtree_madd4_23_cma_r(0);
    u0_m0_wo0_mtree_madd4_23_cma_p(1) <= u0_m0_wo0_mtree_madd4_23_cma_a(1) * u0_m0_wo0_mtree_madd4_23_cma_r(1);
    u0_m0_wo0_mtree_madd4_23_cma_p(2) <= u0_m0_wo0_mtree_madd4_23_cma_a(2) * u0_m0_wo0_mtree_madd4_23_cma_r(2);
    u0_m0_wo0_mtree_madd4_23_cma_p(3) <= u0_m0_wo0_mtree_madd4_23_cma_a(3) * u0_m0_wo0_mtree_madd4_23_cma_r(3);
    u0_m0_wo0_mtree_madd4_23_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_23_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_23_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_23_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_23_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_23_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_23_cma_x(0) <= u0_m0_wo0_mtree_madd4_23_cma_w(0) + u0_m0_wo0_mtree_madd4_23_cma_w(1);
    u0_m0_wo0_mtree_madd4_23_cma_y(0) <= u0_m0_wo0_mtree_madd4_23_cma_x(0);
    u0_m0_wo0_mtree_madd4_23_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_23_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_23_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_23_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_23_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_23_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr92_q),14);
            u0_m0_wo0_mtree_madd4_23_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr91_q),14);
            u0_m0_wo0_mtree_madd4_23_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr90_q),14);
            u0_m0_wo0_mtree_madd4_23_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr89_q),14);
            u0_m0_wo0_mtree_madd4_23_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_23_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_23_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_23_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_23_cma_d(0) <= u0_m0_wo0_mtree_madd4_23_cma_a(0);
            u0_m0_wo0_mtree_madd4_23_cma_d(1) <= u0_m0_wo0_mtree_madd4_23_cma_a(1);
            u0_m0_wo0_mtree_madd4_23_cma_d(2) <= u0_m0_wo0_mtree_madd4_23_cma_a(2);
            u0_m0_wo0_mtree_madd4_23_cma_d(3) <= u0_m0_wo0_mtree_madd4_23_cma_a(3);
            u0_m0_wo0_mtree_madd4_23_cma_s(0) <= u0_m0_wo0_mtree_madd4_23_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_23_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_23_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_23_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_22_cma(CHAINMULTADD,373)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_22_cma_k0 <= (
        0 => TO_SIGNED(505,16),
        1 => TO_SIGNED(-873,16),
        2 => TO_SIGNED(-42,16),
        3 => TO_SIGNED(140,16),
        4 => TO_SIGNED(22,16),
        5 => TO_SIGNED(-635,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(115,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_22_cma_k1 <= (
        0 => TO_SIGNED(1046,16),
        1 => TO_SIGNED(-476,16),
        2 => TO_SIGNED(-87,16),
        3 => TO_SIGNED(76,16),
        4 => TO_SIGNED(886,16),
        5 => TO_SIGNED(-998,16),
        6 => TO_SIGNED(-90,16),
        7 => TO_SIGNED(181,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_22_cma_k2 <= (
        0 => TO_SIGNED(1581,16),
        1 => TO_SIGNED(61,16),
        2 => TO_SIGNED(-131,16),
        3 => TO_SIGNED(-9,16),
        4 => TO_SIGNED(1941,16),
        5 => TO_SIGNED(-774,16),
        6 => TO_SIGNED(-198,16),
        7 => TO_SIGNED(140,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_22_cma_k3 <= (
        0 => TO_SIGNED(2074,16),
        1 => TO_SIGNED(651,16),
        2 => TO_SIGNED(-172,16),
        3 => TO_SIGNED(-104,16),
        4 => TO_SIGNED(3051,16),
        5 => TO_SIGNED(188,16),
        6 => TO_SIGNED(-311,16),
        7 => TO_SIGNED(-34,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_22_cma_r(0) <= u0_m0_wo0_mtree_madd4_22_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_22_cma_c(0)));
    u0_m0_wo0_mtree_madd4_22_cma_r(1) <= u0_m0_wo0_mtree_madd4_22_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_22_cma_c(1)));
    u0_m0_wo0_mtree_madd4_22_cma_r(2) <= u0_m0_wo0_mtree_madd4_22_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_22_cma_c(2)));
    u0_m0_wo0_mtree_madd4_22_cma_r(3) <= u0_m0_wo0_mtree_madd4_22_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_22_cma_c(3)));
    u0_m0_wo0_mtree_madd4_22_cma_p(0) <= u0_m0_wo0_mtree_madd4_22_cma_a(0) * u0_m0_wo0_mtree_madd4_22_cma_r(0);
    u0_m0_wo0_mtree_madd4_22_cma_p(1) <= u0_m0_wo0_mtree_madd4_22_cma_a(1) * u0_m0_wo0_mtree_madd4_22_cma_r(1);
    u0_m0_wo0_mtree_madd4_22_cma_p(2) <= u0_m0_wo0_mtree_madd4_22_cma_a(2) * u0_m0_wo0_mtree_madd4_22_cma_r(2);
    u0_m0_wo0_mtree_madd4_22_cma_p(3) <= u0_m0_wo0_mtree_madd4_22_cma_a(3) * u0_m0_wo0_mtree_madd4_22_cma_r(3);
    u0_m0_wo0_mtree_madd4_22_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_22_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_22_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_22_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_22_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_22_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_22_cma_x(0) <= u0_m0_wo0_mtree_madd4_22_cma_w(0) + u0_m0_wo0_mtree_madd4_22_cma_w(1);
    u0_m0_wo0_mtree_madd4_22_cma_y(0) <= u0_m0_wo0_mtree_madd4_22_cma_x(0);
    u0_m0_wo0_mtree_madd4_22_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_22_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_22_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_22_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_22_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_22_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr88_q),14);
            u0_m0_wo0_mtree_madd4_22_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr87_q),14);
            u0_m0_wo0_mtree_madd4_22_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr86_q),14);
            u0_m0_wo0_mtree_madd4_22_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr85_q),14);
            u0_m0_wo0_mtree_madd4_22_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_22_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_22_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_22_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_22_cma_d(0) <= u0_m0_wo0_mtree_madd4_22_cma_a(0);
            u0_m0_wo0_mtree_madd4_22_cma_d(1) <= u0_m0_wo0_mtree_madd4_22_cma_a(1);
            u0_m0_wo0_mtree_madd4_22_cma_d(2) <= u0_m0_wo0_mtree_madd4_22_cma_a(2);
            u0_m0_wo0_mtree_madd4_22_cma_d(3) <= u0_m0_wo0_mtree_madd4_22_cma_a(3);
            u0_m0_wo0_mtree_madd4_22_cma_s(0) <= u0_m0_wo0_mtree_madd4_22_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_22_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_22_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_22_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_11(ADD,351)@15
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_22_cma_q(31)) & u0_m0_wo0_mtree_madd4_22_cma_q);
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_23_cma_q(31)) & u0_m0_wo0_mtree_madd4_23_cma_q);
    u0_m0_wo0_mtree_add0_11: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(32 downto 0);


	--u0_m0_wo0_mtree_madd4_21_cma(CHAINMULTADD,374)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_21_cma_k0 <= (
        0 => TO_SIGNED(2491,16),
        1 => TO_SIGNED(1178,16),
        2 => TO_SIGNED(-207,16),
        3 => TO_SIGNED(-189,16),
        4 => TO_SIGNED(4045,16),
        5 => TO_SIGNED(1550,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-281,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_21_cma_k1 <= (
        0 => TO_SIGNED(2794,16),
        1 => TO_SIGNED(1530,16),
        2 => TO_SIGNED(-232,16),
        3 => TO_SIGNED(-246,16),
        4 => TO_SIGNED(4753,16),
        5 => TO_SIGNED(2627,16),
        6 => TO_SIGNED(-485,16),
        7 => TO_SIGNED(-477,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_21_cma_k2 <= (
        0 => TO_SIGNED(2952,16),
        1 => TO_SIGNED(1617,16),
        2 => TO_SIGNED(-246,16),
        3 => TO_SIGNED(-259,16),
        4 => TO_SIGNED(5031,16),
        5 => TO_SIGNED(2785,16),
        6 => TO_SIGNED(-514,16),
        7 => TO_SIGNED(-506,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_21_cma_k3 <= (
        0 => TO_SIGNED(2937,16),
        1 => TO_SIGNED(1390,16),
        2 => TO_SIGNED(-244,16),
        3 => TO_SIGNED(-223,16),
        4 => TO_SIGNED(4796,16),
        5 => TO_SIGNED(1859,16),
        6 => TO_SIGNED(-490,16),
        7 => TO_SIGNED(-337,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_21_cma_r(0) <= u0_m0_wo0_mtree_madd4_21_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_21_cma_c(0)));
    u0_m0_wo0_mtree_madd4_21_cma_r(1) <= u0_m0_wo0_mtree_madd4_21_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_21_cma_c(1)));
    u0_m0_wo0_mtree_madd4_21_cma_r(2) <= u0_m0_wo0_mtree_madd4_21_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_21_cma_c(2)));
    u0_m0_wo0_mtree_madd4_21_cma_r(3) <= u0_m0_wo0_mtree_madd4_21_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_21_cma_c(3)));
    u0_m0_wo0_mtree_madd4_21_cma_p(0) <= u0_m0_wo0_mtree_madd4_21_cma_a(0) * u0_m0_wo0_mtree_madd4_21_cma_r(0);
    u0_m0_wo0_mtree_madd4_21_cma_p(1) <= u0_m0_wo0_mtree_madd4_21_cma_a(1) * u0_m0_wo0_mtree_madd4_21_cma_r(1);
    u0_m0_wo0_mtree_madd4_21_cma_p(2) <= u0_m0_wo0_mtree_madd4_21_cma_a(2) * u0_m0_wo0_mtree_madd4_21_cma_r(2);
    u0_m0_wo0_mtree_madd4_21_cma_p(3) <= u0_m0_wo0_mtree_madd4_21_cma_a(3) * u0_m0_wo0_mtree_madd4_21_cma_r(3);
    u0_m0_wo0_mtree_madd4_21_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_21_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_21_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_21_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_21_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_21_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_21_cma_x(0) <= u0_m0_wo0_mtree_madd4_21_cma_w(0) + u0_m0_wo0_mtree_madd4_21_cma_w(1);
    u0_m0_wo0_mtree_madd4_21_cma_y(0) <= u0_m0_wo0_mtree_madd4_21_cma_x(0);
    u0_m0_wo0_mtree_madd4_21_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_21_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_21_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_21_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_21_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_21_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr84_q),14);
            u0_m0_wo0_mtree_madd4_21_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr83_q),14);
            u0_m0_wo0_mtree_madd4_21_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr82_q),14);
            u0_m0_wo0_mtree_madd4_21_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr81_q),14);
            u0_m0_wo0_mtree_madd4_21_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_21_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_21_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_21_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_21_cma_d(0) <= u0_m0_wo0_mtree_madd4_21_cma_a(0);
            u0_m0_wo0_mtree_madd4_21_cma_d(1) <= u0_m0_wo0_mtree_madd4_21_cma_a(1);
            u0_m0_wo0_mtree_madd4_21_cma_d(2) <= u0_m0_wo0_mtree_madd4_21_cma_a(2);
            u0_m0_wo0_mtree_madd4_21_cma_d(3) <= u0_m0_wo0_mtree_madd4_21_cma_a(3);
            u0_m0_wo0_mtree_madd4_21_cma_s(0) <= u0_m0_wo0_mtree_madd4_21_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_21_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_21_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_21_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_20_cma(CHAINMULTADD,375)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_20_cma_k0 <= (
        0 => TO_SIGNED(2731,16),
        1 => TO_SIGNED(860,16),
        2 => TO_SIGNED(-227,16),
        3 => TO_SIGNED(-138,16),
        4 => TO_SIGNED(4047,16),
        5 => TO_SIGNED(306,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-55,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_20_cma_k1 <= (
        0 => TO_SIGNED(2327,16),
        1 => TO_SIGNED(96,16),
        2 => TO_SIGNED(-193,16),
        3 => TO_SIGNED(-15,16),
        4 => TO_SIGNED(2876,16),
        5 => TO_SIGNED(-1039,16),
        6 => TO_SIGNED(-293,16),
        7 => TO_SIGNED(188,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_20_cma_k2 <= (
        0 => TO_SIGNED(1725,16),
        1 => TO_SIGNED(-775,16),
        2 => TO_SIGNED(-143,16),
        3 => TO_SIGNED(124,16),
        4 => TO_SIGNED(1458,16),
        5 => TO_SIGNED(-1484,16),
        6 => TO_SIGNED(-148,16),
        7 => TO_SIGNED(269,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_20_cma_k3 <= (
        0 => TO_SIGNED(941,16),
        1 => TO_SIGNED(-1595,16),
        2 => TO_SIGNED(-78,16),
        3 => TO_SIGNED(256,16),
        4 => TO_SIGNED(25,16),
        5 => TO_SIGNED(-933,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_20_cma_r(0) <= u0_m0_wo0_mtree_madd4_20_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_20_cma_c(0)));
    u0_m0_wo0_mtree_madd4_20_cma_r(1) <= u0_m0_wo0_mtree_madd4_20_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_20_cma_c(1)));
    u0_m0_wo0_mtree_madd4_20_cma_r(2) <= u0_m0_wo0_mtree_madd4_20_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_20_cma_c(2)));
    u0_m0_wo0_mtree_madd4_20_cma_r(3) <= u0_m0_wo0_mtree_madd4_20_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_20_cma_c(3)));
    u0_m0_wo0_mtree_madd4_20_cma_p(0) <= u0_m0_wo0_mtree_madd4_20_cma_a(0) * u0_m0_wo0_mtree_madd4_20_cma_r(0);
    u0_m0_wo0_mtree_madd4_20_cma_p(1) <= u0_m0_wo0_mtree_madd4_20_cma_a(1) * u0_m0_wo0_mtree_madd4_20_cma_r(1);
    u0_m0_wo0_mtree_madd4_20_cma_p(2) <= u0_m0_wo0_mtree_madd4_20_cma_a(2) * u0_m0_wo0_mtree_madd4_20_cma_r(2);
    u0_m0_wo0_mtree_madd4_20_cma_p(3) <= u0_m0_wo0_mtree_madd4_20_cma_a(3) * u0_m0_wo0_mtree_madd4_20_cma_r(3);
    u0_m0_wo0_mtree_madd4_20_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_20_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_20_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_20_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_20_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_20_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_20_cma_x(0) <= u0_m0_wo0_mtree_madd4_20_cma_w(0) + u0_m0_wo0_mtree_madd4_20_cma_w(1);
    u0_m0_wo0_mtree_madd4_20_cma_y(0) <= u0_m0_wo0_mtree_madd4_20_cma_x(0);
    u0_m0_wo0_mtree_madd4_20_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_20_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_20_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_20_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_20_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_20_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr80_q),14);
            u0_m0_wo0_mtree_madd4_20_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr79_q),14);
            u0_m0_wo0_mtree_madd4_20_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr78_q),14);
            u0_m0_wo0_mtree_madd4_20_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr77_q),14);
            u0_m0_wo0_mtree_madd4_20_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_20_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_20_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_20_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_20_cma_d(0) <= u0_m0_wo0_mtree_madd4_20_cma_a(0);
            u0_m0_wo0_mtree_madd4_20_cma_d(1) <= u0_m0_wo0_mtree_madd4_20_cma_a(1);
            u0_m0_wo0_mtree_madd4_20_cma_d(2) <= u0_m0_wo0_mtree_madd4_20_cma_a(2);
            u0_m0_wo0_mtree_madd4_20_cma_d(3) <= u0_m0_wo0_mtree_madd4_20_cma_a(3);
            u0_m0_wo0_mtree_madd4_20_cma_s(0) <= u0_m0_wo0_mtree_madd4_20_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_20_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_20_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_20_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_10(ADD,350)@15
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_20_cma_q(31)) & u0_m0_wo0_mtree_madd4_20_cma_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_21_cma_q(31)) & u0_m0_wo0_mtree_madd4_21_cma_q);
    u0_m0_wo0_mtree_add0_10: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_5(ADD,358)@16
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_10_q(32)) & u0_m0_wo0_mtree_add0_10_q);
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_11_q(32)) & u0_m0_wo0_mtree_add0_11_q);
    u0_m0_wo0_mtree_add1_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(33 downto 0);


	--u0_m0_wo0_mtree_madd4_19_cma(CHAINMULTADD,376)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_19_cma_k0 <= (
        0 => TO_SIGNED(2,16),
        1 => TO_SIGNED(-2193,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(352,16),
        4 => TO_SIGNED(-1171,16),
        5 => TO_SIGNED(1,16),
        6 => TO_SIGNED(119,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_19_cma_k1 <= (
        0 => TO_SIGNED(-1047,16),
        1 => TO_SIGNED(-2424,16),
        2 => TO_SIGNED(87,16),
        3 => TO_SIGNED(389,16),
        4 => TO_SIGNED(-1911,16),
        5 => TO_SIGNED(368,16),
        6 => TO_SIGNED(195,16),
        7 => TO_SIGNED(-66,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_19_cma_k2 <= (
        0 => TO_SIGNED(-2159,16),
        1 => TO_SIGNED(-2199,16),
        2 => TO_SIGNED(179,16),
        3 => TO_SIGNED(353,16),
        4 => TO_SIGNED(-2051,16),
        5 => TO_SIGNED(-476,16),
        6 => TO_SIGNED(209,16),
        7 => TO_SIGNED(86,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_19_cma_k3 <= (
        0 => TO_SIGNED(-3268,16),
        1 => TO_SIGNED(-1505,16),
        2 => TO_SIGNED(272,16),
        3 => TO_SIGNED(242,16),
        4 => TO_SIGNED(-1564,16),
        5 => TO_SIGNED(-2352,16),
        6 => TO_SIGNED(159,16),
        7 => TO_SIGNED(427,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_19_cma_r(0) <= u0_m0_wo0_mtree_madd4_19_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_19_cma_c(0)));
    u0_m0_wo0_mtree_madd4_19_cma_r(1) <= u0_m0_wo0_mtree_madd4_19_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_19_cma_c(1)));
    u0_m0_wo0_mtree_madd4_19_cma_r(2) <= u0_m0_wo0_mtree_madd4_19_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_19_cma_c(2)));
    u0_m0_wo0_mtree_madd4_19_cma_r(3) <= u0_m0_wo0_mtree_madd4_19_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_19_cma_c(3)));
    u0_m0_wo0_mtree_madd4_19_cma_p(0) <= u0_m0_wo0_mtree_madd4_19_cma_a(0) * u0_m0_wo0_mtree_madd4_19_cma_r(0);
    u0_m0_wo0_mtree_madd4_19_cma_p(1) <= u0_m0_wo0_mtree_madd4_19_cma_a(1) * u0_m0_wo0_mtree_madd4_19_cma_r(1);
    u0_m0_wo0_mtree_madd4_19_cma_p(2) <= u0_m0_wo0_mtree_madd4_19_cma_a(2) * u0_m0_wo0_mtree_madd4_19_cma_r(2);
    u0_m0_wo0_mtree_madd4_19_cma_p(3) <= u0_m0_wo0_mtree_madd4_19_cma_a(3) * u0_m0_wo0_mtree_madd4_19_cma_r(3);
    u0_m0_wo0_mtree_madd4_19_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_19_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_19_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_19_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_19_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_19_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_19_cma_x(0) <= u0_m0_wo0_mtree_madd4_19_cma_w(0) + u0_m0_wo0_mtree_madd4_19_cma_w(1);
    u0_m0_wo0_mtree_madd4_19_cma_y(0) <= u0_m0_wo0_mtree_madd4_19_cma_x(0);
    u0_m0_wo0_mtree_madd4_19_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_19_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_19_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_19_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_19_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_19_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr76_q),14);
            u0_m0_wo0_mtree_madd4_19_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr75_q),14);
            u0_m0_wo0_mtree_madd4_19_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr74_q),14);
            u0_m0_wo0_mtree_madd4_19_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr73_q),14);
            u0_m0_wo0_mtree_madd4_19_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_19_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_19_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_19_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_19_cma_d(0) <= u0_m0_wo0_mtree_madd4_19_cma_a(0);
            u0_m0_wo0_mtree_madd4_19_cma_d(1) <= u0_m0_wo0_mtree_madd4_19_cma_a(1);
            u0_m0_wo0_mtree_madd4_19_cma_d(2) <= u0_m0_wo0_mtree_madd4_19_cma_a(2);
            u0_m0_wo0_mtree_madd4_19_cma_d(3) <= u0_m0_wo0_mtree_madd4_19_cma_a(3);
            u0_m0_wo0_mtree_madd4_19_cma_s(0) <= u0_m0_wo0_mtree_madd4_19_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_19_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_19_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_19_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_18_cma(CHAINMULTADD,377)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_18_cma_k0 <= (
        0 => TO_SIGNED(-4308,16),
        1 => TO_SIGNED(-423,16),
        2 => TO_SIGNED(359,16),
        3 => TO_SIGNED(68,16),
        4 => TO_SIGNED(-553,16),
        5 => TO_SIGNED(-4242,16),
        6 => TO_SIGNED(56,16),
        7 => TO_SIGNED(770,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_18_cma_k1 <= (
        0 => TO_SIGNED(-5206,16),
        1 => TO_SIGNED(882,16),
        2 => TO_SIGNED(433,16),
        3 => TO_SIGNED(-141,16),
        4 => TO_SIGNED(741,16),
        5 => TO_SIGNED(-4832,16),
        6 => TO_SIGNED(-75,16),
        7 => TO_SIGNED(877,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_18_cma_k2 <= (
        0 => TO_SIGNED(-5887,16),
        1 => TO_SIGNED(2184,16),
        2 => TO_SIGNED(490,16),
        3 => TO_SIGNED(-351,16),
        4 => TO_SIGNED(1985,16),
        5 => TO_SIGNED(-3352,16),
        6 => TO_SIGNED(-202,16),
        7 => TO_SIGNED(609,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_18_cma_k3 <= (
        0 => TO_SIGNED(-6281,16),
        1 => TO_SIGNED(3223,16),
        2 => TO_SIGNED(523,16),
        3 => TO_SIGNED(-518,16),
        4 => TO_SIGNED(2796,16),
        5 => TO_SIGNED(-161,16),
        6 => TO_SIGNED(-285,16),
        7 => TO_SIGNED(29,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_18_cma_r(0) <= u0_m0_wo0_mtree_madd4_18_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_18_cma_c(0)));
    u0_m0_wo0_mtree_madd4_18_cma_r(1) <= u0_m0_wo0_mtree_madd4_18_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_18_cma_c(1)));
    u0_m0_wo0_mtree_madd4_18_cma_r(2) <= u0_m0_wo0_mtree_madd4_18_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_18_cma_c(2)));
    u0_m0_wo0_mtree_madd4_18_cma_r(3) <= u0_m0_wo0_mtree_madd4_18_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_18_cma_c(3)));
    u0_m0_wo0_mtree_madd4_18_cma_p(0) <= u0_m0_wo0_mtree_madd4_18_cma_a(0) * u0_m0_wo0_mtree_madd4_18_cma_r(0);
    u0_m0_wo0_mtree_madd4_18_cma_p(1) <= u0_m0_wo0_mtree_madd4_18_cma_a(1) * u0_m0_wo0_mtree_madd4_18_cma_r(1);
    u0_m0_wo0_mtree_madd4_18_cma_p(2) <= u0_m0_wo0_mtree_madd4_18_cma_a(2) * u0_m0_wo0_mtree_madd4_18_cma_r(2);
    u0_m0_wo0_mtree_madd4_18_cma_p(3) <= u0_m0_wo0_mtree_madd4_18_cma_a(3) * u0_m0_wo0_mtree_madd4_18_cma_r(3);
    u0_m0_wo0_mtree_madd4_18_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_18_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_18_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_18_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_18_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_18_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_18_cma_x(0) <= u0_m0_wo0_mtree_madd4_18_cma_w(0) + u0_m0_wo0_mtree_madd4_18_cma_w(1);
    u0_m0_wo0_mtree_madd4_18_cma_y(0) <= u0_m0_wo0_mtree_madd4_18_cma_x(0);
    u0_m0_wo0_mtree_madd4_18_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_18_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_18_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_18_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_18_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_18_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr72_q),14);
            u0_m0_wo0_mtree_madd4_18_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr71_q),14);
            u0_m0_wo0_mtree_madd4_18_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr70_q),14);
            u0_m0_wo0_mtree_madd4_18_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr69_q),14);
            u0_m0_wo0_mtree_madd4_18_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_18_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_18_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_18_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_18_cma_d(0) <= u0_m0_wo0_mtree_madd4_18_cma_a(0);
            u0_m0_wo0_mtree_madd4_18_cma_d(1) <= u0_m0_wo0_mtree_madd4_18_cma_a(1);
            u0_m0_wo0_mtree_madd4_18_cma_d(2) <= u0_m0_wo0_mtree_madd4_18_cma_a(2);
            u0_m0_wo0_mtree_madd4_18_cma_d(3) <= u0_m0_wo0_mtree_madd4_18_cma_a(3);
            u0_m0_wo0_mtree_madd4_18_cma_s(0) <= u0_m0_wo0_mtree_madd4_18_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_18_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_18_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_18_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_9(ADD,349)@15
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_18_cma_q(31)) & u0_m0_wo0_mtree_madd4_18_cma_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_19_cma_q(31)) & u0_m0_wo0_mtree_madd4_19_cma_q);
    u0_m0_wo0_mtree_add0_9: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(32 downto 0);


	--u0_m0_wo0_mtree_madd4_17_cma(CHAINMULTADD,378)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_17_cma_k0 <= (
        0 => TO_SIGNED(-6325,16),
        1 => TO_SIGNED(3757,16),
        2 => TO_SIGNED(527,16),
        3 => TO_SIGNED(-604,16),
        4 => TO_SIGNED(2808,16),
        5 => TO_SIGNED(3324,16),
        6 => TO_SIGNED(-286,16),
        7 => TO_SIGNED(-604,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_17_cma_k1 <= (
        0 => TO_SIGNED(-5966,16),
        1 => TO_SIGNED(3611,16),
        2 => TO_SIGNED(497,16),
        3 => TO_SIGNED(-580,16),
        4 => TO_SIGNED(1752,16),
        5 => TO_SIGNED(5392,16),
        6 => TO_SIGNED(-179,16),
        7 => TO_SIGNED(-979,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_17_cma_k2 <= (
        0 => TO_SIGNED(-5165,16),
        1 => TO_SIGNED(2711,16),
        2 => TO_SIGNED(430,16),
        3 => TO_SIGNED(-435,16),
        4 => TO_SIGNED(-485,16),
        5 => TO_SIGNED(5092,16),
        6 => TO_SIGNED(49,16),
        7 => TO_SIGNED(-925,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_17_cma_k3 <= (
        0 => TO_SIGNED(-3902,16),
        1 => TO_SIGNED(1119,16),
        2 => TO_SIGNED(325,16),
        3 => TO_SIGNED(-179,16),
        4 => TO_SIGNED(-3816,16),
        5 => TO_SIGNED(2904,16),
        6 => TO_SIGNED(389,16),
        7 => TO_SIGNED(-527,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_17_cma_r(0) <= u0_m0_wo0_mtree_madd4_17_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_17_cma_c(0)));
    u0_m0_wo0_mtree_madd4_17_cma_r(1) <= u0_m0_wo0_mtree_madd4_17_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_17_cma_c(1)));
    u0_m0_wo0_mtree_madd4_17_cma_r(2) <= u0_m0_wo0_mtree_madd4_17_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_17_cma_c(2)));
    u0_m0_wo0_mtree_madd4_17_cma_r(3) <= u0_m0_wo0_mtree_madd4_17_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_17_cma_c(3)));
    u0_m0_wo0_mtree_madd4_17_cma_p(0) <= u0_m0_wo0_mtree_madd4_17_cma_a(0) * u0_m0_wo0_mtree_madd4_17_cma_r(0);
    u0_m0_wo0_mtree_madd4_17_cma_p(1) <= u0_m0_wo0_mtree_madd4_17_cma_a(1) * u0_m0_wo0_mtree_madd4_17_cma_r(1);
    u0_m0_wo0_mtree_madd4_17_cma_p(2) <= u0_m0_wo0_mtree_madd4_17_cma_a(2) * u0_m0_wo0_mtree_madd4_17_cma_r(2);
    u0_m0_wo0_mtree_madd4_17_cma_p(3) <= u0_m0_wo0_mtree_madd4_17_cma_a(3) * u0_m0_wo0_mtree_madd4_17_cma_r(3);
    u0_m0_wo0_mtree_madd4_17_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_17_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_17_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_17_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_17_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_17_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_17_cma_x(0) <= u0_m0_wo0_mtree_madd4_17_cma_w(0) + u0_m0_wo0_mtree_madd4_17_cma_w(1);
    u0_m0_wo0_mtree_madd4_17_cma_y(0) <= u0_m0_wo0_mtree_madd4_17_cma_x(0);
    u0_m0_wo0_mtree_madd4_17_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_17_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_17_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_17_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_17_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_17_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr68_q),14);
            u0_m0_wo0_mtree_madd4_17_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr67_q),14);
            u0_m0_wo0_mtree_madd4_17_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr66_q),14);
            u0_m0_wo0_mtree_madd4_17_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr65_q),14);
            u0_m0_wo0_mtree_madd4_17_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_17_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_17_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_17_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_17_cma_d(0) <= u0_m0_wo0_mtree_madd4_17_cma_a(0);
            u0_m0_wo0_mtree_madd4_17_cma_d(1) <= u0_m0_wo0_mtree_madd4_17_cma_a(1);
            u0_m0_wo0_mtree_madd4_17_cma_d(2) <= u0_m0_wo0_mtree_madd4_17_cma_a(2);
            u0_m0_wo0_mtree_madd4_17_cma_d(3) <= u0_m0_wo0_mtree_madd4_17_cma_a(3);
            u0_m0_wo0_mtree_madd4_17_cma_s(0) <= u0_m0_wo0_mtree_madd4_17_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_17_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_17_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_17_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_16_cma(CHAINMULTADD,379)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_16_cma_k0 <= (
        0 => TO_SIGNED(-2175,16),
        1 => TO_SIGNED(-965,16),
        2 => TO_SIGNED(181,16),
        3 => TO_SIGNED(155,16),
        4 => TO_SIGNED(-7940,16),
        5 => TO_SIGNED(566,16),
        6 => TO_SIGNED(811,16),
        7 => TO_SIGNED(-102,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_16_cma_k1 <= (
        0 => TO_SIGNED(-2,16),
        1 => TO_SIGNED(-3219,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(517,16),
        4 => TO_SIGNED(-12363,16),
        5 => TO_SIGNED(5,16),
        6 => TO_SIGNED(1263,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_16_cma_k2 <= (
        0 => TO_SIGNED(2574,16),
        1 => TO_SIGNED(-5231,16),
        2 => TO_SIGNED(-214,16),
        3 => TO_SIGNED(840,16),
        4 => TO_SIGNED(-16455,16),
        5 => TO_SIGNED(2024,16),
        6 => TO_SIGNED(1681,16),
        7 => TO_SIGNED(-367,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_16_cma_k3 <= (
        0 => TO_SIGNED(5500,16),
        1 => TO_SIGNED(-6564,16),
        2 => TO_SIGNED(-458,16),
        3 => TO_SIGNED(1055,16),
        4 => TO_SIGNED(-19540,16),
        5 => TO_SIGNED(5496,16),
        6 => TO_SIGNED(1996,16),
        7 => TO_SIGNED(-998,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_16_cma_r(0) <= u0_m0_wo0_mtree_madd4_16_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_16_cma_c(0)));
    u0_m0_wo0_mtree_madd4_16_cma_r(1) <= u0_m0_wo0_mtree_madd4_16_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_16_cma_c(1)));
    u0_m0_wo0_mtree_madd4_16_cma_r(2) <= u0_m0_wo0_mtree_madd4_16_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_16_cma_c(2)));
    u0_m0_wo0_mtree_madd4_16_cma_r(3) <= u0_m0_wo0_mtree_madd4_16_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_16_cma_c(3)));
    u0_m0_wo0_mtree_madd4_16_cma_p(0) <= u0_m0_wo0_mtree_madd4_16_cma_a(0) * u0_m0_wo0_mtree_madd4_16_cma_r(0);
    u0_m0_wo0_mtree_madd4_16_cma_p(1) <= u0_m0_wo0_mtree_madd4_16_cma_a(1) * u0_m0_wo0_mtree_madd4_16_cma_r(1);
    u0_m0_wo0_mtree_madd4_16_cma_p(2) <= u0_m0_wo0_mtree_madd4_16_cma_a(2) * u0_m0_wo0_mtree_madd4_16_cma_r(2);
    u0_m0_wo0_mtree_madd4_16_cma_p(3) <= u0_m0_wo0_mtree_madd4_16_cma_a(3) * u0_m0_wo0_mtree_madd4_16_cma_r(3);
    u0_m0_wo0_mtree_madd4_16_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_16_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_16_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_16_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_16_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_16_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_16_cma_x(0) <= u0_m0_wo0_mtree_madd4_16_cma_w(0) + u0_m0_wo0_mtree_madd4_16_cma_w(1);
    u0_m0_wo0_mtree_madd4_16_cma_y(0) <= u0_m0_wo0_mtree_madd4_16_cma_x(0);
    u0_m0_wo0_mtree_madd4_16_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_16_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_16_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_16_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_16_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_16_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr64_q),14);
            u0_m0_wo0_mtree_madd4_16_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr63_q),14);
            u0_m0_wo0_mtree_madd4_16_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr62_q),14);
            u0_m0_wo0_mtree_madd4_16_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr61_q),14);
            u0_m0_wo0_mtree_madd4_16_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_16_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_16_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_16_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_16_cma_d(0) <= u0_m0_wo0_mtree_madd4_16_cma_a(0);
            u0_m0_wo0_mtree_madd4_16_cma_d(1) <= u0_m0_wo0_mtree_madd4_16_cma_a(1);
            u0_m0_wo0_mtree_madd4_16_cma_d(2) <= u0_m0_wo0_mtree_madd4_16_cma_a(2);
            u0_m0_wo0_mtree_madd4_16_cma_d(3) <= u0_m0_wo0_mtree_madd4_16_cma_a(3);
            u0_m0_wo0_mtree_madd4_16_cma_s(0) <= u0_m0_wo0_mtree_madd4_16_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_16_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_16_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_16_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_8(ADD,348)@15
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_16_cma_q(31)) & u0_m0_wo0_mtree_madd4_16_cma_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_17_cma_q(31)) & u0_m0_wo0_mtree_madd4_17_cma_q);
    u0_m0_wo0_mtree_add0_8: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_4(ADD,357)@16
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_8_q(32)) & u0_m0_wo0_mtree_add0_8_q);
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_9_q(32)) & u0_m0_wo0_mtree_add0_9_q);
    u0_m0_wo0_mtree_add1_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(33 downto 0);


	--u0_m0_wo0_mtree_add2_2(ADD,361)@17
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_4_q(33)) & u0_m0_wo0_mtree_add1_4_q);
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_5_q(33)) & u0_m0_wo0_mtree_add1_5_q);
    u0_m0_wo0_mtree_add2_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(34 downto 0);


	--u0_m0_wo0_mtree_add3_1(ADD,363)@18
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add2_2_q(34)) & u0_m0_wo0_mtree_add2_2_q);
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR((35 downto 33 => u0_m0_wo0_mtree_add0_12_q(32)) & u0_m0_wo0_mtree_add0_12_q);
    u0_m0_wo0_mtree_add3_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(35 downto 0);


	--u0_m0_wo0_mtree_madd4_15_cma(CHAINMULTADD,380)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_15_cma_k0 <= (
        0 => TO_SIGNED(8697,16),
        1 => TO_SIGNED(-6816,16),
        2 => TO_SIGNED(-724,16),
        3 => TO_SIGNED(1095,16),
        4 => TO_SIGNED(-20991,16),
        5 => TO_SIGNED(7719,16),
        6 => TO_SIGNED(2144,16),
        7 => TO_SIGNED(-1402,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_15_cma_k1 <= (
        0 => TO_SIGNED(12071,16),
        1 => TO_SIGNED(-5693,16),
        2 => TO_SIGNED(-1005,16),
        3 => TO_SIGNED(915,16),
        4 => TO_SIGNED(-20338,16),
        5 => TO_SIGNED(5878,16),
        6 => TO_SIGNED(2077,16),
        7 => TO_SIGNED(-1068,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_15_cma_k2 <= (
        0 => TO_SIGNED(15516,16),
        1 => TO_SIGNED(-3062,16),
        2 => TO_SIGNED(-1293,16),
        3 => TO_SIGNED(492,16),
        4 => TO_SIGNED(-17345,16),
        5 => TO_SIGNED(-1120,16),
        6 => TO_SIGNED(1772,16),
        7 => TO_SIGNED(203,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_15_cma_k3 <= (
        0 => TO_SIGNED(18920,16),
        1 => TO_SIGNED(1018,16),
        2 => TO_SIGNED(-1576,16),
        3 => TO_SIGNED(-163,16),
        4 => TO_SIGNED(-12094,16),
        5 => TO_SIGNED(-11491,16),
        6 => TO_SIGNED(1235,16),
        7 => TO_SIGNED(2087,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_15_cma_r(0) <= u0_m0_wo0_mtree_madd4_15_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_15_cma_c(0)));
    u0_m0_wo0_mtree_madd4_15_cma_r(1) <= u0_m0_wo0_mtree_madd4_15_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_15_cma_c(1)));
    u0_m0_wo0_mtree_madd4_15_cma_r(2) <= u0_m0_wo0_mtree_madd4_15_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_15_cma_c(2)));
    u0_m0_wo0_mtree_madd4_15_cma_r(3) <= u0_m0_wo0_mtree_madd4_15_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_15_cma_c(3)));
    u0_m0_wo0_mtree_madd4_15_cma_p(0) <= u0_m0_wo0_mtree_madd4_15_cma_a(0) * u0_m0_wo0_mtree_madd4_15_cma_r(0);
    u0_m0_wo0_mtree_madd4_15_cma_p(1) <= u0_m0_wo0_mtree_madd4_15_cma_a(1) * u0_m0_wo0_mtree_madd4_15_cma_r(1);
    u0_m0_wo0_mtree_madd4_15_cma_p(2) <= u0_m0_wo0_mtree_madd4_15_cma_a(2) * u0_m0_wo0_mtree_madd4_15_cma_r(2);
    u0_m0_wo0_mtree_madd4_15_cma_p(3) <= u0_m0_wo0_mtree_madd4_15_cma_a(3) * u0_m0_wo0_mtree_madd4_15_cma_r(3);
    u0_m0_wo0_mtree_madd4_15_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_15_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_15_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_15_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_15_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_15_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_15_cma_x(0) <= u0_m0_wo0_mtree_madd4_15_cma_w(0) + u0_m0_wo0_mtree_madd4_15_cma_w(1);
    u0_m0_wo0_mtree_madd4_15_cma_y(0) <= u0_m0_wo0_mtree_madd4_15_cma_x(0);
    u0_m0_wo0_mtree_madd4_15_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_15_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_15_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_15_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_15_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_15_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr60_q),14);
            u0_m0_wo0_mtree_madd4_15_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr59_q),14);
            u0_m0_wo0_mtree_madd4_15_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr58_q),14);
            u0_m0_wo0_mtree_madd4_15_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr57_q),14);
            u0_m0_wo0_mtree_madd4_15_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_15_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_15_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_15_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_15_cma_d(0) <= u0_m0_wo0_mtree_madd4_15_cma_a(0);
            u0_m0_wo0_mtree_madd4_15_cma_d(1) <= u0_m0_wo0_mtree_madd4_15_cma_a(1);
            u0_m0_wo0_mtree_madd4_15_cma_d(2) <= u0_m0_wo0_mtree_madd4_15_cma_a(2);
            u0_m0_wo0_mtree_madd4_15_cma_d(3) <= u0_m0_wo0_mtree_madd4_15_cma_a(3);
            u0_m0_wo0_mtree_madd4_15_cma_s(0) <= u0_m0_wo0_mtree_madd4_15_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_15_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_15_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_15_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_madd4_14_cma(CHAINMULTADD,381)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_14_cma_k0 <= (
        0 => TO_SIGNED(22169,16),
        1 => TO_SIGNED(6286,16),
        2 => TO_SIGNED(-1847,16),
        3 => TO_SIGNED(-1010,16),
        4 => TO_SIGNED(-4942,16),
        5 => TO_SIGNED(-20920,16),
        6 => TO_SIGNED(504,16),
        7 => TO_SIGNED(3800,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_14_cma_k1 <= (
        0 => TO_SIGNED(25149,16),
        1 => TO_SIGNED(12295,16),
        2 => TO_SIGNED(-2095,16),
        3 => TO_SIGNED(-1976,16),
        4 => TO_SIGNED(3435,16),
        5 => TO_SIGNED(-24426,16),
        6 => TO_SIGNED(-351,16),
        7 => TO_SIGNED(4437,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_14_cma_k2 <= (
        0 => TO_SIGNED(27754,16),
        1 => TO_SIGNED(18462,16),
        2 => TO_SIGNED(-2312,16),
        3 => TO_SIGNED(-2967,16),
        4 => TO_SIGNED(12174,16),
        5 => TO_SIGNED(-18906,16),
        6 => TO_SIGNED(-1243,16),
        7 => TO_SIGNED(3434,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_14_cma_k3 <= (
        0 => TO_SIGNED(29883,16),
        1 => TO_SIGNED(24152,16),
        2 => TO_SIGNED(-2490,16),
        3 => TO_SIGNED(-3882,16),
        4 => TO_SIGNED(20323,16),
        5 => TO_SIGNED(-5035,16),
        6 => TO_SIGNED(-2076,16),
        7 => TO_SIGNED(914,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_14_cma_r(0) <= u0_m0_wo0_mtree_madd4_14_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_14_cma_c(0)));
    u0_m0_wo0_mtree_madd4_14_cma_r(1) <= u0_m0_wo0_mtree_madd4_14_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_14_cma_c(1)));
    u0_m0_wo0_mtree_madd4_14_cma_r(2) <= u0_m0_wo0_mtree_madd4_14_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_14_cma_c(2)));
    u0_m0_wo0_mtree_madd4_14_cma_r(3) <= u0_m0_wo0_mtree_madd4_14_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_14_cma_c(3)));
    u0_m0_wo0_mtree_madd4_14_cma_p(0) <= u0_m0_wo0_mtree_madd4_14_cma_a(0) * u0_m0_wo0_mtree_madd4_14_cma_r(0);
    u0_m0_wo0_mtree_madd4_14_cma_p(1) <= u0_m0_wo0_mtree_madd4_14_cma_a(1) * u0_m0_wo0_mtree_madd4_14_cma_r(1);
    u0_m0_wo0_mtree_madd4_14_cma_p(2) <= u0_m0_wo0_mtree_madd4_14_cma_a(2) * u0_m0_wo0_mtree_madd4_14_cma_r(2);
    u0_m0_wo0_mtree_madd4_14_cma_p(3) <= u0_m0_wo0_mtree_madd4_14_cma_a(3) * u0_m0_wo0_mtree_madd4_14_cma_r(3);
    u0_m0_wo0_mtree_madd4_14_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_14_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_14_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_14_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_14_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_14_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_14_cma_x(0) <= u0_m0_wo0_mtree_madd4_14_cma_w(0) + u0_m0_wo0_mtree_madd4_14_cma_w(1);
    u0_m0_wo0_mtree_madd4_14_cma_y(0) <= u0_m0_wo0_mtree_madd4_14_cma_x(0);
    u0_m0_wo0_mtree_madd4_14_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_14_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_14_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_14_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_14_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_14_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr56_q),14);
            u0_m0_wo0_mtree_madd4_14_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr55_q),14);
            u0_m0_wo0_mtree_madd4_14_cma_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr54_q),14);
            u0_m0_wo0_mtree_madd4_14_cma_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr53_q),14);
            u0_m0_wo0_mtree_madd4_14_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_14_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_14_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_14_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr8_q_13_q),3);
            u0_m0_wo0_mtree_madd4_14_cma_d(0) <= u0_m0_wo0_mtree_madd4_14_cma_a(0);
            u0_m0_wo0_mtree_madd4_14_cma_d(1) <= u0_m0_wo0_mtree_madd4_14_cma_a(1);
            u0_m0_wo0_mtree_madd4_14_cma_d(2) <= u0_m0_wo0_mtree_madd4_14_cma_a(2);
            u0_m0_wo0_mtree_madd4_14_cma_d(3) <= u0_m0_wo0_mtree_madd4_14_cma_a(3);
            u0_m0_wo0_mtree_madd4_14_cma_s(0) <= u0_m0_wo0_mtree_madd4_14_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_14_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_14_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_14_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_7(ADD,347)@15
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_14_cma_q(31)) & u0_m0_wo0_mtree_madd4_14_cma_q);
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_15_cma_q(31)) & u0_m0_wo0_mtree_madd4_15_cma_q);
    u0_m0_wo0_mtree_add0_7: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(32 downto 0);


	--d_u0_m0_wo0_bank_delayr48_q_12(DELAY,508)@10
    d_u0_m0_wo0_bank_delayr48_q_12 : dspba_delay
    GENERIC MAP ( width => 3, depth => 2 )
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_delayr48_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_13_oddmultadd_cma(CHAINMULTADD,400)@12
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k0 <= (
        0 => TO_SIGNED(31466,16),
        1 => TO_SIGNED(28748,16),
        2 => TO_SIGNED(-2622,16),
        3 => TO_SIGNED(-4621,16),
        4 => TO_SIGNED(26946,16),
        5 => TO_SIGNED(12563,16),
        6 => TO_SIGNED(-2753,16),
        7 => TO_SIGNED(-2282,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k1 <= (
        0 => TO_SIGNED(32445,16),
        1 => TO_SIGNED(31729,16),
        2 => TO_SIGNED(-2703,16),
        3 => TO_SIGNED(-5100,16),
        4 => TO_SIGNED(31267,16),
        5 => TO_SIGNED(27133,16),
        6 => TO_SIGNED(-3194,16),
        7 => TO_SIGNED(-4929,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c(0)));
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r(1) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c(1)));
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(0) * u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r(0);
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p(1) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(1) * u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_r(1);
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p(0),31) + RESIZE(u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_p(1),31);
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_x(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_w(0);
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_y(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_x(0);
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr52_q),14);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr51_q),14);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr48_q_12_q),3);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr48_q_12_q),3);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(0);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_d(1) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_a(1);
            u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s(0) <= u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_delay : dspba_delay
    GENERIC MAP (width => 31, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_s(0)(30 downto 0)), xout => u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_cm49(LOOKUP,262)@10
    u0_m0_wo0_cm49: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm49_q <= "0111111010111101";
        ELSIF rising_edge(clk) THEN            CASE (bank_u0_m0_wi0_wo0_b) IS
                WHEN "000" =>  u0_m0_wo0_cm49_q <= "0111111010111101";
                WHEN "001" =>  u0_m0_wo0_cm49_q <= "0111101111110001";
                WHEN "010" =>  u0_m0_wo0_cm49_q <= "1111010101110001";
                WHEN "011" =>  u0_m0_wo0_cm49_q <= "1110110000010100";
                WHEN "100" =>  u0_m0_wo0_cm49_q <= "0111101000100011";
                WHEN "101" =>  u0_m0_wo0_cm49_q <= "0110100111111101";
                WHEN "110" =>  u0_m0_wo0_cm49_q <= "1111001110000110";
                WHEN "111" =>  u0_m0_wo0_cm49_q <= "1110110010111111";
                WHEN OTHERS =>
                    u0_m0_wo0_cm49_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_mtree_madd4_13_oddmult(MULT,384)@11
    u0_m0_wo0_mtree_madd4_13_oddmult_pr <= SIGNED(u0_m0_wo0_mtree_madd4_13_oddmult_a) * SIGNED(u0_m0_wo0_mtree_madd4_13_oddmult_b);
    u0_m0_wo0_mtree_madd4_13_oddmult_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_13_oddmult_a <= (others => '0');
            u0_m0_wo0_mtree_madd4_13_oddmult_b <= (others => '0');
            u0_m0_wo0_mtree_madd4_13_oddmult_s1 <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_13_oddmult_a <= u0_m0_wo0_cm49_q;
            u0_m0_wo0_mtree_madd4_13_oddmult_b <= u0_m0_wo0_wi0_delayr49_q;
            u0_m0_wo0_mtree_madd4_13_oddmult_s1 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_13_oddmult_pr);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_13_oddmult_q <= u0_m0_wo0_mtree_madd4_13_oddmult_s1;

	--u0_m0_wo0_mtree_madd4_13_constmult0_shift0(BITSHIFT,382)@12
    u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q_int <= u0_m0_wo0_wi0_delayr50_q & "000000000000000";
    u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q <= u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q_int(28 downto 0);

	--u0_m0_wo0_mtree_madd4_13_constmult0_sub_1(SUB,383)@12
    u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_a <= STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q(28)) & u0_m0_wo0_mtree_madd4_13_constmult0_shift0_q);
    u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_b <= STD_LOGIC_VECTOR((29 downto 14 => u0_m0_wo0_wi0_delayr50_q(13)) & u0_m0_wo0_wi0_delayr50_q);
    u0_m0_wo0_mtree_madd4_13_constmult0_sub_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_q <= u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_o(29 downto 0);


	--u0_m0_wo0_mtree_madd4_13_sum1(ADD,385)@13
    u0_m0_wo0_mtree_madd4_13_sum1_a <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_q(29)) & u0_m0_wo0_mtree_madd4_13_constmult0_sub_1_q);
    u0_m0_wo0_mtree_madd4_13_sum1_b <= STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_madd4_13_oddmult_q(29)) & u0_m0_wo0_mtree_madd4_13_oddmult_q);
    u0_m0_wo0_mtree_madd4_13_sum1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_13_sum1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_13_sum1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_madd4_13_sum1_a) + SIGNED(u0_m0_wo0_mtree_madd4_13_sum1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_13_sum1_q <= u0_m0_wo0_mtree_madd4_13_sum1_o(30 downto 0);


	--u0_m0_wo0_mtree_madd4_13_sum_final(ADD,387)@14
    u0_m0_wo0_mtree_madd4_13_sum_final_a <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_madd4_13_sum1_q(30)) & u0_m0_wo0_mtree_madd4_13_sum1_q);
    u0_m0_wo0_mtree_madd4_13_sum_final_b <= STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_q(30)) & u0_m0_wo0_mtree_madd4_13_oddmultadd_cma_q);
    u0_m0_wo0_mtree_madd4_13_sum_final: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_13_sum_final_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_13_sum_final_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_madd4_13_sum_final_a) + SIGNED(u0_m0_wo0_mtree_madd4_13_sum_final_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_13_sum_final_q <= u0_m0_wo0_mtree_madd4_13_sum_final_o(31 downto 0);


	--d_u0_m0_wo0_wi0_delayr45_q_13(DELAY,453)@11
    d_u0_m0_wo0_wi0_delayr45_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr45_q, xout => d_u0_m0_wo0_wi0_delayr45_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr46_q_13(DELAY,454)@11
    d_u0_m0_wo0_wi0_delayr46_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr46_q, xout => d_u0_m0_wo0_wi0_delayr46_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr47_q_13(DELAY,455)@11
    d_u0_m0_wo0_wi0_delayr47_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr47_q, xout => d_u0_m0_wo0_wi0_delayr47_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_bank_delayr52_q_13(DELAY,511)@12
    d_u0_m0_wo0_bank_delayr52_q_13 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_bank_delayr48_q_12_q, xout => d_u0_m0_wo0_bank_delayr52_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr48_q_13(DELAY,456)@11
    d_u0_m0_wo0_wi0_delayr48_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr48_q, xout => d_u0_m0_wo0_wi0_delayr48_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_12_cma(CHAINMULTADD,388)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_12_cma_k0 <= (
        0 => TO_SIGNED(31466,16),
        1 => TO_SIGNED(28748,16),
        2 => TO_SIGNED(-2622,16),
        3 => TO_SIGNED(-4621,16),
        4 => TO_SIGNED(26946,16),
        5 => TO_SIGNED(12563,16),
        6 => TO_SIGNED(-2753,16),
        7 => TO_SIGNED(-2282,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_12_cma_k1 <= (
        0 => TO_SIGNED(29883,16),
        1 => TO_SIGNED(24152,16),
        2 => TO_SIGNED(-2490,16),
        3 => TO_SIGNED(-3882,16),
        4 => TO_SIGNED(20323,16),
        5 => TO_SIGNED(-5035,16),
        6 => TO_SIGNED(-2076,16),
        7 => TO_SIGNED(914,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_12_cma_k2 <= (
        0 => TO_SIGNED(27754,16),
        1 => TO_SIGNED(18462,16),
        2 => TO_SIGNED(-2312,16),
        3 => TO_SIGNED(-2967,16),
        4 => TO_SIGNED(12174,16),
        5 => TO_SIGNED(-18906,16),
        6 => TO_SIGNED(-1243,16),
        7 => TO_SIGNED(3434,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_12_cma_k3 <= (
        0 => TO_SIGNED(25149,16),
        1 => TO_SIGNED(12295,16),
        2 => TO_SIGNED(-2095,16),
        3 => TO_SIGNED(-1976,16),
        4 => TO_SIGNED(3435,16),
        5 => TO_SIGNED(-24426,16),
        6 => TO_SIGNED(-351,16),
        7 => TO_SIGNED(4437,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_12_cma_r(0) <= u0_m0_wo0_mtree_madd4_12_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_12_cma_c(0)));
    u0_m0_wo0_mtree_madd4_12_cma_r(1) <= u0_m0_wo0_mtree_madd4_12_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_12_cma_c(1)));
    u0_m0_wo0_mtree_madd4_12_cma_r(2) <= u0_m0_wo0_mtree_madd4_12_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_12_cma_c(2)));
    u0_m0_wo0_mtree_madd4_12_cma_r(3) <= u0_m0_wo0_mtree_madd4_12_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_12_cma_c(3)));
    u0_m0_wo0_mtree_madd4_12_cma_p(0) <= u0_m0_wo0_mtree_madd4_12_cma_a(0) * u0_m0_wo0_mtree_madd4_12_cma_r(0);
    u0_m0_wo0_mtree_madd4_12_cma_p(1) <= u0_m0_wo0_mtree_madd4_12_cma_a(1) * u0_m0_wo0_mtree_madd4_12_cma_r(1);
    u0_m0_wo0_mtree_madd4_12_cma_p(2) <= u0_m0_wo0_mtree_madd4_12_cma_a(2) * u0_m0_wo0_mtree_madd4_12_cma_r(2);
    u0_m0_wo0_mtree_madd4_12_cma_p(3) <= u0_m0_wo0_mtree_madd4_12_cma_a(3) * u0_m0_wo0_mtree_madd4_12_cma_r(3);
    u0_m0_wo0_mtree_madd4_12_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_12_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_12_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_12_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_12_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_12_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_12_cma_x(0) <= u0_m0_wo0_mtree_madd4_12_cma_w(0) + u0_m0_wo0_mtree_madd4_12_cma_w(1);
    u0_m0_wo0_mtree_madd4_12_cma_y(0) <= u0_m0_wo0_mtree_madd4_12_cma_x(0);
    u0_m0_wo0_mtree_madd4_12_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_12_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_12_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_12_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_12_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_12_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr48_q_13_q),14);
            u0_m0_wo0_mtree_madd4_12_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr47_q_13_q),14);
            u0_m0_wo0_mtree_madd4_12_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr46_q_13_q),14);
            u0_m0_wo0_mtree_madd4_12_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr45_q_13_q),14);
            u0_m0_wo0_mtree_madd4_12_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_12_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_12_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_12_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_12_cma_d(0) <= u0_m0_wo0_mtree_madd4_12_cma_a(0);
            u0_m0_wo0_mtree_madd4_12_cma_d(1) <= u0_m0_wo0_mtree_madd4_12_cma_a(1);
            u0_m0_wo0_mtree_madd4_12_cma_d(2) <= u0_m0_wo0_mtree_madd4_12_cma_a(2);
            u0_m0_wo0_mtree_madd4_12_cma_d(3) <= u0_m0_wo0_mtree_madd4_12_cma_a(3);
            u0_m0_wo0_mtree_madd4_12_cma_s(0) <= u0_m0_wo0_mtree_madd4_12_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_12_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_12_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_12_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_6(ADD,346)@15
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_12_cma_q(31)) & u0_m0_wo0_mtree_madd4_12_cma_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_13_sum_final_q(31)) & u0_m0_wo0_mtree_madd4_13_sum_final_q);
    u0_m0_wo0_mtree_add0_6: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_3(ADD,356)@16
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_6_q(32)) & u0_m0_wo0_mtree_add0_6_q);
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_7_q(32)) & u0_m0_wo0_mtree_add0_7_q);
    u0_m0_wo0_mtree_add1_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(33 downto 0);


	--d_u0_m0_wo0_wi0_delayr41_q_13(DELAY,449)@11
    d_u0_m0_wo0_wi0_delayr41_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr41_q, xout => d_u0_m0_wo0_wi0_delayr41_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr42_q_13(DELAY,450)@11
    d_u0_m0_wo0_wi0_delayr42_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr42_q, xout => d_u0_m0_wo0_wi0_delayr42_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr43_q_13(DELAY,451)@11
    d_u0_m0_wo0_wi0_delayr43_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr43_q, xout => d_u0_m0_wo0_wi0_delayr43_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr44_q_13(DELAY,452)@11
    d_u0_m0_wo0_wi0_delayr44_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr44_q, xout => d_u0_m0_wo0_wi0_delayr44_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_11_cma(CHAINMULTADD,389)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_11_cma_k0 <= (
        0 => TO_SIGNED(22169,16),
        1 => TO_SIGNED(6286,16),
        2 => TO_SIGNED(-1847,16),
        3 => TO_SIGNED(-1010,16),
        4 => TO_SIGNED(-4942,16),
        5 => TO_SIGNED(-20920,16),
        6 => TO_SIGNED(504,16),
        7 => TO_SIGNED(3800,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_11_cma_k1 <= (
        0 => TO_SIGNED(18920,16),
        1 => TO_SIGNED(1018,16),
        2 => TO_SIGNED(-1576,16),
        3 => TO_SIGNED(-163,16),
        4 => TO_SIGNED(-12094,16),
        5 => TO_SIGNED(-11491,16),
        6 => TO_SIGNED(1235,16),
        7 => TO_SIGNED(2087,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_11_cma_k2 <= (
        0 => TO_SIGNED(15516,16),
        1 => TO_SIGNED(-3062,16),
        2 => TO_SIGNED(-1293,16),
        3 => TO_SIGNED(492,16),
        4 => TO_SIGNED(-17345,16),
        5 => TO_SIGNED(-1120,16),
        6 => TO_SIGNED(1772,16),
        7 => TO_SIGNED(203,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_11_cma_k3 <= (
        0 => TO_SIGNED(12071,16),
        1 => TO_SIGNED(-5693,16),
        2 => TO_SIGNED(-1005,16),
        3 => TO_SIGNED(915,16),
        4 => TO_SIGNED(-20338,16),
        5 => TO_SIGNED(5878,16),
        6 => TO_SIGNED(2077,16),
        7 => TO_SIGNED(-1068,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_11_cma_r(0) <= u0_m0_wo0_mtree_madd4_11_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_11_cma_c(0)));
    u0_m0_wo0_mtree_madd4_11_cma_r(1) <= u0_m0_wo0_mtree_madd4_11_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_11_cma_c(1)));
    u0_m0_wo0_mtree_madd4_11_cma_r(2) <= u0_m0_wo0_mtree_madd4_11_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_11_cma_c(2)));
    u0_m0_wo0_mtree_madd4_11_cma_r(3) <= u0_m0_wo0_mtree_madd4_11_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_11_cma_c(3)));
    u0_m0_wo0_mtree_madd4_11_cma_p(0) <= u0_m0_wo0_mtree_madd4_11_cma_a(0) * u0_m0_wo0_mtree_madd4_11_cma_r(0);
    u0_m0_wo0_mtree_madd4_11_cma_p(1) <= u0_m0_wo0_mtree_madd4_11_cma_a(1) * u0_m0_wo0_mtree_madd4_11_cma_r(1);
    u0_m0_wo0_mtree_madd4_11_cma_p(2) <= u0_m0_wo0_mtree_madd4_11_cma_a(2) * u0_m0_wo0_mtree_madd4_11_cma_r(2);
    u0_m0_wo0_mtree_madd4_11_cma_p(3) <= u0_m0_wo0_mtree_madd4_11_cma_a(3) * u0_m0_wo0_mtree_madd4_11_cma_r(3);
    u0_m0_wo0_mtree_madd4_11_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_11_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_11_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_11_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_11_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_11_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_11_cma_x(0) <= u0_m0_wo0_mtree_madd4_11_cma_w(0) + u0_m0_wo0_mtree_madd4_11_cma_w(1);
    u0_m0_wo0_mtree_madd4_11_cma_y(0) <= u0_m0_wo0_mtree_madd4_11_cma_x(0);
    u0_m0_wo0_mtree_madd4_11_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_11_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_11_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_11_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_11_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_11_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr44_q_13_q),14);
            u0_m0_wo0_mtree_madd4_11_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr43_q_13_q),14);
            u0_m0_wo0_mtree_madd4_11_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr42_q_13_q),14);
            u0_m0_wo0_mtree_madd4_11_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr41_q_13_q),14);
            u0_m0_wo0_mtree_madd4_11_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_11_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_11_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_11_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_11_cma_d(0) <= u0_m0_wo0_mtree_madd4_11_cma_a(0);
            u0_m0_wo0_mtree_madd4_11_cma_d(1) <= u0_m0_wo0_mtree_madd4_11_cma_a(1);
            u0_m0_wo0_mtree_madd4_11_cma_d(2) <= u0_m0_wo0_mtree_madd4_11_cma_a(2);
            u0_m0_wo0_mtree_madd4_11_cma_d(3) <= u0_m0_wo0_mtree_madd4_11_cma_a(3);
            u0_m0_wo0_mtree_madd4_11_cma_s(0) <= u0_m0_wo0_mtree_madd4_11_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_11_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_11_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_11_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_delayr37_q_13(DELAY,445)@11
    d_u0_m0_wo0_wi0_delayr37_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr37_q, xout => d_u0_m0_wo0_wi0_delayr37_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr38_q_13(DELAY,446)@11
    d_u0_m0_wo0_wi0_delayr38_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr38_q, xout => d_u0_m0_wo0_wi0_delayr38_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr39_q_13(DELAY,447)@11
    d_u0_m0_wo0_wi0_delayr39_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr39_q, xout => d_u0_m0_wo0_wi0_delayr39_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr40_q_13(DELAY,448)@11
    d_u0_m0_wo0_wi0_delayr40_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr40_q, xout => d_u0_m0_wo0_wi0_delayr40_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_10_cma(CHAINMULTADD,390)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_10_cma_k0 <= (
        0 => TO_SIGNED(8697,16),
        1 => TO_SIGNED(-6816,16),
        2 => TO_SIGNED(-724,16),
        3 => TO_SIGNED(1095,16),
        4 => TO_SIGNED(-20991,16),
        5 => TO_SIGNED(7719,16),
        6 => TO_SIGNED(2144,16),
        7 => TO_SIGNED(-1402,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_10_cma_k1 <= (
        0 => TO_SIGNED(5500,16),
        1 => TO_SIGNED(-6564,16),
        2 => TO_SIGNED(-458,16),
        3 => TO_SIGNED(1055,16),
        4 => TO_SIGNED(-19540,16),
        5 => TO_SIGNED(5496,16),
        6 => TO_SIGNED(1996,16),
        7 => TO_SIGNED(-998,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_10_cma_k2 <= (
        0 => TO_SIGNED(2574,16),
        1 => TO_SIGNED(-5231,16),
        2 => TO_SIGNED(-214,16),
        3 => TO_SIGNED(840,16),
        4 => TO_SIGNED(-16455,16),
        5 => TO_SIGNED(2024,16),
        6 => TO_SIGNED(1681,16),
        7 => TO_SIGNED(-367,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_10_cma_k3 <= (
        0 => TO_SIGNED(-2,16),
        1 => TO_SIGNED(-3219,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(517,16),
        4 => TO_SIGNED(-12363,16),
        5 => TO_SIGNED(5,16),
        6 => TO_SIGNED(1263,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_10_cma_r(0) <= u0_m0_wo0_mtree_madd4_10_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_10_cma_c(0)));
    u0_m0_wo0_mtree_madd4_10_cma_r(1) <= u0_m0_wo0_mtree_madd4_10_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_10_cma_c(1)));
    u0_m0_wo0_mtree_madd4_10_cma_r(2) <= u0_m0_wo0_mtree_madd4_10_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_10_cma_c(2)));
    u0_m0_wo0_mtree_madd4_10_cma_r(3) <= u0_m0_wo0_mtree_madd4_10_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_10_cma_c(3)));
    u0_m0_wo0_mtree_madd4_10_cma_p(0) <= u0_m0_wo0_mtree_madd4_10_cma_a(0) * u0_m0_wo0_mtree_madd4_10_cma_r(0);
    u0_m0_wo0_mtree_madd4_10_cma_p(1) <= u0_m0_wo0_mtree_madd4_10_cma_a(1) * u0_m0_wo0_mtree_madd4_10_cma_r(1);
    u0_m0_wo0_mtree_madd4_10_cma_p(2) <= u0_m0_wo0_mtree_madd4_10_cma_a(2) * u0_m0_wo0_mtree_madd4_10_cma_r(2);
    u0_m0_wo0_mtree_madd4_10_cma_p(3) <= u0_m0_wo0_mtree_madd4_10_cma_a(3) * u0_m0_wo0_mtree_madd4_10_cma_r(3);
    u0_m0_wo0_mtree_madd4_10_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_10_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_10_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_10_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_10_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_10_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_10_cma_x(0) <= u0_m0_wo0_mtree_madd4_10_cma_w(0) + u0_m0_wo0_mtree_madd4_10_cma_w(1);
    u0_m0_wo0_mtree_madd4_10_cma_y(0) <= u0_m0_wo0_mtree_madd4_10_cma_x(0);
    u0_m0_wo0_mtree_madd4_10_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_10_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_10_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_10_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_10_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_10_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr40_q_13_q),14);
            u0_m0_wo0_mtree_madd4_10_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr39_q_13_q),14);
            u0_m0_wo0_mtree_madd4_10_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr38_q_13_q),14);
            u0_m0_wo0_mtree_madd4_10_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr37_q_13_q),14);
            u0_m0_wo0_mtree_madd4_10_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_10_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_10_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_10_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_10_cma_d(0) <= u0_m0_wo0_mtree_madd4_10_cma_a(0);
            u0_m0_wo0_mtree_madd4_10_cma_d(1) <= u0_m0_wo0_mtree_madd4_10_cma_a(1);
            u0_m0_wo0_mtree_madd4_10_cma_d(2) <= u0_m0_wo0_mtree_madd4_10_cma_a(2);
            u0_m0_wo0_mtree_madd4_10_cma_d(3) <= u0_m0_wo0_mtree_madd4_10_cma_a(3);
            u0_m0_wo0_mtree_madd4_10_cma_s(0) <= u0_m0_wo0_mtree_madd4_10_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_10_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_10_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_10_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_5(ADD,345)@15
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_10_cma_q(31)) & u0_m0_wo0_mtree_madd4_10_cma_q);
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_11_cma_q(31)) & u0_m0_wo0_mtree_madd4_11_cma_q);
    u0_m0_wo0_mtree_add0_5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(32 downto 0);


	--d_u0_m0_wo0_wi0_delayr33_q_13(DELAY,441)@11
    d_u0_m0_wo0_wi0_delayr33_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr33_q, xout => d_u0_m0_wo0_wi0_delayr33_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr34_q_13(DELAY,442)@11
    d_u0_m0_wo0_wi0_delayr34_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr34_q, xout => d_u0_m0_wo0_wi0_delayr34_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr35_q_13(DELAY,443)@11
    d_u0_m0_wo0_wi0_delayr35_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr35_q, xout => d_u0_m0_wo0_wi0_delayr35_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr36_q_13(DELAY,444)@11
    d_u0_m0_wo0_wi0_delayr36_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr36_q, xout => d_u0_m0_wo0_wi0_delayr36_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_9_cma(CHAINMULTADD,391)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_9_cma_k0 <= (
        0 => TO_SIGNED(-2175,16),
        1 => TO_SIGNED(-965,16),
        2 => TO_SIGNED(181,16),
        3 => TO_SIGNED(155,16),
        4 => TO_SIGNED(-7940,16),
        5 => TO_SIGNED(566,16),
        6 => TO_SIGNED(811,16),
        7 => TO_SIGNED(-102,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_9_cma_k1 <= (
        0 => TO_SIGNED(-3902,16),
        1 => TO_SIGNED(1119,16),
        2 => TO_SIGNED(325,16),
        3 => TO_SIGNED(-179,16),
        4 => TO_SIGNED(-3816,16),
        5 => TO_SIGNED(2904,16),
        6 => TO_SIGNED(389,16),
        7 => TO_SIGNED(-527,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_9_cma_k2 <= (
        0 => TO_SIGNED(-5165,16),
        1 => TO_SIGNED(2711,16),
        2 => TO_SIGNED(430,16),
        3 => TO_SIGNED(-435,16),
        4 => TO_SIGNED(-485,16),
        5 => TO_SIGNED(5092,16),
        6 => TO_SIGNED(49,16),
        7 => TO_SIGNED(-925,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_9_cma_k3 <= (
        0 => TO_SIGNED(-5966,16),
        1 => TO_SIGNED(3611,16),
        2 => TO_SIGNED(497,16),
        3 => TO_SIGNED(-580,16),
        4 => TO_SIGNED(1752,16),
        5 => TO_SIGNED(5392,16),
        6 => TO_SIGNED(-179,16),
        7 => TO_SIGNED(-979,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_9_cma_r(0) <= u0_m0_wo0_mtree_madd4_9_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_9_cma_c(0)));
    u0_m0_wo0_mtree_madd4_9_cma_r(1) <= u0_m0_wo0_mtree_madd4_9_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_9_cma_c(1)));
    u0_m0_wo0_mtree_madd4_9_cma_r(2) <= u0_m0_wo0_mtree_madd4_9_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_9_cma_c(2)));
    u0_m0_wo0_mtree_madd4_9_cma_r(3) <= u0_m0_wo0_mtree_madd4_9_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_9_cma_c(3)));
    u0_m0_wo0_mtree_madd4_9_cma_p(0) <= u0_m0_wo0_mtree_madd4_9_cma_a(0) * u0_m0_wo0_mtree_madd4_9_cma_r(0);
    u0_m0_wo0_mtree_madd4_9_cma_p(1) <= u0_m0_wo0_mtree_madd4_9_cma_a(1) * u0_m0_wo0_mtree_madd4_9_cma_r(1);
    u0_m0_wo0_mtree_madd4_9_cma_p(2) <= u0_m0_wo0_mtree_madd4_9_cma_a(2) * u0_m0_wo0_mtree_madd4_9_cma_r(2);
    u0_m0_wo0_mtree_madd4_9_cma_p(3) <= u0_m0_wo0_mtree_madd4_9_cma_a(3) * u0_m0_wo0_mtree_madd4_9_cma_r(3);
    u0_m0_wo0_mtree_madd4_9_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_9_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_9_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_9_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_9_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_9_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_9_cma_x(0) <= u0_m0_wo0_mtree_madd4_9_cma_w(0) + u0_m0_wo0_mtree_madd4_9_cma_w(1);
    u0_m0_wo0_mtree_madd4_9_cma_y(0) <= u0_m0_wo0_mtree_madd4_9_cma_x(0);
    u0_m0_wo0_mtree_madd4_9_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_9_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_9_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_9_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_9_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_9_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr36_q_13_q),14);
            u0_m0_wo0_mtree_madd4_9_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr35_q_13_q),14);
            u0_m0_wo0_mtree_madd4_9_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr34_q_13_q),14);
            u0_m0_wo0_mtree_madd4_9_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr33_q_13_q),14);
            u0_m0_wo0_mtree_madd4_9_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_9_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_9_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_9_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_9_cma_d(0) <= u0_m0_wo0_mtree_madd4_9_cma_a(0);
            u0_m0_wo0_mtree_madd4_9_cma_d(1) <= u0_m0_wo0_mtree_madd4_9_cma_a(1);
            u0_m0_wo0_mtree_madd4_9_cma_d(2) <= u0_m0_wo0_mtree_madd4_9_cma_a(2);
            u0_m0_wo0_mtree_madd4_9_cma_d(3) <= u0_m0_wo0_mtree_madd4_9_cma_a(3);
            u0_m0_wo0_mtree_madd4_9_cma_s(0) <= u0_m0_wo0_mtree_madd4_9_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_9_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_9_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_9_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_delayr29_q_13(DELAY,437)@11
    d_u0_m0_wo0_wi0_delayr29_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr29_q, xout => d_u0_m0_wo0_wi0_delayr29_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr30_q_13(DELAY,438)@11
    d_u0_m0_wo0_wi0_delayr30_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr30_q, xout => d_u0_m0_wo0_wi0_delayr30_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr31_q_13(DELAY,439)@11
    d_u0_m0_wo0_wi0_delayr31_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr31_q, xout => d_u0_m0_wo0_wi0_delayr31_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr32_q_13(DELAY,440)@11
    d_u0_m0_wo0_wi0_delayr32_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr32_q, xout => d_u0_m0_wo0_wi0_delayr32_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_8_cma(CHAINMULTADD,392)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_8_cma_k0 <= (
        0 => TO_SIGNED(-6325,16),
        1 => TO_SIGNED(3757,16),
        2 => TO_SIGNED(527,16),
        3 => TO_SIGNED(-604,16),
        4 => TO_SIGNED(2808,16),
        5 => TO_SIGNED(3324,16),
        6 => TO_SIGNED(-286,16),
        7 => TO_SIGNED(-604,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_8_cma_k1 <= (
        0 => TO_SIGNED(-6281,16),
        1 => TO_SIGNED(3223,16),
        2 => TO_SIGNED(523,16),
        3 => TO_SIGNED(-518,16),
        4 => TO_SIGNED(2796,16),
        5 => TO_SIGNED(-161,16),
        6 => TO_SIGNED(-285,16),
        7 => TO_SIGNED(29,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_8_cma_k2 <= (
        0 => TO_SIGNED(-5887,16),
        1 => TO_SIGNED(2184,16),
        2 => TO_SIGNED(490,16),
        3 => TO_SIGNED(-351,16),
        4 => TO_SIGNED(1985,16),
        5 => TO_SIGNED(-3352,16),
        6 => TO_SIGNED(-202,16),
        7 => TO_SIGNED(609,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_8_cma_k3 <= (
        0 => TO_SIGNED(-5206,16),
        1 => TO_SIGNED(882,16),
        2 => TO_SIGNED(433,16),
        3 => TO_SIGNED(-141,16),
        4 => TO_SIGNED(741,16),
        5 => TO_SIGNED(-4832,16),
        6 => TO_SIGNED(-75,16),
        7 => TO_SIGNED(877,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_8_cma_r(0) <= u0_m0_wo0_mtree_madd4_8_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_8_cma_c(0)));
    u0_m0_wo0_mtree_madd4_8_cma_r(1) <= u0_m0_wo0_mtree_madd4_8_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_8_cma_c(1)));
    u0_m0_wo0_mtree_madd4_8_cma_r(2) <= u0_m0_wo0_mtree_madd4_8_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_8_cma_c(2)));
    u0_m0_wo0_mtree_madd4_8_cma_r(3) <= u0_m0_wo0_mtree_madd4_8_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_8_cma_c(3)));
    u0_m0_wo0_mtree_madd4_8_cma_p(0) <= u0_m0_wo0_mtree_madd4_8_cma_a(0) * u0_m0_wo0_mtree_madd4_8_cma_r(0);
    u0_m0_wo0_mtree_madd4_8_cma_p(1) <= u0_m0_wo0_mtree_madd4_8_cma_a(1) * u0_m0_wo0_mtree_madd4_8_cma_r(1);
    u0_m0_wo0_mtree_madd4_8_cma_p(2) <= u0_m0_wo0_mtree_madd4_8_cma_a(2) * u0_m0_wo0_mtree_madd4_8_cma_r(2);
    u0_m0_wo0_mtree_madd4_8_cma_p(3) <= u0_m0_wo0_mtree_madd4_8_cma_a(3) * u0_m0_wo0_mtree_madd4_8_cma_r(3);
    u0_m0_wo0_mtree_madd4_8_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_8_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_8_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_8_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_8_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_8_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_8_cma_x(0) <= u0_m0_wo0_mtree_madd4_8_cma_w(0) + u0_m0_wo0_mtree_madd4_8_cma_w(1);
    u0_m0_wo0_mtree_madd4_8_cma_y(0) <= u0_m0_wo0_mtree_madd4_8_cma_x(0);
    u0_m0_wo0_mtree_madd4_8_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_8_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_8_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_8_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_8_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_8_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr32_q_13_q),14);
            u0_m0_wo0_mtree_madd4_8_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr31_q_13_q),14);
            u0_m0_wo0_mtree_madd4_8_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr30_q_13_q),14);
            u0_m0_wo0_mtree_madd4_8_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr29_q_13_q),14);
            u0_m0_wo0_mtree_madd4_8_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_8_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_8_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_8_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_8_cma_d(0) <= u0_m0_wo0_mtree_madd4_8_cma_a(0);
            u0_m0_wo0_mtree_madd4_8_cma_d(1) <= u0_m0_wo0_mtree_madd4_8_cma_a(1);
            u0_m0_wo0_mtree_madd4_8_cma_d(2) <= u0_m0_wo0_mtree_madd4_8_cma_a(2);
            u0_m0_wo0_mtree_madd4_8_cma_d(3) <= u0_m0_wo0_mtree_madd4_8_cma_a(3);
            u0_m0_wo0_mtree_madd4_8_cma_s(0) <= u0_m0_wo0_mtree_madd4_8_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_8_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_8_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_8_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_4(ADD,344)@15
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_8_cma_q(31)) & u0_m0_wo0_mtree_madd4_8_cma_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_9_cma_q(31)) & u0_m0_wo0_mtree_madd4_9_cma_q);
    u0_m0_wo0_mtree_add0_4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_2(ADD,355)@16
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_4_q(32)) & u0_m0_wo0_mtree_add0_4_q);
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_5_q(32)) & u0_m0_wo0_mtree_add0_5_q);
    u0_m0_wo0_mtree_add1_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(33 downto 0);


	--u0_m0_wo0_mtree_add2_1(ADD,360)@17
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_2_q(33)) & u0_m0_wo0_mtree_add1_2_q);
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_3_q(33)) & u0_m0_wo0_mtree_add1_3_q);
    u0_m0_wo0_mtree_add2_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(34 downto 0);


	--d_u0_m0_wo0_wi0_delayr25_q_13(DELAY,433)@11
    d_u0_m0_wo0_wi0_delayr25_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr25_q, xout => d_u0_m0_wo0_wi0_delayr25_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr26_q_13(DELAY,434)@11
    d_u0_m0_wo0_wi0_delayr26_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr26_q, xout => d_u0_m0_wo0_wi0_delayr26_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr27_q_13(DELAY,435)@11
    d_u0_m0_wo0_wi0_delayr27_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr27_q, xout => d_u0_m0_wo0_wi0_delayr27_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr28_q_13(DELAY,436)@11
    d_u0_m0_wo0_wi0_delayr28_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr28_q, xout => d_u0_m0_wo0_wi0_delayr28_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_7_cma(CHAINMULTADD,393)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_7_cma_k0 <= (
        0 => TO_SIGNED(-4308,16),
        1 => TO_SIGNED(-423,16),
        2 => TO_SIGNED(359,16),
        3 => TO_SIGNED(68,16),
        4 => TO_SIGNED(-553,16),
        5 => TO_SIGNED(-4242,16),
        6 => TO_SIGNED(56,16),
        7 => TO_SIGNED(770,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_7_cma_k1 <= (
        0 => TO_SIGNED(-3268,16),
        1 => TO_SIGNED(-1505,16),
        2 => TO_SIGNED(272,16),
        3 => TO_SIGNED(242,16),
        4 => TO_SIGNED(-1564,16),
        5 => TO_SIGNED(-2352,16),
        6 => TO_SIGNED(159,16),
        7 => TO_SIGNED(427,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_7_cma_k2 <= (
        0 => TO_SIGNED(-2159,16),
        1 => TO_SIGNED(-2199,16),
        2 => TO_SIGNED(179,16),
        3 => TO_SIGNED(353,16),
        4 => TO_SIGNED(-2051,16),
        5 => TO_SIGNED(-476,16),
        6 => TO_SIGNED(209,16),
        7 => TO_SIGNED(86,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_7_cma_k3 <= (
        0 => TO_SIGNED(-1047,16),
        1 => TO_SIGNED(-2424,16),
        2 => TO_SIGNED(87,16),
        3 => TO_SIGNED(389,16),
        4 => TO_SIGNED(-1911,16),
        5 => TO_SIGNED(368,16),
        6 => TO_SIGNED(195,16),
        7 => TO_SIGNED(-66,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_7_cma_r(0) <= u0_m0_wo0_mtree_madd4_7_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_7_cma_c(0)));
    u0_m0_wo0_mtree_madd4_7_cma_r(1) <= u0_m0_wo0_mtree_madd4_7_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_7_cma_c(1)));
    u0_m0_wo0_mtree_madd4_7_cma_r(2) <= u0_m0_wo0_mtree_madd4_7_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_7_cma_c(2)));
    u0_m0_wo0_mtree_madd4_7_cma_r(3) <= u0_m0_wo0_mtree_madd4_7_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_7_cma_c(3)));
    u0_m0_wo0_mtree_madd4_7_cma_p(0) <= u0_m0_wo0_mtree_madd4_7_cma_a(0) * u0_m0_wo0_mtree_madd4_7_cma_r(0);
    u0_m0_wo0_mtree_madd4_7_cma_p(1) <= u0_m0_wo0_mtree_madd4_7_cma_a(1) * u0_m0_wo0_mtree_madd4_7_cma_r(1);
    u0_m0_wo0_mtree_madd4_7_cma_p(2) <= u0_m0_wo0_mtree_madd4_7_cma_a(2) * u0_m0_wo0_mtree_madd4_7_cma_r(2);
    u0_m0_wo0_mtree_madd4_7_cma_p(3) <= u0_m0_wo0_mtree_madd4_7_cma_a(3) * u0_m0_wo0_mtree_madd4_7_cma_r(3);
    u0_m0_wo0_mtree_madd4_7_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_7_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_7_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_7_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_7_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_7_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_7_cma_x(0) <= u0_m0_wo0_mtree_madd4_7_cma_w(0) + u0_m0_wo0_mtree_madd4_7_cma_w(1);
    u0_m0_wo0_mtree_madd4_7_cma_y(0) <= u0_m0_wo0_mtree_madd4_7_cma_x(0);
    u0_m0_wo0_mtree_madd4_7_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_7_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_7_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_7_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_7_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_7_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr28_q_13_q),14);
            u0_m0_wo0_mtree_madd4_7_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr27_q_13_q),14);
            u0_m0_wo0_mtree_madd4_7_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr26_q_13_q),14);
            u0_m0_wo0_mtree_madd4_7_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr25_q_13_q),14);
            u0_m0_wo0_mtree_madd4_7_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_7_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_7_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_7_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_7_cma_d(0) <= u0_m0_wo0_mtree_madd4_7_cma_a(0);
            u0_m0_wo0_mtree_madd4_7_cma_d(1) <= u0_m0_wo0_mtree_madd4_7_cma_a(1);
            u0_m0_wo0_mtree_madd4_7_cma_d(2) <= u0_m0_wo0_mtree_madd4_7_cma_a(2);
            u0_m0_wo0_mtree_madd4_7_cma_d(3) <= u0_m0_wo0_mtree_madd4_7_cma_a(3);
            u0_m0_wo0_mtree_madd4_7_cma_s(0) <= u0_m0_wo0_mtree_madd4_7_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_7_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_7_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_7_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_delayr21_q_13(DELAY,429)@11
    d_u0_m0_wo0_wi0_delayr21_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr21_q, xout => d_u0_m0_wo0_wi0_delayr21_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr22_q_13(DELAY,430)@11
    d_u0_m0_wo0_wi0_delayr22_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr22_q, xout => d_u0_m0_wo0_wi0_delayr22_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr23_q_13(DELAY,431)@11
    d_u0_m0_wo0_wi0_delayr23_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr23_q, xout => d_u0_m0_wo0_wi0_delayr23_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr24_q_13(DELAY,432)@11
    d_u0_m0_wo0_wi0_delayr24_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr24_q, xout => d_u0_m0_wo0_wi0_delayr24_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_6_cma(CHAINMULTADD,394)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_6_cma_k0 <= (
        0 => TO_SIGNED(2,16),
        1 => TO_SIGNED(-2193,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(352,16),
        4 => TO_SIGNED(-1171,16),
        5 => TO_SIGNED(1,16),
        6 => TO_SIGNED(119,16),
        7 => TO_SIGNED(0,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_6_cma_k1 <= (
        0 => TO_SIGNED(941,16),
        1 => TO_SIGNED(-1595,16),
        2 => TO_SIGNED(-78,16),
        3 => TO_SIGNED(256,16),
        4 => TO_SIGNED(25,16),
        5 => TO_SIGNED(-933,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_6_cma_k2 <= (
        0 => TO_SIGNED(1725,16),
        1 => TO_SIGNED(-775,16),
        2 => TO_SIGNED(-143,16),
        3 => TO_SIGNED(124,16),
        4 => TO_SIGNED(1458,16),
        5 => TO_SIGNED(-1484,16),
        6 => TO_SIGNED(-148,16),
        7 => TO_SIGNED(269,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_6_cma_k3 <= (
        0 => TO_SIGNED(2327,16),
        1 => TO_SIGNED(96,16),
        2 => TO_SIGNED(-193,16),
        3 => TO_SIGNED(-15,16),
        4 => TO_SIGNED(2876,16),
        5 => TO_SIGNED(-1039,16),
        6 => TO_SIGNED(-293,16),
        7 => TO_SIGNED(188,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_6_cma_r(0) <= u0_m0_wo0_mtree_madd4_6_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_6_cma_c(0)));
    u0_m0_wo0_mtree_madd4_6_cma_r(1) <= u0_m0_wo0_mtree_madd4_6_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_6_cma_c(1)));
    u0_m0_wo0_mtree_madd4_6_cma_r(2) <= u0_m0_wo0_mtree_madd4_6_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_6_cma_c(2)));
    u0_m0_wo0_mtree_madd4_6_cma_r(3) <= u0_m0_wo0_mtree_madd4_6_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_6_cma_c(3)));
    u0_m0_wo0_mtree_madd4_6_cma_p(0) <= u0_m0_wo0_mtree_madd4_6_cma_a(0) * u0_m0_wo0_mtree_madd4_6_cma_r(0);
    u0_m0_wo0_mtree_madd4_6_cma_p(1) <= u0_m0_wo0_mtree_madd4_6_cma_a(1) * u0_m0_wo0_mtree_madd4_6_cma_r(1);
    u0_m0_wo0_mtree_madd4_6_cma_p(2) <= u0_m0_wo0_mtree_madd4_6_cma_a(2) * u0_m0_wo0_mtree_madd4_6_cma_r(2);
    u0_m0_wo0_mtree_madd4_6_cma_p(3) <= u0_m0_wo0_mtree_madd4_6_cma_a(3) * u0_m0_wo0_mtree_madd4_6_cma_r(3);
    u0_m0_wo0_mtree_madd4_6_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_6_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_6_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_6_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_6_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_6_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_6_cma_x(0) <= u0_m0_wo0_mtree_madd4_6_cma_w(0) + u0_m0_wo0_mtree_madd4_6_cma_w(1);
    u0_m0_wo0_mtree_madd4_6_cma_y(0) <= u0_m0_wo0_mtree_madd4_6_cma_x(0);
    u0_m0_wo0_mtree_madd4_6_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_6_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_6_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_6_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_6_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_6_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr24_q_13_q),14);
            u0_m0_wo0_mtree_madd4_6_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr23_q_13_q),14);
            u0_m0_wo0_mtree_madd4_6_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr22_q_13_q),14);
            u0_m0_wo0_mtree_madd4_6_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr21_q_13_q),14);
            u0_m0_wo0_mtree_madd4_6_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_6_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_6_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_6_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_6_cma_d(0) <= u0_m0_wo0_mtree_madd4_6_cma_a(0);
            u0_m0_wo0_mtree_madd4_6_cma_d(1) <= u0_m0_wo0_mtree_madd4_6_cma_a(1);
            u0_m0_wo0_mtree_madd4_6_cma_d(2) <= u0_m0_wo0_mtree_madd4_6_cma_a(2);
            u0_m0_wo0_mtree_madd4_6_cma_d(3) <= u0_m0_wo0_mtree_madd4_6_cma_a(3);
            u0_m0_wo0_mtree_madd4_6_cma_s(0) <= u0_m0_wo0_mtree_madd4_6_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_6_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_6_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_6_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_3(ADD,343)@15
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_6_cma_q(31)) & u0_m0_wo0_mtree_madd4_6_cma_q);
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_7_cma_q(31)) & u0_m0_wo0_mtree_madd4_7_cma_q);
    u0_m0_wo0_mtree_add0_3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(32 downto 0);


	--d_u0_m0_wo0_wi0_delayr17_q_13(DELAY,425)@11
    d_u0_m0_wo0_wi0_delayr17_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr17_q, xout => d_u0_m0_wo0_wi0_delayr17_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr18_q_13(DELAY,426)@11
    d_u0_m0_wo0_wi0_delayr18_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr18_q, xout => d_u0_m0_wo0_wi0_delayr18_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr19_q_13(DELAY,427)@11
    d_u0_m0_wo0_wi0_delayr19_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr19_q, xout => d_u0_m0_wo0_wi0_delayr19_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr20_q_13(DELAY,428)@11
    d_u0_m0_wo0_wi0_delayr20_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr20_q, xout => d_u0_m0_wo0_wi0_delayr20_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_5_cma(CHAINMULTADD,395)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_5_cma_k0 <= (
        0 => TO_SIGNED(2731,16),
        1 => TO_SIGNED(860,16),
        2 => TO_SIGNED(-227,16),
        3 => TO_SIGNED(-138,16),
        4 => TO_SIGNED(4047,16),
        5 => TO_SIGNED(306,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-55,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_5_cma_k1 <= (
        0 => TO_SIGNED(2937,16),
        1 => TO_SIGNED(1390,16),
        2 => TO_SIGNED(-244,16),
        3 => TO_SIGNED(-223,16),
        4 => TO_SIGNED(4796,16),
        5 => TO_SIGNED(1859,16),
        6 => TO_SIGNED(-490,16),
        7 => TO_SIGNED(-337,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_5_cma_k2 <= (
        0 => TO_SIGNED(2952,16),
        1 => TO_SIGNED(1617,16),
        2 => TO_SIGNED(-246,16),
        3 => TO_SIGNED(-259,16),
        4 => TO_SIGNED(5031,16),
        5 => TO_SIGNED(2785,16),
        6 => TO_SIGNED(-514,16),
        7 => TO_SIGNED(-506,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_5_cma_k3 <= (
        0 => TO_SIGNED(2794,16),
        1 => TO_SIGNED(1530,16),
        2 => TO_SIGNED(-232,16),
        3 => TO_SIGNED(-246,16),
        4 => TO_SIGNED(4753,16),
        5 => TO_SIGNED(2627,16),
        6 => TO_SIGNED(-485,16),
        7 => TO_SIGNED(-477,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_5_cma_r(0) <= u0_m0_wo0_mtree_madd4_5_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_5_cma_c(0)));
    u0_m0_wo0_mtree_madd4_5_cma_r(1) <= u0_m0_wo0_mtree_madd4_5_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_5_cma_c(1)));
    u0_m0_wo0_mtree_madd4_5_cma_r(2) <= u0_m0_wo0_mtree_madd4_5_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_5_cma_c(2)));
    u0_m0_wo0_mtree_madd4_5_cma_r(3) <= u0_m0_wo0_mtree_madd4_5_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_5_cma_c(3)));
    u0_m0_wo0_mtree_madd4_5_cma_p(0) <= u0_m0_wo0_mtree_madd4_5_cma_a(0) * u0_m0_wo0_mtree_madd4_5_cma_r(0);
    u0_m0_wo0_mtree_madd4_5_cma_p(1) <= u0_m0_wo0_mtree_madd4_5_cma_a(1) * u0_m0_wo0_mtree_madd4_5_cma_r(1);
    u0_m0_wo0_mtree_madd4_5_cma_p(2) <= u0_m0_wo0_mtree_madd4_5_cma_a(2) * u0_m0_wo0_mtree_madd4_5_cma_r(2);
    u0_m0_wo0_mtree_madd4_5_cma_p(3) <= u0_m0_wo0_mtree_madd4_5_cma_a(3) * u0_m0_wo0_mtree_madd4_5_cma_r(3);
    u0_m0_wo0_mtree_madd4_5_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_5_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_5_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_5_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_5_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_5_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_5_cma_x(0) <= u0_m0_wo0_mtree_madd4_5_cma_w(0) + u0_m0_wo0_mtree_madd4_5_cma_w(1);
    u0_m0_wo0_mtree_madd4_5_cma_y(0) <= u0_m0_wo0_mtree_madd4_5_cma_x(0);
    u0_m0_wo0_mtree_madd4_5_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_5_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_5_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_5_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_5_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_5_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr20_q_13_q),14);
            u0_m0_wo0_mtree_madd4_5_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr19_q_13_q),14);
            u0_m0_wo0_mtree_madd4_5_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr18_q_13_q),14);
            u0_m0_wo0_mtree_madd4_5_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr17_q_13_q),14);
            u0_m0_wo0_mtree_madd4_5_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_5_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_5_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_5_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_5_cma_d(0) <= u0_m0_wo0_mtree_madd4_5_cma_a(0);
            u0_m0_wo0_mtree_madd4_5_cma_d(1) <= u0_m0_wo0_mtree_madd4_5_cma_a(1);
            u0_m0_wo0_mtree_madd4_5_cma_d(2) <= u0_m0_wo0_mtree_madd4_5_cma_a(2);
            u0_m0_wo0_mtree_madd4_5_cma_d(3) <= u0_m0_wo0_mtree_madd4_5_cma_a(3);
            u0_m0_wo0_mtree_madd4_5_cma_s(0) <= u0_m0_wo0_mtree_madd4_5_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_5_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_5_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_5_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_delayr13_q_13(DELAY,421)@11
    d_u0_m0_wo0_wi0_delayr13_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr13_q, xout => d_u0_m0_wo0_wi0_delayr13_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr14_q_13(DELAY,422)@11
    d_u0_m0_wo0_wi0_delayr14_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr14_q, xout => d_u0_m0_wo0_wi0_delayr14_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr15_q_13(DELAY,423)@11
    d_u0_m0_wo0_wi0_delayr15_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr15_q, xout => d_u0_m0_wo0_wi0_delayr15_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr16_q_13(DELAY,424)@11
    d_u0_m0_wo0_wi0_delayr16_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr16_q, xout => d_u0_m0_wo0_wi0_delayr16_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_4_cma(CHAINMULTADD,396)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_4_cma_k0 <= (
        0 => TO_SIGNED(2491,16),
        1 => TO_SIGNED(1178,16),
        2 => TO_SIGNED(-207,16),
        3 => TO_SIGNED(-189,16),
        4 => TO_SIGNED(4045,16),
        5 => TO_SIGNED(1550,16),
        6 => TO_SIGNED(-413,16),
        7 => TO_SIGNED(-281,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_4_cma_k1 <= (
        0 => TO_SIGNED(2074,16),
        1 => TO_SIGNED(651,16),
        2 => TO_SIGNED(-172,16),
        3 => TO_SIGNED(-104,16),
        4 => TO_SIGNED(3051,16),
        5 => TO_SIGNED(188,16),
        6 => TO_SIGNED(-311,16),
        7 => TO_SIGNED(-34,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_4_cma_k2 <= (
        0 => TO_SIGNED(1581,16),
        1 => TO_SIGNED(61,16),
        2 => TO_SIGNED(-131,16),
        3 => TO_SIGNED(-9,16),
        4 => TO_SIGNED(1941,16),
        5 => TO_SIGNED(-774,16),
        6 => TO_SIGNED(-198,16),
        7 => TO_SIGNED(140,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_4_cma_k3 <= (
        0 => TO_SIGNED(1046,16),
        1 => TO_SIGNED(-476,16),
        2 => TO_SIGNED(-87,16),
        3 => TO_SIGNED(76,16),
        4 => TO_SIGNED(886,16),
        5 => TO_SIGNED(-998,16),
        6 => TO_SIGNED(-90,16),
        7 => TO_SIGNED(181,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_4_cma_r(0) <= u0_m0_wo0_mtree_madd4_4_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_4_cma_c(0)));
    u0_m0_wo0_mtree_madd4_4_cma_r(1) <= u0_m0_wo0_mtree_madd4_4_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_4_cma_c(1)));
    u0_m0_wo0_mtree_madd4_4_cma_r(2) <= u0_m0_wo0_mtree_madd4_4_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_4_cma_c(2)));
    u0_m0_wo0_mtree_madd4_4_cma_r(3) <= u0_m0_wo0_mtree_madd4_4_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_4_cma_c(3)));
    u0_m0_wo0_mtree_madd4_4_cma_p(0) <= u0_m0_wo0_mtree_madd4_4_cma_a(0) * u0_m0_wo0_mtree_madd4_4_cma_r(0);
    u0_m0_wo0_mtree_madd4_4_cma_p(1) <= u0_m0_wo0_mtree_madd4_4_cma_a(1) * u0_m0_wo0_mtree_madd4_4_cma_r(1);
    u0_m0_wo0_mtree_madd4_4_cma_p(2) <= u0_m0_wo0_mtree_madd4_4_cma_a(2) * u0_m0_wo0_mtree_madd4_4_cma_r(2);
    u0_m0_wo0_mtree_madd4_4_cma_p(3) <= u0_m0_wo0_mtree_madd4_4_cma_a(3) * u0_m0_wo0_mtree_madd4_4_cma_r(3);
    u0_m0_wo0_mtree_madd4_4_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_4_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_4_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_4_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_4_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_4_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_4_cma_x(0) <= u0_m0_wo0_mtree_madd4_4_cma_w(0) + u0_m0_wo0_mtree_madd4_4_cma_w(1);
    u0_m0_wo0_mtree_madd4_4_cma_y(0) <= u0_m0_wo0_mtree_madd4_4_cma_x(0);
    u0_m0_wo0_mtree_madd4_4_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_4_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_4_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_4_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_4_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_4_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr16_q_13_q),14);
            u0_m0_wo0_mtree_madd4_4_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr15_q_13_q),14);
            u0_m0_wo0_mtree_madd4_4_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr14_q_13_q),14);
            u0_m0_wo0_mtree_madd4_4_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr13_q_13_q),14);
            u0_m0_wo0_mtree_madd4_4_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_4_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_4_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_4_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_4_cma_d(0) <= u0_m0_wo0_mtree_madd4_4_cma_a(0);
            u0_m0_wo0_mtree_madd4_4_cma_d(1) <= u0_m0_wo0_mtree_madd4_4_cma_a(1);
            u0_m0_wo0_mtree_madd4_4_cma_d(2) <= u0_m0_wo0_mtree_madd4_4_cma_a(2);
            u0_m0_wo0_mtree_madd4_4_cma_d(3) <= u0_m0_wo0_mtree_madd4_4_cma_a(3);
            u0_m0_wo0_mtree_madd4_4_cma_s(0) <= u0_m0_wo0_mtree_madd4_4_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_4_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_4_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_4_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_2(ADD,342)@15
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_4_cma_q(31)) & u0_m0_wo0_mtree_madd4_4_cma_q);
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_5_cma_q(31)) & u0_m0_wo0_mtree_madd4_5_cma_q);
    u0_m0_wo0_mtree_add0_2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_1(ADD,354)@16
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_2_q(32)) & u0_m0_wo0_mtree_add0_2_q);
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_3_q(32)) & u0_m0_wo0_mtree_add0_3_q);
    u0_m0_wo0_mtree_add1_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(33 downto 0);


	--d_u0_m0_wo0_wi0_delayr9_q_13(DELAY,417)@11
    d_u0_m0_wo0_wi0_delayr9_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr9_q, xout => d_u0_m0_wo0_wi0_delayr9_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr10_q_13(DELAY,418)@11
    d_u0_m0_wo0_wi0_delayr10_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr10_q, xout => d_u0_m0_wo0_wi0_delayr10_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr11_q_13(DELAY,419)@11
    d_u0_m0_wo0_wi0_delayr11_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr11_q, xout => d_u0_m0_wo0_wi0_delayr11_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr12_q_13(DELAY,420)@11
    d_u0_m0_wo0_wi0_delayr12_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr12_q, xout => d_u0_m0_wo0_wi0_delayr12_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_3_cma(CHAINMULTADD,397)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_3_cma_k0 <= (
        0 => TO_SIGNED(505,16),
        1 => TO_SIGNED(-873,16),
        2 => TO_SIGNED(-42,16),
        3 => TO_SIGNED(140,16),
        4 => TO_SIGNED(22,16),
        5 => TO_SIGNED(-635,16),
        6 => TO_SIGNED(-2,16),
        7 => TO_SIGNED(115,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_3_cma_k1 <= (
        0 => TO_SIGNED(-10,16),
        1 => TO_SIGNED(-1071,16),
        2 => TO_SIGNED(0,16),
        3 => TO_SIGNED(172,16),
        4 => TO_SIGNED(-567,16),
        5 => TO_SIGNED(-152,16),
        6 => TO_SIGNED(58,16),
        7 => TO_SIGNED(27,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_3_cma_k2 <= (
        0 => TO_SIGNED(-474,16),
        1 => TO_SIGNED(-1054,16),
        2 => TO_SIGNED(39,16),
        3 => TO_SIGNED(169,16),
        4 => TO_SIGNED(-851,16),
        5 => TO_SIGNED(8,16),
        6 => TO_SIGNED(86,16),
        7 => TO_SIGNED(-1,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_3_cma_k3 <= (
        0 => TO_SIGNED(-867,16),
        1 => TO_SIGNED(-848,16),
        2 => TO_SIGNED(72,16),
        3 => TO_SIGNED(136,16),
        4 => TO_SIGNED(-855,16),
        5 => TO_SIGNED(-305,16),
        6 => TO_SIGNED(87,16),
        7 => TO_SIGNED(55,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_3_cma_r(0) <= u0_m0_wo0_mtree_madd4_3_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_3_cma_c(0)));
    u0_m0_wo0_mtree_madd4_3_cma_r(1) <= u0_m0_wo0_mtree_madd4_3_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_3_cma_c(1)));
    u0_m0_wo0_mtree_madd4_3_cma_r(2) <= u0_m0_wo0_mtree_madd4_3_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_3_cma_c(2)));
    u0_m0_wo0_mtree_madd4_3_cma_r(3) <= u0_m0_wo0_mtree_madd4_3_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_3_cma_c(3)));
    u0_m0_wo0_mtree_madd4_3_cma_p(0) <= u0_m0_wo0_mtree_madd4_3_cma_a(0) * u0_m0_wo0_mtree_madd4_3_cma_r(0);
    u0_m0_wo0_mtree_madd4_3_cma_p(1) <= u0_m0_wo0_mtree_madd4_3_cma_a(1) * u0_m0_wo0_mtree_madd4_3_cma_r(1);
    u0_m0_wo0_mtree_madd4_3_cma_p(2) <= u0_m0_wo0_mtree_madd4_3_cma_a(2) * u0_m0_wo0_mtree_madd4_3_cma_r(2);
    u0_m0_wo0_mtree_madd4_3_cma_p(3) <= u0_m0_wo0_mtree_madd4_3_cma_a(3) * u0_m0_wo0_mtree_madd4_3_cma_r(3);
    u0_m0_wo0_mtree_madd4_3_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_3_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_3_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_3_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_3_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_3_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_3_cma_x(0) <= u0_m0_wo0_mtree_madd4_3_cma_w(0) + u0_m0_wo0_mtree_madd4_3_cma_w(1);
    u0_m0_wo0_mtree_madd4_3_cma_y(0) <= u0_m0_wo0_mtree_madd4_3_cma_x(0);
    u0_m0_wo0_mtree_madd4_3_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_3_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_3_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_3_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_3_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_3_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr12_q_13_q),14);
            u0_m0_wo0_mtree_madd4_3_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr11_q_13_q),14);
            u0_m0_wo0_mtree_madd4_3_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr10_q_13_q),14);
            u0_m0_wo0_mtree_madd4_3_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr9_q_13_q),14);
            u0_m0_wo0_mtree_madd4_3_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_3_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_3_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_3_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_3_cma_d(0) <= u0_m0_wo0_mtree_madd4_3_cma_a(0);
            u0_m0_wo0_mtree_madd4_3_cma_d(1) <= u0_m0_wo0_mtree_madd4_3_cma_a(1);
            u0_m0_wo0_mtree_madd4_3_cma_d(2) <= u0_m0_wo0_mtree_madd4_3_cma_a(2);
            u0_m0_wo0_mtree_madd4_3_cma_d(3) <= u0_m0_wo0_mtree_madd4_3_cma_a(3);
            u0_m0_wo0_mtree_madd4_3_cma_s(0) <= u0_m0_wo0_mtree_madd4_3_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_3_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_3_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_3_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_delayr5_q_13(DELAY,413)@11
    d_u0_m0_wo0_wi0_delayr5_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr5_q, xout => d_u0_m0_wo0_wi0_delayr5_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr6_q_13(DELAY,414)@11
    d_u0_m0_wo0_wi0_delayr6_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr6_q, xout => d_u0_m0_wo0_wi0_delayr6_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr7_q_13(DELAY,415)@11
    d_u0_m0_wo0_wi0_delayr7_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr7_q, xout => d_u0_m0_wo0_wi0_delayr7_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr8_q_13(DELAY,416)@11
    d_u0_m0_wo0_wi0_delayr8_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr8_q, xout => d_u0_m0_wo0_wi0_delayr8_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_2_cma(CHAINMULTADD,398)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_2_cma_k0 <= (
        0 => TO_SIGNED(-1178,16),
        1 => TO_SIGNED(-506,16),
        2 => TO_SIGNED(98,16),
        3 => TO_SIGNED(81,16),
        4 => TO_SIGNED(-645,16),
        5 => TO_SIGNED(-930,16),
        6 => TO_SIGNED(65,16),
        7 => TO_SIGNED(169,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_2_cma_k1 <= (
        0 => TO_SIGNED(-1407,16),
        1 => TO_SIGNED(-101,16),
        2 => TO_SIGNED(117,16),
        3 => TO_SIGNED(16,16),
        4 => TO_SIGNED(-306,16),
        5 => TO_SIGNED(-1546,16),
        6 => TO_SIGNED(31,16),
        7 => TO_SIGNED(280,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_2_cma_k2 <= (
        0 => TO_SIGNED(-1561,16),
        1 => TO_SIGNED(296,16),
        2 => TO_SIGNED(130,16),
        3 => TO_SIGNED(-47,16),
        4 => TO_SIGNED(79,16),
        5 => TO_SIGNED(-1829,16),
        6 => TO_SIGNED(-8,16),
        7 => TO_SIGNED(332,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_2_cma_k3 <= (
        0 => TO_SIGNED(-1665,16),
        1 => TO_SIGNED(633,16),
        2 => TO_SIGNED(138,16),
        3 => TO_SIGNED(-101,16),
        4 => TO_SIGNED(444,16),
        5 => TO_SIGNED(-1476,16),
        6 => TO_SIGNED(-45,16),
        7 => TO_SIGNED(268,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_2_cma_r(0) <= u0_m0_wo0_mtree_madd4_2_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_2_cma_c(0)));
    u0_m0_wo0_mtree_madd4_2_cma_r(1) <= u0_m0_wo0_mtree_madd4_2_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_2_cma_c(1)));
    u0_m0_wo0_mtree_madd4_2_cma_r(2) <= u0_m0_wo0_mtree_madd4_2_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_2_cma_c(2)));
    u0_m0_wo0_mtree_madd4_2_cma_r(3) <= u0_m0_wo0_mtree_madd4_2_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_2_cma_c(3)));
    u0_m0_wo0_mtree_madd4_2_cma_p(0) <= u0_m0_wo0_mtree_madd4_2_cma_a(0) * u0_m0_wo0_mtree_madd4_2_cma_r(0);
    u0_m0_wo0_mtree_madd4_2_cma_p(1) <= u0_m0_wo0_mtree_madd4_2_cma_a(1) * u0_m0_wo0_mtree_madd4_2_cma_r(1);
    u0_m0_wo0_mtree_madd4_2_cma_p(2) <= u0_m0_wo0_mtree_madd4_2_cma_a(2) * u0_m0_wo0_mtree_madd4_2_cma_r(2);
    u0_m0_wo0_mtree_madd4_2_cma_p(3) <= u0_m0_wo0_mtree_madd4_2_cma_a(3) * u0_m0_wo0_mtree_madd4_2_cma_r(3);
    u0_m0_wo0_mtree_madd4_2_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_2_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_2_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_2_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_2_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_2_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_2_cma_x(0) <= u0_m0_wo0_mtree_madd4_2_cma_w(0) + u0_m0_wo0_mtree_madd4_2_cma_w(1);
    u0_m0_wo0_mtree_madd4_2_cma_y(0) <= u0_m0_wo0_mtree_madd4_2_cma_x(0);
    u0_m0_wo0_mtree_madd4_2_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_2_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_2_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_2_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_2_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_2_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr8_q_13_q),14);
            u0_m0_wo0_mtree_madd4_2_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr7_q_13_q),14);
            u0_m0_wo0_mtree_madd4_2_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr6_q_13_q),14);
            u0_m0_wo0_mtree_madd4_2_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr5_q_13_q),14);
            u0_m0_wo0_mtree_madd4_2_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_2_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_2_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_2_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_2_cma_d(0) <= u0_m0_wo0_mtree_madd4_2_cma_a(0);
            u0_m0_wo0_mtree_madd4_2_cma_d(1) <= u0_m0_wo0_mtree_madd4_2_cma_a(1);
            u0_m0_wo0_mtree_madd4_2_cma_d(2) <= u0_m0_wo0_mtree_madd4_2_cma_a(2);
            u0_m0_wo0_mtree_madd4_2_cma_d(3) <= u0_m0_wo0_mtree_madd4_2_cma_a(3);
            u0_m0_wo0_mtree_madd4_2_cma_s(0) <= u0_m0_wo0_mtree_madd4_2_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_2_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_2_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_2_cma_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_1(ADD,341)@15
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_2_cma_q(31)) & u0_m0_wo0_mtree_madd4_2_cma_q);
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_3_cma_q(31)) & u0_m0_wo0_mtree_madd4_3_cma_q);
    u0_m0_wo0_mtree_add0_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(32 downto 0);


	--d_u0_m0_wo0_wi0_delayr1_q_13(DELAY,409)@11
    d_u0_m0_wo0_wi0_delayr1_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr1_q, xout => d_u0_m0_wo0_wi0_delayr1_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr2_q_13(DELAY,410)@11
    d_u0_m0_wo0_wi0_delayr2_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr2_q, xout => d_u0_m0_wo0_wi0_delayr2_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr3_q_13(DELAY,411)@11
    d_u0_m0_wo0_wi0_delayr3_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr3_q, xout => d_u0_m0_wo0_wi0_delayr3_q_13_q, clk => clk, aclr => areset );

	--d_u0_m0_wo0_wi0_delayr4_q_13(DELAY,412)@11
    d_u0_m0_wo0_wi0_delayr4_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_wi0_delayr4_q, xout => d_u0_m0_wo0_wi0_delayr4_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_mtree_madd4_1_cma(CHAINMULTADD,399)@13
--altera synthesis_off
    u0_m0_wo0_mtree_madd4_1_cma_k0 <= (
        0 => TO_SIGNED(-1766,16),
        1 => TO_SIGNED(892,16),
        2 => TO_SIGNED(147,16),
        3 => TO_SIGNED(-143,16),
        4 => TO_SIGNED(752,16),
        5 => TO_SIGNED(-311,16),
        6 => TO_SIGNED(-76,16),
        7 => TO_SIGNED(56,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_1_cma_k1 <= (
        0 => TO_SIGNED(-1934,16),
        1 => TO_SIGNED(1103,16),
        2 => TO_SIGNED(161,16),
        3 => TO_SIGNED(-177,16),
        4 => TO_SIGNED(994,16),
        5 => TO_SIGNED(1239,16),
        6 => TO_SIGNED(-101,16),
        7 => TO_SIGNED(-225,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_1_cma_k2 <= (
        0 => TO_SIGNED(-2291,16),
        1 => TO_SIGNED(1370,16),
        2 => TO_SIGNED(190,16),
        3 => TO_SIGNED(-220,16),
        4 => TO_SIGNED(1186,16),
        5 => TO_SIGNED(1641,16),
        6 => TO_SIGNED(-121,16),
        7 => TO_SIGNED(-298,16),
        others => (others => '0'));
    u0_m0_wo0_mtree_madd4_1_cma_k3 <= (
        0 => TO_SIGNED(-3036,16),
        1 => TO_SIGNED(1909,16),
        2 => TO_SIGNED(253,16),
        3 => TO_SIGNED(-307,16),
        4 => TO_SIGNED(1358,16),
        5 => TO_SIGNED(-963,16),
        6 => TO_SIGNED(-138,16),
        7 => TO_SIGNED(175,16),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_mtree_madd4_1_cma_r(0) <= u0_m0_wo0_mtree_madd4_1_cma_k0(TO_INTEGER(u0_m0_wo0_mtree_madd4_1_cma_c(0)));
    u0_m0_wo0_mtree_madd4_1_cma_r(1) <= u0_m0_wo0_mtree_madd4_1_cma_k1(TO_INTEGER(u0_m0_wo0_mtree_madd4_1_cma_c(1)));
    u0_m0_wo0_mtree_madd4_1_cma_r(2) <= u0_m0_wo0_mtree_madd4_1_cma_k2(TO_INTEGER(u0_m0_wo0_mtree_madd4_1_cma_c(2)));
    u0_m0_wo0_mtree_madd4_1_cma_r(3) <= u0_m0_wo0_mtree_madd4_1_cma_k3(TO_INTEGER(u0_m0_wo0_mtree_madd4_1_cma_c(3)));
    u0_m0_wo0_mtree_madd4_1_cma_p(0) <= u0_m0_wo0_mtree_madd4_1_cma_a(0) * u0_m0_wo0_mtree_madd4_1_cma_r(0);
    u0_m0_wo0_mtree_madd4_1_cma_p(1) <= u0_m0_wo0_mtree_madd4_1_cma_a(1) * u0_m0_wo0_mtree_madd4_1_cma_r(1);
    u0_m0_wo0_mtree_madd4_1_cma_p(2) <= u0_m0_wo0_mtree_madd4_1_cma_a(2) * u0_m0_wo0_mtree_madd4_1_cma_r(2);
    u0_m0_wo0_mtree_madd4_1_cma_p(3) <= u0_m0_wo0_mtree_madd4_1_cma_a(3) * u0_m0_wo0_mtree_madd4_1_cma_r(3);
    u0_m0_wo0_mtree_madd4_1_cma_w(0) <= RESIZE(u0_m0_wo0_mtree_madd4_1_cma_p(0),32) + RESIZE(u0_m0_wo0_mtree_madd4_1_cma_p(1),32);
    u0_m0_wo0_mtree_madd4_1_cma_w(1) <= RESIZE(u0_m0_wo0_mtree_madd4_1_cma_p(2),32) + RESIZE(u0_m0_wo0_mtree_madd4_1_cma_p(3),32);
    u0_m0_wo0_mtree_madd4_1_cma_x(0) <= u0_m0_wo0_mtree_madd4_1_cma_w(0) + u0_m0_wo0_mtree_madd4_1_cma_w(1);
    u0_m0_wo0_mtree_madd4_1_cma_y(0) <= u0_m0_wo0_mtree_madd4_1_cma_x(0);
    u0_m0_wo0_mtree_madd4_1_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_madd4_1_cma_a <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_1_cma_c <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_1_cma_d <= (others => (others => '0'));
            u0_m0_wo0_mtree_madd4_1_cma_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_madd4_1_cma_a(0) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr4_q_13_q),14);
            u0_m0_wo0_mtree_madd4_1_cma_a(1) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr3_q_13_q),14);
            u0_m0_wo0_mtree_madd4_1_cma_a(2) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr2_q_13_q),14);
            u0_m0_wo0_mtree_madd4_1_cma_a(3) <= RESIZE(SIGNED(d_u0_m0_wo0_wi0_delayr1_q_13_q),14);
            u0_m0_wo0_mtree_madd4_1_cma_c(0) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_1_cma_c(1) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_1_cma_c(2) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_1_cma_c(3) <= RESIZE(UNSIGNED(d_u0_m0_wo0_bank_delayr52_q_13_q),3);
            u0_m0_wo0_mtree_madd4_1_cma_d(0) <= u0_m0_wo0_mtree_madd4_1_cma_a(0);
            u0_m0_wo0_mtree_madd4_1_cma_d(1) <= u0_m0_wo0_mtree_madd4_1_cma_a(1);
            u0_m0_wo0_mtree_madd4_1_cma_d(2) <= u0_m0_wo0_mtree_madd4_1_cma_a(2);
            u0_m0_wo0_mtree_madd4_1_cma_d(3) <= u0_m0_wo0_mtree_madd4_1_cma_a(3);
            u0_m0_wo0_mtree_madd4_1_cma_s(0) <= u0_m0_wo0_mtree_madd4_1_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_madd4_1_cma_delay : dspba_delay
    GENERIC MAP (width => 32, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_madd4_1_cma_s(0)(31 downto 0)), xout => u0_m0_wo0_mtree_madd4_1_cma_q, clk => clk, aclr => areset);

	--d_u0_m0_wo0_wi0_phasedelay0_q_13(DELAY,408)@11
    d_u0_m0_wo0_wi0_phasedelay0_q_13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 2 )
    PORT MAP ( xin => data_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_wi0_phasedelay0_q_13_q, clk => clk, aclr => areset );

	--u0_m0_wo0_cm0(LOOKUP,213)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "0000110010011111";
        ELSIF rising_edge(clk) THEN            CASE (d_u0_m0_wo0_bank_delayr48_q_12_q) IS
                WHEN "000" =>  u0_m0_wo0_cm0_q <= "0000110010011111";
                WHEN "001" =>  u0_m0_wo0_cm0_q <= "1111100111101100";
                WHEN "010" =>  u0_m0_wo0_cm0_q <= "1111111011110011";
                WHEN "011" =>  u0_m0_wo0_cm0_q <= "0000000011111010";
                WHEN "100" =>  u0_m0_wo0_cm0_q <= "1110101011001101";
                WHEN "101" =>  u0_m0_wo0_cm0_q <= "0000001111111000";
                WHEN "110" =>  u0_m0_wo0_cm0_q <= "0000001000101010";
                WHEN "111" =>  u0_m0_wo0_cm0_q <= "1111111101001000";
                WHEN OTHERS =>
                    u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;


	--u0_m0_wo0_mtree_mult1_0(MULT,339)@13
    u0_m0_wo0_mtree_mult1_0_pr <= SIGNED(u0_m0_wo0_mtree_mult1_0_a) * SIGNED(u0_m0_wo0_mtree_mult1_0_b);
    u0_m0_wo0_mtree_mult1_0_component: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_a <= (others => '0');
            u0_m0_wo0_mtree_mult1_0_b <= (others => '0');
            u0_m0_wo0_mtree_mult1_0_s1 <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_a <= u0_m0_wo0_cm0_q;
            u0_m0_wo0_mtree_mult1_0_b <= d_u0_m0_wo0_wi0_phasedelay0_q_13_q;
            u0_m0_wo0_mtree_mult1_0_s1 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_pr);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

	--u0_m0_wo0_mtree_add0_0(ADD,340)@15
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR((32 downto 30 => u0_m0_wo0_mtree_mult1_0_q(29)) & u0_m0_wo0_mtree_mult1_0_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_madd4_1_cma_q(31)) & u0_m0_wo0_mtree_madd4_1_cma_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(32 downto 0);


	--u0_m0_wo0_mtree_add1_0(ADD,353)@16
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_0_q(32)) & u0_m0_wo0_mtree_add0_0_q);
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add0_1_q(32)) & u0_m0_wo0_mtree_add0_1_q);
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(33 downto 0);


	--u0_m0_wo0_mtree_add2_0(ADD,359)@17
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_0_q(33)) & u0_m0_wo0_mtree_add1_0_q);
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add1_1_q(33)) & u0_m0_wo0_mtree_add1_1_q);
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(34 downto 0);


	--u0_m0_wo0_mtree_add3_0(ADD,362)@18
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add2_0_q(34)) & u0_m0_wo0_mtree_add2_0_q);
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add2_1_q(34)) & u0_m0_wo0_mtree_add2_1_q);
    u0_m0_wo0_mtree_add3_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(35 downto 0);


	--u0_m0_wo0_mtree_add4_0(ADD,364)@19
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR((36 downto 36 => u0_m0_wo0_mtree_add3_0_q(35)) & u0_m0_wo0_mtree_add3_0_q);
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR((36 downto 36 => u0_m0_wo0_mtree_add3_1_q(35)) & u0_m0_wo0_mtree_add3_1_q);
    u0_m0_wo0_mtree_add4_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(36 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--d_u0_m0_wo0_memread_q_19(DELAY,407)@15
    d_u0_m0_wo0_memread_q_19 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_15_q, xout => d_u0_m0_wo0_memread_q_19_q, clk => clk, aclr => areset );

	--u0_m0_wo0_oseq_gated_reg(REG,365)@19
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF rising_edge(clk) THEN
            u0_m0_wo0_oseq_gated_reg_q <= d_u0_m0_wo0_memread_q_19_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,368)@20
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add4_0_q;


end normal;
