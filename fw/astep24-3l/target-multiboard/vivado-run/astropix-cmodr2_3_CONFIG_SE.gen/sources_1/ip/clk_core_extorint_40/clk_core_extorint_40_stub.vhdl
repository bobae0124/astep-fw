-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Feb 25 12:03:39 2026
-- Host        : argon running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/clk_core_extorint_40/clk_core_extorint_40_stub.vhdl
-- Design      : clk_core_extorint_40
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_core_extorint_40 is
  Port ( 
    clk_in2 : in STD_LOGIC;
    clk_in_sel : in STD_LOGIC;
    clk_100 : out STD_LOGIC;
    clk_80 : out STD_LOGIC;
    clk_10 : out STD_LOGIC;
    clk_20 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_core_extorint_40;

architecture stub of clk_core_extorint_40 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in2,clk_in_sel,clk_100,clk_80,clk_10,clk_20,resetn,locked,clk_in1";
begin
end;
