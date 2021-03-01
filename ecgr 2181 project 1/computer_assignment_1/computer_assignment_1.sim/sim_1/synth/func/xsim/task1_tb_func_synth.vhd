-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 17 17:09:48 2018
-- Host        : Tien-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/Tien/Desktop/Project
--               1/computer_assignment_1/computer_assignment_1.sim/sim_1/synth/func/xsim/task1_tb_func_synth.vhd}
-- Design      : task1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity task1 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of task1 : entity is true;
end task1;

architecture STRUCTURE of task1 is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal Cin_IBUF : STD_LOGIC;
  signal Cout_OBUF : STD_LOGIC;
  signal Sum_OBUF : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Sum_OBUF_inst_i_1 : label is "soft_lutpair0";
begin
A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A,
      O => A_IBUF
    );
B_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B,
      O => B_IBUF
    );
Cin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Cin,
      O => Cin_IBUF
    );
Cout_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Cout_OBUF,
      O => Cout
    );
Cout_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A_IBUF,
      I1 => Cin_IBUF,
      I2 => B_IBUF,
      O => Cout_OBUF
    );
Sum_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF,
      O => Sum
    );
Sum_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B_IBUF,
      I1 => A_IBUF,
      I2 => Cin_IBUF,
      O => Sum_OBUF
    );
end STRUCTURE;
