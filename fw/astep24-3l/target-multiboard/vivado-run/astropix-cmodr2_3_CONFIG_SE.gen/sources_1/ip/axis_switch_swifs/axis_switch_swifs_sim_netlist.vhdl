-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Feb 25 12:03:16 2026
-- Host        : argon running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/daq/AstroPix/260225_dev_richard/astep-fw/fw/astep24-3l/target-multiboard/vivado-run/astropix-cmodr2_3_CONFIG_SE.gen/sources_1/ip/axis_switch_swifs/axis_switch_swifs_sim_netlist.vhdl
-- Design      : axis_switch_swifs
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice is
  port (
    \gen_AB_reg_slice.state_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]_1\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice;

architecture STRUCTURE of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice is
  signal \gen_AB_reg_slice.payload_a\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__6_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_reg_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__5_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.state_reg[1]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__6\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair49";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0_i_4\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdest[24]_INST_0_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdest[25]_INST_0_i_4\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdest[26]_INST_0_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdest[27]_INST_0_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdest[28]_INST_0_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdest[29]_INST_0_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdest[30]_INST_0_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdest[31]_INST_0_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tid[24]_INST_0_i_4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tid[25]_INST_0_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tid[26]_INST_0_i_4\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tid[27]_INST_0_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tid[28]_INST_0_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tid[29]_INST_0_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tid[30]_INST_0_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tid[31]_INST_0_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tlast[3]_INST_0_i_4\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0_i_4\ : label is "soft_lutpair50";
begin
  \gen_AB_reg_slice.state_reg[1]_0\ <= \^gen_ab_reg_slice.state_reg[1]_0\;
\gen_AB_reg_slice.payload_a[25]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[25]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg[1]_1\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I2 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      O => \gen_AB_reg_slice.sel_rd_i_1__6_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__6_n_0\,
      Q => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__5_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__5_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \^gen_ab_reg_slice.state_reg[1]_0\,
      R => areset
    );
\m_axis_tdata[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tdata[25]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      O => \gen_AB_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tdata[26]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      O => \gen_AB_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tdata[27]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b_reg[3]_0\
    );
\m_axis_tdata[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      O => \gen_AB_reg_slice.payload_b_reg[4]_0\
    );
\m_axis_tdata[29]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      O => \gen_AB_reg_slice.payload_b_reg[5]_0\
    );
\m_axis_tdata[30]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      O => \gen_AB_reg_slice.payload_b_reg[6]_0\
    );
\m_axis_tdata[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      O => \gen_AB_reg_slice.payload_b_reg[7]_0\
    );
\m_axis_tdest[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      O => \gen_AB_reg_slice.payload_b_reg[17]_0\
    );
\m_axis_tdest[25]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      O => \gen_AB_reg_slice.payload_b_reg[18]_0\
    );
\m_axis_tdest[26]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      O => \gen_AB_reg_slice.payload_b_reg[19]_0\
    );
\m_axis_tdest[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      O => \gen_AB_reg_slice.payload_b_reg[20]_0\
    );
\m_axis_tdest[28]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      O => \gen_AB_reg_slice.payload_b_reg[21]_0\
    );
\m_axis_tdest[29]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      O => \gen_AB_reg_slice.payload_b_reg[22]_0\
    );
\m_axis_tdest[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      O => \gen_AB_reg_slice.payload_b_reg[23]_0\
    );
\m_axis_tdest[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      O => \gen_AB_reg_slice.payload_b_reg[24]_0\
    );
\m_axis_tid[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      O => \gen_AB_reg_slice.payload_b_reg[9]_0\
    );
\m_axis_tid[25]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      O => \gen_AB_reg_slice.payload_b_reg[10]_0\
    );
\m_axis_tid[26]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      O => \gen_AB_reg_slice.payload_b_reg[11]_0\
    );
\m_axis_tid[27]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      O => \gen_AB_reg_slice.payload_b_reg[12]_0\
    );
\m_axis_tid[28]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      O => \gen_AB_reg_slice.payload_b_reg[13]_0\
    );
\m_axis_tid[29]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      O => \gen_AB_reg_slice.payload_b_reg[14]_0\
    );
\m_axis_tid[30]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      O => \gen_AB_reg_slice.payload_b_reg[15]_0\
    );
\m_axis_tid[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      O => \gen_AB_reg_slice.payload_b_reg[16]_0\
    );
\m_axis_tlast[3]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      O => \gen_AB_reg_slice.payload_b_reg[8]_0\
    );
\m_axis_tuser[3]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      O => \gen_AB_reg_slice.payload_b_reg[25]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10 is
  port (
    \gen_AB_reg_slice.state_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]_1\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10 : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10;

architecture STRUCTURE of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10 is
  signal \gen_AB_reg_slice.payload_a\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_reg_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.state_reg[1]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair17";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdest[24]_INST_0_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdest[25]_INST_0_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdest[26]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdest[27]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdest[28]_INST_0_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdest[29]_INST_0_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdest[30]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdest[31]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tid[24]_INST_0_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tid[25]_INST_0_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tid[26]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tid[27]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tid[28]_INST_0_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tid[29]_INST_0_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tid[30]_INST_0_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tid[31]_INST_0_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tlast[3]_INST_0_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0_i_3\ : label is "soft_lutpair18";
begin
  \gen_AB_reg_slice.state_reg[1]_0\ <= \^gen_ab_reg_slice.state_reg[1]_0\;
\gen_AB_reg_slice.payload_a[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg[1]_1\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I2 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      O => \gen_AB_reg_slice.sel_rd_i_1__2_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__2_n_0\,
      Q => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__1_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__1_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \^gen_ab_reg_slice.state_reg[1]_0\,
      R => areset
    );
\m_axis_tdata[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tdata[25]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      O => \gen_AB_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tdata[26]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      O => \gen_AB_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tdata[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b_reg[3]_0\
    );
\m_axis_tdata[28]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      O => \gen_AB_reg_slice.payload_b_reg[4]_0\
    );
\m_axis_tdata[29]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      O => \gen_AB_reg_slice.payload_b_reg[5]_0\
    );
\m_axis_tdata[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      O => \gen_AB_reg_slice.payload_b_reg[6]_0\
    );
\m_axis_tdata[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      O => \gen_AB_reg_slice.payload_b_reg[7]_0\
    );
\m_axis_tdest[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      O => \gen_AB_reg_slice.payload_b_reg[17]_0\
    );
\m_axis_tdest[25]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      O => \gen_AB_reg_slice.payload_b_reg[18]_0\
    );
\m_axis_tdest[26]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      O => \gen_AB_reg_slice.payload_b_reg[19]_0\
    );
\m_axis_tdest[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      O => \gen_AB_reg_slice.payload_b_reg[20]_0\
    );
\m_axis_tdest[28]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      O => \gen_AB_reg_slice.payload_b_reg[21]_0\
    );
\m_axis_tdest[29]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      O => \gen_AB_reg_slice.payload_b_reg[22]_0\
    );
\m_axis_tdest[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      O => \gen_AB_reg_slice.payload_b_reg[23]_0\
    );
\m_axis_tdest[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      O => \gen_AB_reg_slice.payload_b_reg[24]_0\
    );
\m_axis_tid[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      O => \gen_AB_reg_slice.payload_b_reg[9]_0\
    );
\m_axis_tid[25]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      O => \gen_AB_reg_slice.payload_b_reg[10]_0\
    );
\m_axis_tid[26]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      O => \gen_AB_reg_slice.payload_b_reg[11]_0\
    );
\m_axis_tid[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      O => \gen_AB_reg_slice.payload_b_reg[12]_0\
    );
\m_axis_tid[28]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      O => \gen_AB_reg_slice.payload_b_reg[13]_0\
    );
\m_axis_tid[29]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      O => \gen_AB_reg_slice.payload_b_reg[14]_0\
    );
\m_axis_tid[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      O => \gen_AB_reg_slice.payload_b_reg[15]_0\
    );
\m_axis_tid[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      O => \gen_AB_reg_slice.payload_b_reg[16]_0\
    );
\m_axis_tlast[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      O => \gen_AB_reg_slice.payload_b_reg[8]_0\
    );
\m_axis_tuser[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      O => \gen_AB_reg_slice.payload_b_reg[25]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12 is
  port (
    \gen_AB_reg_slice.state_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]_1\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12 : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12;

architecture STRUCTURE of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12 is
  signal \gen_AB_reg_slice.payload_a\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \gen_AB_reg_slice.payload_a_1\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \gen_AB_reg_slice.payload_b_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.state_reg[1]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdest[24]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdest[25]_INST_0_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdest[26]_INST_0_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdest[27]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdest[28]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdest[29]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdest[30]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdest[31]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tid[24]_INST_0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tid[25]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tid[26]_INST_0_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tid[27]_INST_0_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tid[28]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tid[29]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tid[30]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tid[31]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tlast[3]_INST_0_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0_i_2\ : label is "soft_lutpair1";
begin
  \gen_AB_reg_slice.state_reg[1]_0\ <= \^gen_ab_reg_slice.state_reg[1]_0\;
\gen_AB_reg_slice.payload_a[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a_1\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_a\(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_a\(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_a\(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_a\(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_a\(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_a\(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_a\(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_a\(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_a\(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_a\(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_a\(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_a\(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_a\(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_a\(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_a\(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_a\(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_a\(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_a\(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_a\(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_a\(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_a\(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_a\(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_a\(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_a\(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_a\(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a_1\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_a\(9),
      R => '0'
    );
\gen_AB_reg_slice.payload_b[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b_0\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_b\(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_b\(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_b\(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_b\(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_b\(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_b\(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_b\(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_b\(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_b\(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_b\(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_b\(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_b\(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_b\(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_b\(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_b\(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_b\(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_b\(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_b\(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_b\(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_b\(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_b\(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_b\(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_b\(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_b\(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_b\(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b_0\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_b\(9),
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg[1]_1\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I2 => \gen_AB_reg_slice.sel\,
      O => \gen_AB_reg_slice.sel_rd_i_1__0_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__0_n_0\,
      Q => \gen_AB_reg_slice.sel\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \^gen_ab_reg_slice.state_reg[1]_0\,
      R => areset
    );
\m_axis_tdata[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(0),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(0),
      O => \gen_AB_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tdata[25]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(1),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(1),
      O => \gen_AB_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tdata[26]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(2),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(2),
      O => \gen_AB_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tdata[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(3),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(3),
      O => \gen_AB_reg_slice.payload_b_reg[3]_0\
    );
\m_axis_tdata[28]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(4),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(4),
      O => \gen_AB_reg_slice.payload_b_reg[4]_0\
    );
\m_axis_tdata[29]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(5),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(5),
      O => \gen_AB_reg_slice.payload_b_reg[5]_0\
    );
\m_axis_tdata[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(6),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(6),
      O => \gen_AB_reg_slice.payload_b_reg[6]_0\
    );
\m_axis_tdata[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(7),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(7),
      O => \gen_AB_reg_slice.payload_b_reg[7]_0\
    );
\m_axis_tdest[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(17),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(17),
      O => \gen_AB_reg_slice.payload_b_reg[17]_0\
    );
\m_axis_tdest[25]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(18),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(18),
      O => \gen_AB_reg_slice.payload_b_reg[18]_0\
    );
\m_axis_tdest[26]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(19),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(19),
      O => \gen_AB_reg_slice.payload_b_reg[19]_0\
    );
\m_axis_tdest[27]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(20),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(20),
      O => \gen_AB_reg_slice.payload_b_reg[20]_0\
    );
\m_axis_tdest[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(21),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(21),
      O => \gen_AB_reg_slice.payload_b_reg[21]_0\
    );
\m_axis_tdest[29]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(22),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(22),
      O => \gen_AB_reg_slice.payload_b_reg[22]_0\
    );
\m_axis_tdest[30]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(23),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(23),
      O => \gen_AB_reg_slice.payload_b_reg[23]_0\
    );
\m_axis_tdest[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(24),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(24),
      O => \gen_AB_reg_slice.payload_b_reg[24]_0\
    );
\m_axis_tid[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(9),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(9),
      O => \gen_AB_reg_slice.payload_b_reg[9]_0\
    );
\m_axis_tid[25]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(10),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(10),
      O => \gen_AB_reg_slice.payload_b_reg[10]_0\
    );
\m_axis_tid[26]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(11),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(11),
      O => \gen_AB_reg_slice.payload_b_reg[11]_0\
    );
\m_axis_tid[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(12),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(12),
      O => \gen_AB_reg_slice.payload_b_reg[12]_0\
    );
\m_axis_tid[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(13),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(13),
      O => \gen_AB_reg_slice.payload_b_reg[13]_0\
    );
\m_axis_tid[29]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(14),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(14),
      O => \gen_AB_reg_slice.payload_b_reg[14]_0\
    );
\m_axis_tid[30]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(15),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(15),
      O => \gen_AB_reg_slice.payload_b_reg[15]_0\
    );
\m_axis_tid[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(16),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(16),
      O => \gen_AB_reg_slice.payload_b_reg[16]_0\
    );
\m_axis_tlast[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(8),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(8),
      O => \gen_AB_reg_slice.payload_b_reg[8]_0\
    );
\m_axis_tuser[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b\(25),
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a\(25),
      O => \gen_AB_reg_slice.payload_b_reg[25]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8 is
  port (
    \gen_AB_reg_slice.state_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]_1\ : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8 : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8;

architecture STRUCTURE of axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8 is
  signal \gen_AB_reg_slice.payload_a\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[12]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[15]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[16]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[17]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[18]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[19]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[20]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[21]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[22]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[23]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[24]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[25]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__4_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_reg_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__3_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.state_reg[1]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair33";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdest[24]_INST_0_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdest[25]_INST_0_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdest[26]_INST_0_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdest[27]_INST_0_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdest[28]_INST_0_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdest[29]_INST_0_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdest[30]_INST_0_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdest[31]_INST_0_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tid[24]_INST_0_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tid[25]_INST_0_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tid[26]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tid[27]_INST_0_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tid[28]_INST_0_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tid[29]_INST_0_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tid[30]_INST_0_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tid[31]_INST_0_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tlast[3]_INST_0_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tuser[3]_INST_0_i_1\ : label is "soft_lutpair34";
begin
  \gen_AB_reg_slice.state_reg[1]_0\ <= \^gen_ab_reg_slice.state_reg[1]_0\;
\gen_AB_reg_slice.payload_a[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(0),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(10),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(11),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(12),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(13),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(14),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(15),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(16),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(17),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(18),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(19),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(1),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(20),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(21),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(22),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(23),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(24),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(25),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(2),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(3),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(4),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(5),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(6),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(7),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(8),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => D(9),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg[1]_1\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I2 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      O => \gen_AB_reg_slice.sel_rd_i_1__4_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__4_n_0\,
      Q => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__3_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__3_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \^gen_ab_reg_slice.state_reg[1]_0\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      I3 => \gen_AB_reg_slice.state_reg[1]_1\,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[0]\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \^gen_ab_reg_slice.state_reg[1]_0\,
      R => areset
    );
\m_axis_tdata[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tdata[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      O => \gen_AB_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tdata[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      O => \gen_AB_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tdata[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b_reg[3]_0\
    );
\m_axis_tdata[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[4]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[4]\,
      O => \gen_AB_reg_slice.payload_b_reg[4]_0\
    );
\m_axis_tdata[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[5]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[5]\,
      O => \gen_AB_reg_slice.payload_b_reg[5]_0\
    );
\m_axis_tdata[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[6]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[6]\,
      O => \gen_AB_reg_slice.payload_b_reg[6]_0\
    );
\m_axis_tdata[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[7]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[7]\,
      O => \gen_AB_reg_slice.payload_b_reg[7]_0\
    );
\m_axis_tdest[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[17]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[17]\,
      O => \gen_AB_reg_slice.payload_b_reg[17]_0\
    );
\m_axis_tdest[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[18]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[18]\,
      O => \gen_AB_reg_slice.payload_b_reg[18]_0\
    );
\m_axis_tdest[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[19]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[19]\,
      O => \gen_AB_reg_slice.payload_b_reg[19]_0\
    );
\m_axis_tdest[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[20]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[20]\,
      O => \gen_AB_reg_slice.payload_b_reg[20]_0\
    );
\m_axis_tdest[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[21]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[21]\,
      O => \gen_AB_reg_slice.payload_b_reg[21]_0\
    );
\m_axis_tdest[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[22]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[22]\,
      O => \gen_AB_reg_slice.payload_b_reg[22]_0\
    );
\m_axis_tdest[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[23]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[23]\,
      O => \gen_AB_reg_slice.payload_b_reg[23]_0\
    );
\m_axis_tdest[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[24]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[24]\,
      O => \gen_AB_reg_slice.payload_b_reg[24]_0\
    );
\m_axis_tid[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[9]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[9]\,
      O => \gen_AB_reg_slice.payload_b_reg[9]_0\
    );
\m_axis_tid[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[10]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[10]\,
      O => \gen_AB_reg_slice.payload_b_reg[10]_0\
    );
\m_axis_tid[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[11]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[11]\,
      O => \gen_AB_reg_slice.payload_b_reg[11]_0\
    );
\m_axis_tid[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[12]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[12]\,
      O => \gen_AB_reg_slice.payload_b_reg[12]_0\
    );
\m_axis_tid[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[13]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[13]\,
      O => \gen_AB_reg_slice.payload_b_reg[13]_0\
    );
\m_axis_tid[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[14]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[14]\,
      O => \gen_AB_reg_slice.payload_b_reg[14]_0\
    );
\m_axis_tid[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[15]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[15]\,
      O => \gen_AB_reg_slice.payload_b_reg[15]_0\
    );
\m_axis_tid[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[16]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[16]\,
      O => \gen_AB_reg_slice.payload_b_reg[16]_0\
    );
\m_axis_tlast[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[8]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[8]\,
      O => \gen_AB_reg_slice.payload_b_reg[8]_0\
    );
\m_axis_tuser[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[25]\,
      I1 => \gen_AB_reg_slice.sel_rd_reg_n_0\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[25]\,
      O => \gen_AB_reg_slice.payload_b_reg[25]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0\ is
  port (
    \busy_r_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.decode_err_r0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_1\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_2\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_3\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_1\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_AB_reg_slice.state[1]_i_2__2_0\ : in STD_LOGIC;
    \gen_AB_reg_slice.state[1]_i_2__2_1\ : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    s_decode_err : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    arb_busy_r_i_2 : in STD_LOGIC;
    \arb_busy_r_i_2__2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r[3]_i_3__1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0\ : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0\;

architecture STRUCTURE of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0\ is
  signal \^busy_r_reg[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[1]_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[2]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__5_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__6_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_3__2_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_tdest_routing.arb_req_ns\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.decode_err_r_i_2__2_n_0\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r_i_3_n_0\ : STD_LOGIC;
  signal \gen_tdest_routing.m_axis_tvalid_req\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__5\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair64";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tvalid[2]_INST_0_i_3\ : label is "soft_lutpair63";
begin
  \busy_r_reg[3]\ <= \^busy_r_reg[3]\;
  \gen_AB_reg_slice.payload_b_reg[1]_0\ <= \^gen_ab_reg_slice.payload_b_reg[1]_0\;
  \gen_AB_reg_slice.payload_b_reg[2]_0\ <= \^gen_ab_reg_slice.payload_b_reg[2]_0\;
\arb_busy_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A820"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I4 => arb_busy_r_reg_0,
      I5 => arb_gnt_i(1),
      O => \gen_AB_reg_slice.state_reg[0]_2\
    );
\arb_busy_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A820"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I4 => arb_busy_r_reg,
      I5 => arb_gnt_i(2),
      O => \gen_AB_reg_slice.state_reg[0]_0\
    );
arb_busy_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEEFFEFFFFFFF"
    )
        port map (
      I0 => \arb_busy_r_i_2__2\,
      I1 => arb_gnt_i(0),
      I2 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.sel\,
      I5 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_tdest_routing.busy_r_reg[0]\
    );
\arb_gnt_r[3]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008C80"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I4 => arb_busy_r_i_2,
      I5 => arb_gnt_i(3),
      O => \gen_AB_reg_slice.payload_b_reg[3]_0\
    );
\arb_gnt_r[3]_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[2]_0\,
      I1 => arb_busy_r_reg,
      I2 => arb_gnt_i(2),
      I3 => \arb_gnt_r[3]_i_3__1\,
      O => \gen_tdest_routing.busy_r_reg[2]\
    );
\gen_AB_reg_slice.payload_a[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => D(5),
      I1 => D(6),
      I2 => D(4),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\,
      I4 => D(0),
      I5 => D(1),
      O => \gen_tdest_routing.arb_req_ns\(0)
    );
\gen_AB_reg_slice.payload_a[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => D(5),
      I1 => D(6),
      I2 => D(4),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\,
      I4 => D(0),
      I5 => D(1),
      O => \gen_tdest_routing.arb_req_ns\(1)
    );
\gen_AB_reg_slice.payload_a[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => D(5),
      I1 => D(6),
      I2 => D(4),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(2)
    );
\gen_AB_reg_slice.payload_a[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \gen_AB_reg_slice.payload_a\
    );
\gen_AB_reg_slice.payload_a[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => D(5),
      I1 => D(6),
      I2 => D(4),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(3)
    );
\gen_AB_reg_slice.payload_a[3]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => D(2),
      I1 => D(3),
      I2 => s_axis_tvalid(0),
      I3 => D(7),
      O => \gen_AB_reg_slice.payload_a[3]_i_3__2_n_0\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => \gen_tdest_routing.arb_req_ns\(0),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => \gen_tdest_routing.arb_req_ns\(1),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => \gen_tdest_routing.arb_req_ns\(2),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_a\,
      D => \gen_tdest_routing.arb_req_ns\(3),
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \gen_AB_reg_slice.sel_wr\,
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \gen_AB_reg_slice.payload_b\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => \gen_tdest_routing.arb_req_ns\(0),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => \gen_tdest_routing.arb_req_ns\(1),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => \gen_tdest_routing.arb_req_ns\(2),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_AB_reg_slice.payload_b\,
      D => \gen_tdest_routing.arb_req_ns\(3),
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^busy_r_reg[3]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      O => \gen_AB_reg_slice.sel_rd_i_1__5_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__5_n_0\,
      Q => \gen_AB_reg_slice.sel\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__6_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__6_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \^busy_r_reg[3]\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \^busy_r_reg[3]\,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202022222222222"
    )
        port map (
      I0 => \gen_AB_reg_slice.state[1]_i_3__2_n_0\,
      I1 => \gen_AB_reg_slice.state[1]_i_4__1_n_0\,
      I2 => \^gen_ab_reg_slice.payload_b_reg[1]_0\,
      I3 => \gen_tdest_router.busy_r\(0),
      I4 => arb_gnt_i(1),
      I5 => m_axis_tready(1),
      O => \^busy_r_reg[3]\
    );
\gen_AB_reg_slice.state[1]_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001FFF"
    )
        port map (
      I0 => arb_gnt_i(2),
      I1 => \gen_tdest_router.busy_r_0\(0),
      I2 => m_axis_tready(2),
      I3 => \^gen_ab_reg_slice.payload_b_reg[2]_0\,
      I4 => s_decode_err(0),
      O => \gen_AB_reg_slice.state[1]_i_3__2_n_0\
    );
\gen_AB_reg_slice.state[1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080808080"
    )
        port map (
      I0 => m_axis_tready(3),
      I1 => \gen_AB_reg_slice.state[1]_i_2__2_0\,
      I2 => \gen_tdest_routing.decode_err_r_i_2__2_n_0\,
      I3 => m_axis_tready(0),
      I4 => \gen_AB_reg_slice.state[1]_i_2__2_1\,
      I5 => \gen_tdest_routing.decode_err_r_i_3_n_0\,
      O => \gen_AB_reg_slice.state[1]_i_4__1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_tdest_routing.m_axis_tvalid_req\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      R => areset
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A820000000000000"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I4 => arb_sel_i(4),
      I5 => arb_sel_i(5),
      O => \gen_AB_reg_slice.state_reg[0]_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A820000000000000"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I4 => arb_sel_i(2),
      I5 => arb_sel_i(3),
      O => \gen_AB_reg_slice.state_reg[0]_3\
    );
\gen_tdest_routing.decode_err_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[2]_0\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => s_decode_err(0),
      I3 => \gen_tdest_routing.decode_err_r_i_2__2_n_0\,
      I4 => \gen_tdest_routing.decode_err_r_i_3_n_0\,
      I5 => \^gen_ab_reg_slice.payload_b_reg[1]_0\,
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      O => \gen_tdest_routing.decode_err_r_i_2__2_n_0\
    );
\gen_tdest_routing.decode_err_r_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E020"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      O => \gen_tdest_routing.decode_err_r_i_3_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C80000000000000"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I4 => arb_sel_i(1),
      I5 => arb_sel_i(0),
      O => \gen_AB_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tvalid[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC00"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \^gen_ab_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tvalid[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC00"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \^gen_ab_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tvalid[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8C80000000000000"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I4 => arb_sel_i(6),
      I5 => arb_sel_i(7),
      O => \gen_AB_reg_slice.payload_b_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11\ is
  port (
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.decode_err_r0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_1\ : out STD_LOGIC;
    m_axis_tready_0_sp_1 : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_1\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_busy_r_i_2 : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_busy_r_i_2__2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11\ : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11\;

architecture STRUCTURE of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11\ is
  signal \gen_AB_reg_slice.payload_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_tdest_routing.arb_req_ns\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.decode_err_r_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_tdest_routing.m_axis_tvalid_req\ : STD_LOGIC;
  signal m_axis_tready_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair32";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \gen_tdest_routing.decode_err_r_i_2__0\ : label is "soft_lutpair31";
begin
  m_axis_tready_0_sp_1 <= m_axis_tready_0_sn_1;
arb_busy_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF37F7"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I4 => \arb_busy_r_i_2__2\,
      I5 => arb_gnt_i(0),
      O => \gen_AB_reg_slice.payload_a_reg[0]_0\
    );
\arb_gnt_r[3]_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A808"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_busy_r_i_2,
      I5 => arb_gnt_i(1),
      O => \gen_AB_reg_slice.state_reg[0]_0\
    );
\gen_AB_reg_slice.payload_a[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(0),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a[0]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => D(2),
      I1 => D(3),
      I2 => s_axis_tvalid(0),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__0_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(0)
    );
\gen_AB_reg_slice.payload_a[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => D(2),
      I1 => D(3),
      I2 => s_axis_tvalid(0),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__0_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(3)
    );
\gen_AB_reg_slice.payload_a[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => D(5),
      I1 => D(4),
      I2 => D(6),
      I3 => D(7),
      O => \gen_AB_reg_slice.payload_a[3]_i_3__0_n_0\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(0),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b[0]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => m_axis_tready_0_sn_1,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      O => \gen_AB_reg_slice.sel_rd_i_1__1_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__1_n_0\,
      Q => \gen_AB_reg_slice.sel\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__2_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__2_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_0_sn_1,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_0_sn_1,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF57"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => \gen_AB_reg_slice.state[1]_i_3__0_n_0\,
      I4 => \gen_AB_reg_slice.state[1]_i_4__0_n_0\,
      O => m_axis_tready_0_sn_1
    );
\gen_AB_reg_slice.state[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.state[1]_i_3__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBAAAAA"
    )
        port map (
      I0 => s_decode_err(0),
      I1 => \gen_tdest_routing.decode_err_r_i_2__0_n_0\,
      I2 => arb_gnt_i(1),
      I3 => \gen_tdest_router.busy_r_0\(0),
      I4 => m_axis_tready(1),
      O => \gen_AB_reg_slice.state[1]_i_4__0_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_tdest_routing.m_axis_tvalid_req\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001D0000000000"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => s_decode_err(0),
      I5 => \gen_tdest_routing.decode_err_r_i_2__0_n_0\,
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \gen_tdest_routing.decode_err_r_i_2__0_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C8080000"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I4 => arb_sel_i(0),
      I5 => arb_sel_i(1),
      O => \gen_AB_reg_slice.payload_a_reg[0]_1\
    );
\m_axis_tvalid[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_sel_i(2),
      I5 => arb_sel_i(3),
      O => \gen_AB_reg_slice.state_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13\ is
  port (
    \gen_tdest_routing.busy_r_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[3]_0\ : out STD_LOGIC;
    \gen_tdest_routing.decode_err_r0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[3]_1\ : out STD_LOGIC;
    m_axis_tready_2_sp_1 : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[2]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[1]\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg_1 : in STD_LOGIC;
    arb_busy_r_reg_2 : in STD_LOGIC;
    s_decode_err : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_AB_reg_slice.state[1]_i_2_0\ : in STD_LOGIC;
    \gen_AB_reg_slice.state[1]_i_2_1\ : in STD_LOGIC;
    arb_busy_r_reg_3 : in STD_LOGIC;
    arb_busy_r_reg_4 : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r[3]_i_3__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13\ : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13\;

architecture STRUCTURE of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13\ is
  signal \gen_AB_reg_slice.payload_a[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[1]_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[2]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_tdest_routing.arb_req_ns\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \gen_tdest_routing.decode_err_r_i_2_n_0\ : STD_LOGIC;
  signal \gen_tdest_routing.m_axis_tvalid_req\ : STD_LOGIC;
  signal m_axis_tready_2_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.payload_a[2]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.payload_a[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair15";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tvalid[1]_INST_0_i_4\ : label is "soft_lutpair14";
begin
  \gen_AB_reg_slice.payload_b_reg[1]_0\ <= \^gen_ab_reg_slice.payload_b_reg[1]_0\;
  \gen_AB_reg_slice.payload_b_reg[2]_0\ <= \^gen_ab_reg_slice.payload_b_reg[2]_0\;
  m_axis_tready_2_sp_1 <= m_axis_tready_2_sn_1;
arb_busy_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005554"
    )
        port map (
      I0 => arb_busy_r_reg,
      I1 => \gen_tdest_routing.decode_err_r_i_2_n_0\,
      I2 => arb_busy_r_reg_0,
      I3 => arb_gnt_i(2),
      I4 => arb_busy_r_reg_1,
      I5 => arb_busy_r_reg_2,
      O => \gen_tdest_routing.busy_r_reg[3]\
    );
\arb_busy_r_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C808"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I4 => arb_busy_r_reg_4,
      I5 => arb_gnt_i(1),
      O => \gen_AB_reg_slice.payload_a_reg[2]_0\
    );
arb_busy_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A808"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I4 => arb_busy_r_reg_3,
      I5 => arb_gnt_i(0),
      O => \gen_AB_reg_slice.state_reg[0]_0\
    );
\arb_gnt_r[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF37F7"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_busy_r_reg_0,
      I5 => arb_gnt_i(2),
      O => \gen_AB_reg_slice.payload_a_reg[3]_0\
    );
\arb_gnt_r[3]_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[1]_0\,
      I1 => arb_busy_r_reg_3,
      I2 => arb_gnt_i(0),
      I3 => \arb_gnt_r[3]_i_3__0\,
      O => \gen_tdest_routing.busy_r_reg[1]\
    );
\gen_AB_reg_slice.payload_a[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(1),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      O => \gen_AB_reg_slice.payload_a[1]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a[3]_i_3_n_0\,
      I1 => s_axis_tvalid(0),
      I2 => s_axis_tdest(0),
      I3 => s_axis_tdest(1),
      O => \gen_tdest_routing.arb_req_ns\(1)
    );
\gen_AB_reg_slice.payload_a[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(2),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      O => \gen_AB_reg_slice.payload_a[2]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tvalid(0),
      I2 => s_axis_tdest(1),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3_n_0\,
      O => \gen_tdest_routing.arb_req_ns\(2)
    );
\gen_AB_reg_slice.payload_a[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_tdest(0),
      I1 => s_axis_tvalid(0),
      I2 => s_axis_tdest(1),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3_n_0\,
      O => \gen_tdest_routing.arb_req_ns\(3)
    );
\gen_AB_reg_slice.payload_a[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdest(6),
      I1 => s_axis_tdest(5),
      I2 => s_axis_tdest(7),
      I3 => s_axis_tdest(3),
      I4 => s_axis_tdest(2),
      I5 => s_axis_tdest(4),
      O => \gen_AB_reg_slice.payload_a[3]_i_3_n_0\
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[2]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(1),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      O => \gen_AB_reg_slice.payload_b[1]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(2),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      O => \gen_AB_reg_slice.payload_b[2]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[2]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => m_axis_tready_2_sn_1,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      O => \gen_AB_reg_slice.sel_rd_i_1_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1_n_0\,
      Q => \gen_AB_reg_slice.sel\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__0_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__0_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_2_sn_1,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_2_sn_1,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF57"
    )
        port map (
      I0 => m_axis_tready(1),
      I1 => \gen_tdest_router.busy_r\(0),
      I2 => arb_gnt_i(1),
      I3 => \^gen_ab_reg_slice.payload_b_reg[2]_0\,
      I4 => s_decode_err(0),
      I5 => \gen_AB_reg_slice.state[1]_i_3_n_0\,
      O => m_axis_tready_2_sn_1
    );
\gen_AB_reg_slice.state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040FF4040"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[1]_0\,
      I1 => \gen_AB_reg_slice.state[1]_i_2_0\,
      I2 => m_axis_tready(0),
      I3 => \gen_tdest_routing.decode_err_r_i_2_n_0\,
      I4 => m_axis_tready(2),
      I5 => \gen_AB_reg_slice.state[1]_i_2_1\,
      O => \gen_AB_reg_slice.state[1]_i_3_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_tdest_routing.m_axis_tvalid_req\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => s_decode_err(0),
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \^gen_ab_reg_slice.payload_b_reg[2]_0\,
      I3 => \gen_tdest_routing.decode_err_r_i_2_n_0\,
      I4 => \^gen_ab_reg_slice.payload_b_reg[1]_0\,
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_tdest_routing.decode_err_r_i_2_n_0\
    );
\m_axis_tvalid[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[1]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \^gen_ab_reg_slice.payload_b_reg[1]_0\
    );
\m_axis_tvalid[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[2]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[2]\,
      O => \^gen_ab_reg_slice.payload_b_reg[2]_0\
    );
\m_axis_tvalid[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000C808"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_sel_i(0),
      I5 => arb_sel_i(1),
      O => \gen_AB_reg_slice.payload_a_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9\ is
  port (
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.decode_err_r0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_1\ : out STD_LOGIC;
    m_axis_tready_0_sp_1 : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_1\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_busy_r_i_2 : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r[3]_i_9__2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9\ : entity is "axis_register_slice_v1_1_29_axisc_register_slice";
end \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9\;

architecture STRUCTURE of \axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9\ is
  signal \gen_AB_reg_slice.payload_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_a_reg[0]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_a_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[0]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.payload_b_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__3_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__4_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_tdest_routing.arb_req_ns\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.decode_err_r_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_tdest_routing.m_axis_tvalid_req\ : STD_LOGIC;
  signal m_axis_tready_0_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.sel_rd_i_1__3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_1\ : label is "soft_lutpair48";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_INST_0_i_5\ : label is "soft_lutpair47";
begin
  \gen_AB_reg_slice.payload_a_reg[0]_0\ <= \^gen_ab_reg_slice.payload_a_reg[0]_0\;
  \gen_AB_reg_slice.payload_b_reg[0]_0\ <= \^gen_ab_reg_slice.payload_b_reg[0]_0\;
  m_axis_tready_0_sp_1 <= m_axis_tready_0_sn_1;
\arb_busy_r_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I1 => arb_busy_r_reg,
      I2 => arb_busy_r_reg_0,
      O => \gen_AB_reg_slice.payload_a_reg[0]_1\
    );
\arb_busy_r_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF37F7"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_9__2\,
      I5 => arb_gnt_i(0),
      O => \^gen_ab_reg_slice.payload_a_reg[0]_0\
    );
\arb_gnt_r[3]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A808"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_busy_r_i_2,
      I5 => arb_gnt_i(1),
      O => \gen_AB_reg_slice.state_reg[0]_0\
    );
\gen_AB_reg_slice.payload_a[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(0),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_a[0]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => D(2),
      I1 => D(3),
      I2 => s_axis_tvalid(0),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__1_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(0)
    );
\gen_AB_reg_slice.payload_a[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEE2022"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_a[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => D(2),
      I1 => D(3),
      I2 => s_axis_tvalid(0),
      I3 => \gen_AB_reg_slice.payload_a[3]_i_3__1_n_0\,
      I4 => D(1),
      I5 => D(0),
      O => \gen_tdest_routing.arb_req_ns\(3)
    );
\gen_AB_reg_slice.payload_a[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => D(5),
      I1 => D(4),
      I2 => D(6),
      I3 => D(7),
      O => \gen_AB_reg_slice.payload_a[3]_i_3__1_n_0\
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_a[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(0),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      O => \gen_AB_reg_slice.payload_b[0]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBB8088"
    )
        port map (
      I0 => \gen_tdest_routing.arb_req_ns\(3),
      I1 => \gen_AB_reg_slice.sel_wr\,
      I2 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      O => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[0]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.payload_b[3]_i_1_n_0\,
      Q => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => m_axis_tready_0_sn_1,
      I1 => \gen_tdest_routing.m_axis_tvalid_req\,
      I2 => \gen_AB_reg_slice.sel\,
      O => \gen_AB_reg_slice.sel_rd_i_1__3_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__3_n_0\,
      Q => \gen_AB_reg_slice.sel\,
      R => areset
    );
\gen_AB_reg_slice.sel_wr_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I2 => \gen_AB_reg_slice.sel_wr\,
      O => \gen_AB_reg_slice.sel_wr_i_1__4_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__4_n_0\,
      Q => \gen_AB_reg_slice.sel_wr\,
      R => areset
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8D8"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_0_sn_1,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2FFF"
    )
        port map (
      I0 => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      I1 => s_axis_tvalid(0),
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => m_axis_tready_0_sn_1,
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF57"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_router.busy_r\(0),
      I3 => \^gen_ab_reg_slice.payload_b_reg[0]_0\,
      I4 => \gen_AB_reg_slice.state[1]_i_3__1_n_0\,
      O => m_axis_tready_0_sn_1
    );
\gen_AB_reg_slice.state[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBAAAAA"
    )
        port map (
      I0 => s_decode_err(0),
      I1 => \gen_tdest_routing.decode_err_r_i_2__1_n_0\,
      I2 => arb_gnt_i(1),
      I3 => \gen_tdest_router.busy_r_0\(0),
      I4 => m_axis_tready(1),
      O => \gen_AB_reg_slice.state[1]_i_3__1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \gen_tdest_routing.m_axis_tvalid_req\,
      R => areset
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_1_n_0\,
      Q => \gen_AB_reg_slice.state_reg_n_0_[1]\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001D0000000000"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      I4 => s_decode_err(0),
      I5 => \gen_tdest_routing.decode_err_r_i_2__1_n_0\,
      O => \gen_tdest_routing.decode_err_r0\
    );
\gen_tdest_routing.decode_err_r_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47FF"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I3 => \gen_tdest_routing.m_axis_tvalid_req\,
      O => \gen_tdest_routing.decode_err_r_i_2__1_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F7F"
    )
        port map (
      I0 => \gen_AB_reg_slice.payload_b_reg_n_0_[0]\,
      I1 => \gen_AB_reg_slice.sel\,
      I2 => \gen_tdest_routing.m_axis_tvalid_req\,
      I3 => \gen_AB_reg_slice.payload_a_reg_n_0_[0]\,
      O => \^gen_ab_reg_slice.payload_b_reg[0]_0\
    );
\m_axis_tvalid[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8080000"
    )
        port map (
      I0 => \gen_tdest_routing.m_axis_tvalid_req\,
      I1 => \gen_AB_reg_slice.payload_a_reg_n_0_[3]\,
      I2 => \gen_AB_reg_slice.sel\,
      I3 => \gen_AB_reg_slice.payload_b_reg_n_0_[3]\,
      I4 => arb_sel_i(1),
      I5 => arb_sel_i(0),
      O => \gen_AB_reg_slice.state_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_arb_rr is
  port (
    arb_busy_r : out STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_reg : out STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_sel_r0_9 : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid_0_sp_1 : in STD_LOGIC;
    \m_axis_tvalid[0]_0\ : in STD_LOGIC;
    \m_axis_tvalid[0]_1\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_gnt_r[3]_i_3__2_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_3__2_1\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_3__2_2\ : in STD_LOGIC;
    m_axis_tdata_0_sp_1 : in STD_LOGIC;
    \m_axis_tdata[0]_0\ : in STD_LOGIC;
    \m_axis_tdata[0]_1\ : in STD_LOGIC;
    \m_axis_tdata[0]_2\ : in STD_LOGIC;
    m_axis_tdata_1_sp_1 : in STD_LOGIC;
    \m_axis_tdata[1]_0\ : in STD_LOGIC;
    \m_axis_tdata[1]_1\ : in STD_LOGIC;
    \m_axis_tdata[1]_2\ : in STD_LOGIC;
    m_axis_tdata_2_sp_1 : in STD_LOGIC;
    \m_axis_tdata[2]_0\ : in STD_LOGIC;
    \m_axis_tdata[2]_1\ : in STD_LOGIC;
    \m_axis_tdata[2]_2\ : in STD_LOGIC;
    m_axis_tdata_3_sp_1 : in STD_LOGIC;
    \m_axis_tdata[3]_0\ : in STD_LOGIC;
    \m_axis_tdata[3]_1\ : in STD_LOGIC;
    \m_axis_tdata[3]_2\ : in STD_LOGIC;
    m_axis_tdata_4_sp_1 : in STD_LOGIC;
    \m_axis_tdata[4]_0\ : in STD_LOGIC;
    \m_axis_tdata[4]_1\ : in STD_LOGIC;
    \m_axis_tdata[4]_2\ : in STD_LOGIC;
    m_axis_tdata_5_sp_1 : in STD_LOGIC;
    \m_axis_tdata[5]_0\ : in STD_LOGIC;
    \m_axis_tdata[5]_1\ : in STD_LOGIC;
    \m_axis_tdata[5]_2\ : in STD_LOGIC;
    m_axis_tdata_6_sp_1 : in STD_LOGIC;
    \m_axis_tdata[6]_0\ : in STD_LOGIC;
    \m_axis_tdata[6]_1\ : in STD_LOGIC;
    \m_axis_tdata[6]_2\ : in STD_LOGIC;
    m_axis_tdata_7_sp_1 : in STD_LOGIC;
    \m_axis_tdata[7]_0\ : in STD_LOGIC;
    \m_axis_tdata[7]_1\ : in STD_LOGIC;
    \m_axis_tdata[7]_2\ : in STD_LOGIC;
    m_axis_tlast_0_sp_1 : in STD_LOGIC;
    \m_axis_tlast[0]_0\ : in STD_LOGIC;
    \m_axis_tlast[0]_1\ : in STD_LOGIC;
    \m_axis_tlast[0]_2\ : in STD_LOGIC;
    m_axis_tid_0_sp_1 : in STD_LOGIC;
    \m_axis_tid[0]_0\ : in STD_LOGIC;
    \m_axis_tid[0]_1\ : in STD_LOGIC;
    \m_axis_tid[0]_2\ : in STD_LOGIC;
    m_axis_tid_1_sp_1 : in STD_LOGIC;
    \m_axis_tid[1]_0\ : in STD_LOGIC;
    \m_axis_tid[1]_1\ : in STD_LOGIC;
    \m_axis_tid[1]_2\ : in STD_LOGIC;
    m_axis_tid_2_sp_1 : in STD_LOGIC;
    \m_axis_tid[2]_0\ : in STD_LOGIC;
    \m_axis_tid[2]_1\ : in STD_LOGIC;
    \m_axis_tid[2]_2\ : in STD_LOGIC;
    m_axis_tid_3_sp_1 : in STD_LOGIC;
    \m_axis_tid[3]_0\ : in STD_LOGIC;
    \m_axis_tid[3]_1\ : in STD_LOGIC;
    \m_axis_tid[3]_2\ : in STD_LOGIC;
    m_axis_tid_4_sp_1 : in STD_LOGIC;
    \m_axis_tid[4]_0\ : in STD_LOGIC;
    \m_axis_tid[4]_1\ : in STD_LOGIC;
    \m_axis_tid[4]_2\ : in STD_LOGIC;
    m_axis_tid_5_sp_1 : in STD_LOGIC;
    \m_axis_tid[5]_0\ : in STD_LOGIC;
    \m_axis_tid[5]_1\ : in STD_LOGIC;
    \m_axis_tid[5]_2\ : in STD_LOGIC;
    m_axis_tid_6_sp_1 : in STD_LOGIC;
    \m_axis_tid[6]_0\ : in STD_LOGIC;
    \m_axis_tid[6]_1\ : in STD_LOGIC;
    \m_axis_tid[6]_2\ : in STD_LOGIC;
    m_axis_tid_7_sp_1 : in STD_LOGIC;
    \m_axis_tid[7]_0\ : in STD_LOGIC;
    \m_axis_tid[7]_1\ : in STD_LOGIC;
    \m_axis_tid[7]_2\ : in STD_LOGIC;
    m_axis_tdest_0_sp_1 : in STD_LOGIC;
    \m_axis_tdest[0]_0\ : in STD_LOGIC;
    \m_axis_tdest[0]_1\ : in STD_LOGIC;
    \m_axis_tdest[0]_2\ : in STD_LOGIC;
    m_axis_tdest_1_sp_1 : in STD_LOGIC;
    \m_axis_tdest[1]_0\ : in STD_LOGIC;
    \m_axis_tdest[1]_1\ : in STD_LOGIC;
    \m_axis_tdest[1]_2\ : in STD_LOGIC;
    m_axis_tdest_2_sp_1 : in STD_LOGIC;
    \m_axis_tdest[2]_0\ : in STD_LOGIC;
    \m_axis_tdest[2]_1\ : in STD_LOGIC;
    \m_axis_tdest[2]_2\ : in STD_LOGIC;
    m_axis_tdest_3_sp_1 : in STD_LOGIC;
    \m_axis_tdest[3]_0\ : in STD_LOGIC;
    \m_axis_tdest[3]_1\ : in STD_LOGIC;
    \m_axis_tdest[3]_2\ : in STD_LOGIC;
    m_axis_tdest_4_sp_1 : in STD_LOGIC;
    \m_axis_tdest[4]_0\ : in STD_LOGIC;
    \m_axis_tdest[4]_1\ : in STD_LOGIC;
    \m_axis_tdest[4]_2\ : in STD_LOGIC;
    m_axis_tdest_5_sp_1 : in STD_LOGIC;
    \m_axis_tdest[5]_0\ : in STD_LOGIC;
    \m_axis_tdest[5]_1\ : in STD_LOGIC;
    \m_axis_tdest[5]_2\ : in STD_LOGIC;
    m_axis_tdest_6_sp_1 : in STD_LOGIC;
    \m_axis_tdest[6]_0\ : in STD_LOGIC;
    \m_axis_tdest[6]_1\ : in STD_LOGIC;
    \m_axis_tdest[6]_2\ : in STD_LOGIC;
    m_axis_tdest_7_sp_1 : in STD_LOGIC;
    \m_axis_tdest[7]_0\ : in STD_LOGIC;
    \m_axis_tdest[7]_1\ : in STD_LOGIC;
    \m_axis_tdest[7]_2\ : in STD_LOGIC;
    m_axis_tuser_0_sp_1 : in STD_LOGIC;
    \m_axis_tuser[0]_0\ : in STD_LOGIC;
    \m_axis_tuser[0]_1\ : in STD_LOGIC;
    \m_axis_tuser[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_arb_rr : entity is "axis_switch_v1_1_29_arb_rr";
end axis_switch_swifsaxis_switch_v1_1_29_arb_rr;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_arb_rr is
  signal \^arb_busy_r\ : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_6__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_7__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_8_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_9__2_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal barrel_cntr : STD_LOGIC;
  signal barrel_cntr_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal m_axis_tdata_0_sn_1 : STD_LOGIC;
  signal m_axis_tdata_1_sn_1 : STD_LOGIC;
  signal m_axis_tdata_2_sn_1 : STD_LOGIC;
  signal m_axis_tdata_3_sn_1 : STD_LOGIC;
  signal m_axis_tdata_4_sn_1 : STD_LOGIC;
  signal m_axis_tdata_5_sn_1 : STD_LOGIC;
  signal m_axis_tdata_6_sn_1 : STD_LOGIC;
  signal m_axis_tdata_7_sn_1 : STD_LOGIC;
  signal m_axis_tdest_0_sn_1 : STD_LOGIC;
  signal m_axis_tdest_1_sn_1 : STD_LOGIC;
  signal m_axis_tdest_2_sn_1 : STD_LOGIC;
  signal m_axis_tdest_3_sn_1 : STD_LOGIC;
  signal m_axis_tdest_4_sn_1 : STD_LOGIC;
  signal m_axis_tdest_5_sn_1 : STD_LOGIC;
  signal m_axis_tdest_6_sn_1 : STD_LOGIC;
  signal m_axis_tdest_7_sn_1 : STD_LOGIC;
  signal m_axis_tid_0_sn_1 : STD_LOGIC;
  signal m_axis_tid_1_sn_1 : STD_LOGIC;
  signal m_axis_tid_2_sn_1 : STD_LOGIC;
  signal m_axis_tid_3_sn_1 : STD_LOGIC;
  signal m_axis_tid_4_sn_1 : STD_LOGIC;
  signal m_axis_tid_5_sn_1 : STD_LOGIC;
  signal m_axis_tid_6_sn_1 : STD_LOGIC;
  signal m_axis_tid_7_sn_1 : STD_LOGIC;
  signal m_axis_tlast_0_sn_1 : STD_LOGIC;
  signal m_axis_tuser_0_sn_1 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_axis_tvalid[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_0_sn_1 : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1__2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1__2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_6__2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_8\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \barrel_cntr[1]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__2\ : label is "soft_lutpair69";
begin
  arb_busy_r <= \^arb_busy_r\;
  \arb_gnt_r_reg[3]_0\(3 downto 0) <= \^arb_gnt_r_reg[3]_0\(3 downto 0);
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
  m_axis_tdata_0_sn_1 <= m_axis_tdata_0_sp_1;
  m_axis_tdata_1_sn_1 <= m_axis_tdata_1_sp_1;
  m_axis_tdata_2_sn_1 <= m_axis_tdata_2_sp_1;
  m_axis_tdata_3_sn_1 <= m_axis_tdata_3_sp_1;
  m_axis_tdata_4_sn_1 <= m_axis_tdata_4_sp_1;
  m_axis_tdata_5_sn_1 <= m_axis_tdata_5_sp_1;
  m_axis_tdata_6_sn_1 <= m_axis_tdata_6_sp_1;
  m_axis_tdata_7_sn_1 <= m_axis_tdata_7_sp_1;
  m_axis_tdest_0_sn_1 <= m_axis_tdest_0_sp_1;
  m_axis_tdest_1_sn_1 <= m_axis_tdest_1_sp_1;
  m_axis_tdest_2_sn_1 <= m_axis_tdest_2_sp_1;
  m_axis_tdest_3_sn_1 <= m_axis_tdest_3_sp_1;
  m_axis_tdest_4_sn_1 <= m_axis_tdest_4_sp_1;
  m_axis_tdest_5_sn_1 <= m_axis_tdest_5_sp_1;
  m_axis_tdest_6_sn_1 <= m_axis_tdest_6_sp_1;
  m_axis_tdest_7_sn_1 <= m_axis_tdest_7_sp_1;
  m_axis_tid_0_sn_1 <= m_axis_tid_0_sp_1;
  m_axis_tid_1_sn_1 <= m_axis_tid_1_sp_1;
  m_axis_tid_2_sn_1 <= m_axis_tid_2_sp_1;
  m_axis_tid_3_sn_1 <= m_axis_tid_3_sp_1;
  m_axis_tid_4_sn_1 <= m_axis_tid_4_sp_1;
  m_axis_tid_5_sn_1 <= m_axis_tid_5_sp_1;
  m_axis_tid_6_sn_1 <= m_axis_tid_6_sp_1;
  m_axis_tid_7_sn_1 <= m_axis_tid_7_sp_1;
  m_axis_tlast_0_sn_1 <= m_axis_tlast_0_sp_1;
  m_axis_tuser_0_sn_1 <= m_axis_tuser_0_sp_1;
  m_axis_tvalid(0) <= \^m_axis_tvalid\(0);
  m_axis_tvalid_0_sn_1 <= m_axis_tvalid_0_sp_1;
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns,
      Q => \^arb_busy_r\,
      R => SR(0)
    );
\arb_gnt_r[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => sel_i(1),
      I1 => SR(0),
      I2 => arb_sel_r0_9,
      I3 => sel_i(0),
      O => \arb_gnt_r[0]_i_1__2_n_0\
    );
\arb_gnt_r[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sel_i(1),
      I1 => sel_i(0),
      I2 => SR(0),
      I3 => arb_sel_r0_9,
      O => \arb_gnt_r[1]_i_1__2_n_0\
    );
\arb_gnt_r[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => sel_i(1),
      I1 => SR(0),
      I2 => arb_sel_r0_9,
      I3 => sel_i(0),
      O => \arb_gnt_r[2]_i_1__1_n_0\
    );
\arb_gnt_r[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"035DCF7FFFFFFFFF"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3__2_2\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      I2 => \arb_gnt_r[3]_i_3__2_1\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r[3]_i_3__2_0\,
      I5 => port_priority_ns(4),
      O => \arb_gnt_r[3]_i_10__0_n_0\
    );
\arb_gnt_r[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => sel_i(1),
      I1 => sel_i(0),
      I2 => SR(0),
      I3 => arb_sel_r0_9,
      O => \arb_gnt_r[3]_i_1__0_n_0\
    );
\arb_gnt_r[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF750000FF75FF75"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_5__1_n_0\,
      I1 => \arb_gnt_r[3]_i_6__2_n_0\,
      I2 => port_priority_ns(1),
      I3 => \arb_gnt_r[3]_i_7__2_n_0\,
      I4 => port_priority_ns(7),
      I5 => \arb_gnt_r[3]_i_8_n_0\,
      O => sel_i(1)
    );
\arb_gnt_r[3]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DDDDDDD0DDD0DD"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_8_n_0\,
      I1 => port_priority_ns(6),
      I2 => \arb_gnt_r[3]_i_9__2_n_0\,
      I3 => \arb_gnt_r[3]_i_10__0_n_0\,
      I4 => \arb_gnt_r[3]_i_6__2_n_0\,
      I5 => port_priority_ns(0),
      O => sel_i(0)
    );
\arb_gnt_r[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"035DCF7FFFFFFFFF"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3__2_2\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      I2 => \arb_gnt_r[3]_i_3__2_1\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r[3]_i_3__2_0\,
      I5 => port_priority_ns(5),
      O => \arb_gnt_r[3]_i_5__1_n_0\
    );
\arb_gnt_r[3]_i_6__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3__2_2\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      I2 => \arb_gnt_r[3]_i_3__2_1\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r[3]_i_3__2_0\,
      O => \arb_gnt_r[3]_i_6__2_n_0\
    );
\arb_gnt_r[3]_i_7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080CCC8C3B2CFF2C"
    )
        port map (
      I0 => port_priority_ns(3),
      I1 => \barrel_cntr_reg_n_0_[0]\,
      I2 => \arb_gnt_r[3]_i_3__2_0\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r[3]_i_3__2_1\,
      I5 => \arb_gnt_r[3]_i_3__2_2\,
      O => \arb_gnt_r[3]_i_7__2_n_0\
    );
\arb_gnt_r[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"303F5050"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3__2_2\,
      I1 => \arb_gnt_r[3]_i_3__2_1\,
      I2 => \barrel_cntr_reg_n_0_[1]\,
      I3 => \arb_gnt_r[3]_i_3__2_0\,
      I4 => \barrel_cntr_reg_n_0_[0]\,
      O => \arb_gnt_r[3]_i_8_n_0\
    );
\arb_gnt_r[3]_i_9__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F005DEE1D001DCC"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3__2_0\,
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \arb_gnt_r[3]_i_3__2_1\,
      I3 => \barrel_cntr_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_3__2_2\,
      I5 => port_priority_ns(2),
      O => \arb_gnt_r[3]_i_9__2_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1__2_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(0),
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1__2_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(1),
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1__1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(2),
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1__0_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(3),
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sel_i(0),
      I1 => arb_sel_r0_9,
      I2 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sel_i(1),
      I1 => arb_sel_r0_9,
      I2 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => SR(0)
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => SR(0)
    );
\barrel_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(0)
    );
\barrel_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\(0),
      I1 => \^arb_gnt_r_reg[3]_0\(3),
      I2 => \^arb_gnt_r_reg[3]_0\(1),
      I3 => \^arb_busy_r\,
      I4 => \^arb_gnt_r_reg[3]_0\(2),
      O => barrel_cntr
    );
\barrel_cntr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      I1 => \barrel_cntr_reg_n_0_[1]\,
      O => barrel_cntr_ns(1)
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(0),
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\barrel_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(1),
      Q => \barrel_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => \^m_axis_tvalid\(0),
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SR(0),
      I1 => \^m_axis_tvalid\(0),
      O => areset_reg
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdata_0_sn_1,
      I1 => \m_axis_tdata[0]_0\,
      I2 => \m_axis_tdata[0]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[0]_2\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdata_1_sn_1,
      I1 => \m_axis_tdata[1]_0\,
      I2 => \m_axis_tdata[1]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[1]_2\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdata_2_sn_1,
      I1 => \m_axis_tdata[2]_0\,
      I2 => \m_axis_tdata[2]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[2]_2\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdata_3_sn_1,
      I1 => \m_axis_tdata[3]_0\,
      I2 => \m_axis_tdata[3]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[3]_2\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdata_4_sn_1,
      I1 => \m_axis_tdata[4]_0\,
      I2 => \m_axis_tdata[4]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[4]_2\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdata_5_sn_1,
      I1 => \m_axis_tdata[5]_0\,
      I2 => \m_axis_tdata[5]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[5]_2\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdata_6_sn_1,
      I1 => \m_axis_tdata[6]_0\,
      I2 => \m_axis_tdata[6]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[6]_2\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdata_7_sn_1,
      I1 => \m_axis_tdata[7]_0\,
      I2 => \m_axis_tdata[7]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[7]_2\,
      O => m_axis_tdata(7)
    );
\m_axis_tdest[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdest_0_sn_1,
      I1 => \m_axis_tdest[0]_0\,
      I2 => \m_axis_tdest[0]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[0]_2\,
      O => m_axis_tdest(0)
    );
\m_axis_tdest[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdest_1_sn_1,
      I1 => \m_axis_tdest[1]_0\,
      I2 => \m_axis_tdest[1]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[1]_2\,
      O => m_axis_tdest(1)
    );
\m_axis_tdest[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdest_2_sn_1,
      I1 => \m_axis_tdest[2]_0\,
      I2 => \m_axis_tdest[2]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[2]_2\,
      O => m_axis_tdest(2)
    );
\m_axis_tdest[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdest_3_sn_1,
      I1 => \m_axis_tdest[3]_0\,
      I2 => \m_axis_tdest[3]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[3]_2\,
      O => m_axis_tdest(3)
    );
\m_axis_tdest[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdest_4_sn_1,
      I1 => \m_axis_tdest[4]_0\,
      I2 => \m_axis_tdest[4]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[4]_2\,
      O => m_axis_tdest(4)
    );
\m_axis_tdest[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tdest_5_sn_1,
      I1 => \m_axis_tdest[5]_0\,
      I2 => \m_axis_tdest[5]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[5]_2\,
      O => m_axis_tdest(5)
    );
\m_axis_tdest[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdest_6_sn_1,
      I1 => \m_axis_tdest[6]_0\,
      I2 => \m_axis_tdest[6]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[6]_2\,
      O => m_axis_tdest(6)
    );
\m_axis_tdest[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tdest_7_sn_1,
      I1 => \m_axis_tdest[7]_0\,
      I2 => \m_axis_tdest[7]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[7]_2\,
      O => m_axis_tdest(7)
    );
\m_axis_tid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_0_sn_1,
      I1 => \m_axis_tid[0]_0\,
      I2 => \m_axis_tid[0]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[0]_2\,
      O => m_axis_tid(0)
    );
\m_axis_tid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tid_1_sn_1,
      I1 => \m_axis_tid[1]_0\,
      I2 => \m_axis_tid[1]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[1]_2\,
      O => m_axis_tid(1)
    );
\m_axis_tid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_2_sn_1,
      I1 => \m_axis_tid[2]_0\,
      I2 => \m_axis_tid[2]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[2]_2\,
      O => m_axis_tid(2)
    );
\m_axis_tid[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_3_sn_1,
      I1 => \m_axis_tid[3]_0\,
      I2 => \m_axis_tid[3]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[3]_2\,
      O => m_axis_tid(3)
    );
\m_axis_tid[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_4_sn_1,
      I1 => \m_axis_tid[4]_0\,
      I2 => \m_axis_tid[4]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[4]_2\,
      O => m_axis_tid(4)
    );
\m_axis_tid[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_5_sn_1,
      I1 => \m_axis_tid[5]_0\,
      I2 => \m_axis_tid[5]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[5]_2\,
      O => m_axis_tid(5)
    );
\m_axis_tid[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_6_sn_1,
      I1 => \m_axis_tid[6]_0\,
      I2 => \m_axis_tid[6]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[6]_2\,
      O => m_axis_tid(6)
    );
\m_axis_tid[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tid_7_sn_1,
      I1 => \m_axis_tid[7]_0\,
      I2 => \m_axis_tid[7]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[7]_2\,
      O => m_axis_tid(7)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => m_axis_tlast_0_sn_1,
      I1 => \m_axis_tlast[0]_0\,
      I2 => \m_axis_tlast[0]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tlast[0]_2\,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => m_axis_tuser_0_sn_1,
      I1 => \m_axis_tuser[0]_0\,
      I2 => \m_axis_tuser[0]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tuser[0]_2\,
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEE0EEE0EEEE"
    )
        port map (
      I0 => \m_axis_tvalid[0]_INST_0_i_1_n_0\,
      I1 => \m_axis_tvalid[0]_INST_0_i_2_n_0\,
      I2 => m_axis_tvalid_0_sn_1,
      I3 => \m_axis_tvalid[0]_0\,
      I4 => \m_axis_tvalid[0]_1\,
      I5 => \m_axis_tvalid[0]_INST_0_i_6_n_0\,
      O => \^m_axis_tvalid\(0)
    );
\m_axis_tvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\(1),
      I1 => \gen_tdest_router.busy_r_10\(1),
      I2 => \^arb_gnt_r_reg[3]_0\(2),
      I3 => \gen_tdest_router.busy_r_10\(2),
      O => \m_axis_tvalid[0]_INST_0_i_1_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\(3),
      I1 => \gen_tdest_router.busy_r_10\(3),
      I2 => \^arb_gnt_r_reg[3]_0\(0),
      I3 => \gen_tdest_router.busy_r_10\(0),
      O => \m_axis_tvalid[0]_INST_0_i_2_n_0\
    );
\m_axis_tvalid[0]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^arb_sel_r_reg[0]_0\,
      I1 => \^arb_sel_r_reg[1]_0\,
      O => \m_axis_tvalid[0]_INST_0_i_6_n_0\
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(0),
      Q => port_priority_ns(6),
      R => SR(0)
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(1),
      Q => port_priority_ns(7),
      R => SR(0)
    );
\port_priority_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(2),
      Q => port_priority_ns(0),
      S => SR(0)
    );
\port_priority_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(3),
      Q => port_priority_ns(1),
      R => SR(0)
    );
\port_priority_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(4),
      Q => port_priority_ns(2),
      R => SR(0)
    );
\port_priority_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(5),
      Q => port_priority_ns(3),
      S => SR(0)
    );
\port_priority_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(6),
      Q => port_priority_ns(4),
      S => SR(0)
    );
\port_priority_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(7),
      Q => port_priority_ns(5),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5 is
  port (
    arb_busy_r_0 : out STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC;
    areset_reg : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[2]_1\ : out STD_LOGIC;
    \m_axis_tready[1]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_ns_3 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_sel_r0 : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0_1\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0_2\ : in STD_LOGIC;
    \m_axis_tvalid[1]\ : in STD_LOGIC;
    \m_axis_tvalid[1]_0\ : in STD_LOGIC;
    \m_axis_tvalid[1]_1\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_axis_tdata[8]\ : in STD_LOGIC;
    \m_axis_tdata[8]_0\ : in STD_LOGIC;
    \m_axis_tdata[8]_1\ : in STD_LOGIC;
    \m_axis_tdata[8]_2\ : in STD_LOGIC;
    \m_axis_tdata[9]\ : in STD_LOGIC;
    \m_axis_tdata[9]_0\ : in STD_LOGIC;
    \m_axis_tdata[9]_1\ : in STD_LOGIC;
    \m_axis_tdata[9]_2\ : in STD_LOGIC;
    \m_axis_tdata[10]\ : in STD_LOGIC;
    \m_axis_tdata[10]_0\ : in STD_LOGIC;
    \m_axis_tdata[10]_1\ : in STD_LOGIC;
    \m_axis_tdata[10]_2\ : in STD_LOGIC;
    \m_axis_tdata[11]\ : in STD_LOGIC;
    \m_axis_tdata[11]_0\ : in STD_LOGIC;
    \m_axis_tdata[11]_1\ : in STD_LOGIC;
    \m_axis_tdata[11]_2\ : in STD_LOGIC;
    \m_axis_tdata[12]\ : in STD_LOGIC;
    \m_axis_tdata[12]_0\ : in STD_LOGIC;
    \m_axis_tdata[12]_1\ : in STD_LOGIC;
    \m_axis_tdata[12]_2\ : in STD_LOGIC;
    \m_axis_tdata[13]\ : in STD_LOGIC;
    \m_axis_tdata[13]_0\ : in STD_LOGIC;
    \m_axis_tdata[13]_1\ : in STD_LOGIC;
    \m_axis_tdata[13]_2\ : in STD_LOGIC;
    \m_axis_tdata[14]\ : in STD_LOGIC;
    \m_axis_tdata[14]_0\ : in STD_LOGIC;
    \m_axis_tdata[14]_1\ : in STD_LOGIC;
    \m_axis_tdata[14]_2\ : in STD_LOGIC;
    \m_axis_tdata[15]\ : in STD_LOGIC;
    \m_axis_tdata[15]_0\ : in STD_LOGIC;
    \m_axis_tdata[15]_1\ : in STD_LOGIC;
    \m_axis_tdata[15]_2\ : in STD_LOGIC;
    \m_axis_tlast[1]\ : in STD_LOGIC;
    \m_axis_tlast[1]_0\ : in STD_LOGIC;
    \m_axis_tlast[1]_1\ : in STD_LOGIC;
    \m_axis_tlast[1]_2\ : in STD_LOGIC;
    \m_axis_tid[8]\ : in STD_LOGIC;
    \m_axis_tid[8]_0\ : in STD_LOGIC;
    \m_axis_tid[8]_1\ : in STD_LOGIC;
    \m_axis_tid[8]_2\ : in STD_LOGIC;
    \m_axis_tid[9]\ : in STD_LOGIC;
    \m_axis_tid[9]_0\ : in STD_LOGIC;
    \m_axis_tid[9]_1\ : in STD_LOGIC;
    \m_axis_tid[9]_2\ : in STD_LOGIC;
    \m_axis_tid[10]\ : in STD_LOGIC;
    \m_axis_tid[10]_0\ : in STD_LOGIC;
    \m_axis_tid[10]_1\ : in STD_LOGIC;
    \m_axis_tid[10]_2\ : in STD_LOGIC;
    \m_axis_tid[11]\ : in STD_LOGIC;
    \m_axis_tid[11]_0\ : in STD_LOGIC;
    \m_axis_tid[11]_1\ : in STD_LOGIC;
    \m_axis_tid[11]_2\ : in STD_LOGIC;
    \m_axis_tid[12]\ : in STD_LOGIC;
    \m_axis_tid[12]_0\ : in STD_LOGIC;
    \m_axis_tid[12]_1\ : in STD_LOGIC;
    \m_axis_tid[12]_2\ : in STD_LOGIC;
    \m_axis_tid[13]\ : in STD_LOGIC;
    \m_axis_tid[13]_0\ : in STD_LOGIC;
    \m_axis_tid[13]_1\ : in STD_LOGIC;
    \m_axis_tid[13]_2\ : in STD_LOGIC;
    \m_axis_tid[14]\ : in STD_LOGIC;
    \m_axis_tid[14]_0\ : in STD_LOGIC;
    \m_axis_tid[14]_1\ : in STD_LOGIC;
    \m_axis_tid[14]_2\ : in STD_LOGIC;
    \m_axis_tid[15]\ : in STD_LOGIC;
    \m_axis_tid[15]_0\ : in STD_LOGIC;
    \m_axis_tid[15]_1\ : in STD_LOGIC;
    \m_axis_tid[15]_2\ : in STD_LOGIC;
    \m_axis_tdest[8]\ : in STD_LOGIC;
    \m_axis_tdest[8]_0\ : in STD_LOGIC;
    \m_axis_tdest[8]_1\ : in STD_LOGIC;
    \m_axis_tdest[8]_2\ : in STD_LOGIC;
    \m_axis_tdest[9]\ : in STD_LOGIC;
    \m_axis_tdest[9]_0\ : in STD_LOGIC;
    \m_axis_tdest[9]_1\ : in STD_LOGIC;
    \m_axis_tdest[9]_2\ : in STD_LOGIC;
    \m_axis_tdest[10]\ : in STD_LOGIC;
    \m_axis_tdest[10]_0\ : in STD_LOGIC;
    \m_axis_tdest[10]_1\ : in STD_LOGIC;
    \m_axis_tdest[10]_2\ : in STD_LOGIC;
    \m_axis_tdest[11]\ : in STD_LOGIC;
    \m_axis_tdest[11]_0\ : in STD_LOGIC;
    \m_axis_tdest[11]_1\ : in STD_LOGIC;
    \m_axis_tdest[11]_2\ : in STD_LOGIC;
    \m_axis_tdest[12]\ : in STD_LOGIC;
    \m_axis_tdest[12]_0\ : in STD_LOGIC;
    \m_axis_tdest[12]_1\ : in STD_LOGIC;
    \m_axis_tdest[12]_2\ : in STD_LOGIC;
    \m_axis_tdest[13]\ : in STD_LOGIC;
    \m_axis_tdest[13]_0\ : in STD_LOGIC;
    \m_axis_tdest[13]_1\ : in STD_LOGIC;
    \m_axis_tdest[13]_2\ : in STD_LOGIC;
    \m_axis_tdest[14]\ : in STD_LOGIC;
    \m_axis_tdest[14]_0\ : in STD_LOGIC;
    \m_axis_tdest[14]_1\ : in STD_LOGIC;
    \m_axis_tdest[14]_2\ : in STD_LOGIC;
    \m_axis_tdest[15]\ : in STD_LOGIC;
    \m_axis_tdest[15]_0\ : in STD_LOGIC;
    \m_axis_tdest[15]_1\ : in STD_LOGIC;
    \m_axis_tdest[15]_2\ : in STD_LOGIC;
    \m_axis_tuser[1]\ : in STD_LOGIC;
    \m_axis_tuser[1]_0\ : in STD_LOGIC;
    \m_axis_tuser[1]_1\ : in STD_LOGIC;
    \m_axis_tuser[1]_2\ : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5 : entity is "axis_switch_v1_1_29_arb_rr";
end axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5 is
  signal \^arb_busy_r_0\ : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_9_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^arb_gnt_r_reg[3]_0\ : STD_LOGIC;
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal barrel_cntr : STD_LOGIC;
  signal barrel_cntr_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_axis_tvalid[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel_i : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \barrel_cntr[1]_i_2__0\ : label is "soft_lutpair74";
begin
  arb_busy_r_0 <= \^arb_busy_r_0\;
  \arb_gnt_r_reg[2]_0\(2 downto 0) <= \^arb_gnt_r_reg[2]_0\(2 downto 0);
  \arb_gnt_r_reg[3]_0\ <= \^arb_gnt_r_reg[3]_0\;
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
  m_axis_tvalid(0) <= \^m_axis_tvalid\(0);
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns_3,
      Q => \^arb_busy_r_0\,
      R => SR(0)
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__0_n_0\,
      I1 => arb_sel_r0,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[0]_i_1_n_0\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__0_n_0\,
      I1 => arb_sel_r0,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[1]_i_1_n_0\
    );
\arb_gnt_r[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__0_n_0\,
      I1 => arb_sel_r0,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[2]_i_1__0_n_0\
    );
\arb_gnt_r[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__0_n_0\,
      I1 => arb_sel_r0,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[3]_i_1__1_n_0\
    );
\arb_gnt_r[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55553303"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_5_n_0\,
      I2 => port_priority_ns(5),
      I3 => \arb_gnt_r[3]_i_6__0_n_0\,
      I4 => \arb_gnt_r[3]_i_7__0_n_0\,
      O => \arb_gnt_r[3]_i_2__0_n_0\
    );
\arb_gnt_r[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => port_priority_ns(6),
      I1 => \arb_gnt_r[3]_i_7__0_n_0\,
      I2 => \arb_gnt_r[3]_i_6__0_n_0\,
      I3 => port_priority_ns(4),
      I4 => \arb_gnt_r[3]_i_9_n_0\,
      O => sel_i(0)
    );
\arb_gnt_r[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88C308088800080"
    )
        port map (
      I0 => port_priority_ns(1),
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \arb_gnt_r[3]_i_4__0_0\,
      I3 => \barrel_cntr_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_4__0_1\,
      I5 => port_priority_ns(3),
      O => \arb_gnt_r[3]_i_5_n_0\
    );
\arb_gnt_r[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888BC88888888"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_4__0_1\,
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \^arb_gnt_r_reg[3]_0\,
      I4 => \arb_gnt_r[3]_i_4__0_2\,
      I5 => \m_axis_tvalid[1]\,
      O => \arb_gnt_r[3]_i_6__0_n_0\
    );
\arb_gnt_r[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020000FF02000000"
    )
        port map (
      I0 => \m_axis_tvalid[1]\,
      I1 => \arb_gnt_r[3]_i_4__0_2\,
      I2 => \^arb_gnt_r_reg[3]_0\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \barrel_cntr_reg_n_0_[0]\,
      I5 => \arb_gnt_r[3]_i_4__0_1\,
      O => \arb_gnt_r[3]_i_7__0_n_0\
    );
\arb_gnt_r[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88C308088800080"
    )
        port map (
      I0 => port_priority_ns(0),
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \arb_gnt_r[3]_i_4__0_0\,
      I3 => \barrel_cntr_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_4__0_1\,
      I5 => port_priority_ns(2),
      O => \arb_gnt_r[3]_i_9_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[2]_0\(0),
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[2]_0\(1),
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1__0_n_0\,
      Q => \^arb_gnt_r_reg[2]_0\(2),
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1__1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sel_i(0),
      I1 => arb_sel_r0,
      I2 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__0_n_0\,
      I1 => arb_sel_r0,
      I2 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => SR(0)
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => SR(0)
    );
\barrel_cntr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(0)
    );
\barrel_cntr[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\,
      I1 => \^arb_gnt_r_reg[2]_0\(0),
      I2 => \^arb_gnt_r_reg[2]_0\(1),
      I3 => \^arb_busy_r_0\,
      I4 => \^arb_gnt_r_reg[2]_0\(2),
      O => barrel_cntr
    );
\barrel_cntr[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[1]\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(1)
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(0),
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\barrel_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(1),
      Q => \barrel_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\busy_r[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[2]_0\(2),
      I1 => \gen_tdest_router.busy_r_6\(1),
      O => \arb_gnt_r_reg[2]_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F10000000000"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0\,
      I1 => \m_axis_tvalid[1]_1\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I3 => \m_axis_tvalid[1]_0\,
      I4 => \m_axis_tvalid[1]_INST_0_i_1_n_0\,
      I5 => m_axis_tready(0),
      O => \m_axis_tready[1]\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3__0_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SR(0),
      I1 => \^m_axis_tvalid\(0),
      O => areset_reg
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[10]\,
      I1 => \m_axis_tdata[10]_0\,
      I2 => \m_axis_tdata[10]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[10]_2\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[11]\,
      I1 => \m_axis_tdata[11]_0\,
      I2 => \m_axis_tdata[11]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[11]_2\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[12]\,
      I1 => \m_axis_tdata[12]_0\,
      I2 => \m_axis_tdata[12]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[12]_2\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[13]\,
      I1 => \m_axis_tdata[13]_0\,
      I2 => \m_axis_tdata[13]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[13]_2\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[14]\,
      I1 => \m_axis_tdata[14]_0\,
      I2 => \m_axis_tdata[14]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[14]_2\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[15]\,
      I1 => \m_axis_tdata[15]_0\,
      I2 => \m_axis_tdata[15]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[15]_2\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[8]\,
      I1 => \m_axis_tdata[8]_0\,
      I2 => \m_axis_tdata[8]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[8]_2\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[9]\,
      I1 => \m_axis_tdata[9]_0\,
      I2 => \m_axis_tdata[9]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[9]_2\,
      O => m_axis_tdata(1)
    );
\m_axis_tdest[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[10]\,
      I1 => \m_axis_tdest[10]_0\,
      I2 => \m_axis_tdest[10]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[10]_2\,
      O => m_axis_tdest(2)
    );
\m_axis_tdest[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[11]\,
      I1 => \m_axis_tdest[11]_0\,
      I2 => \m_axis_tdest[11]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[11]_2\,
      O => m_axis_tdest(3)
    );
\m_axis_tdest[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[12]\,
      I1 => \m_axis_tdest[12]_0\,
      I2 => \m_axis_tdest[12]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[12]_2\,
      O => m_axis_tdest(4)
    );
\m_axis_tdest[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[13]\,
      I1 => \m_axis_tdest[13]_0\,
      I2 => \m_axis_tdest[13]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[13]_2\,
      O => m_axis_tdest(5)
    );
\m_axis_tdest[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[14]\,
      I1 => \m_axis_tdest[14]_0\,
      I2 => \m_axis_tdest[14]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[14]_2\,
      O => m_axis_tdest(6)
    );
\m_axis_tdest[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[15]\,
      I1 => \m_axis_tdest[15]_0\,
      I2 => \m_axis_tdest[15]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[15]_2\,
      O => m_axis_tdest(7)
    );
\m_axis_tdest[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[8]\,
      I1 => \m_axis_tdest[8]_0\,
      I2 => \m_axis_tdest[8]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[8]_2\,
      O => m_axis_tdest(0)
    );
\m_axis_tdest[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[9]\,
      I1 => \m_axis_tdest[9]_0\,
      I2 => \m_axis_tdest[9]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[9]_2\,
      O => m_axis_tdest(1)
    );
\m_axis_tid[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[10]\,
      I1 => \m_axis_tid[10]_0\,
      I2 => \m_axis_tid[10]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[10]_2\,
      O => m_axis_tid(2)
    );
\m_axis_tid[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[11]\,
      I1 => \m_axis_tid[11]_0\,
      I2 => \m_axis_tid[11]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[11]_2\,
      O => m_axis_tid(3)
    );
\m_axis_tid[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[12]\,
      I1 => \m_axis_tid[12]_0\,
      I2 => \m_axis_tid[12]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[12]_2\,
      O => m_axis_tid(4)
    );
\m_axis_tid[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[13]\,
      I1 => \m_axis_tid[13]_0\,
      I2 => \m_axis_tid[13]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[13]_2\,
      O => m_axis_tid(5)
    );
\m_axis_tid[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[14]\,
      I1 => \m_axis_tid[14]_0\,
      I2 => \m_axis_tid[14]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[14]_2\,
      O => m_axis_tid(6)
    );
\m_axis_tid[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[15]\,
      I1 => \m_axis_tid[15]_0\,
      I2 => \m_axis_tid[15]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[15]_2\,
      O => m_axis_tid(7)
    );
\m_axis_tid[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[8]\,
      I1 => \m_axis_tid[8]_0\,
      I2 => \m_axis_tid[8]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[8]_2\,
      O => m_axis_tid(0)
    );
\m_axis_tid[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[9]\,
      I1 => \m_axis_tid[9]_0\,
      I2 => \m_axis_tid[9]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[9]_2\,
      O => m_axis_tid(1)
    );
\m_axis_tlast[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tlast[1]\,
      I1 => \m_axis_tlast[1]_0\,
      I2 => \m_axis_tlast[1]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tlast[1]_2\,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tuser[1]\,
      I1 => \m_axis_tuser[1]_0\,
      I2 => \m_axis_tuser[1]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tuser[1]_2\,
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0000000E00000EE"
    )
        port map (
      I0 => \m_axis_tvalid[1]_INST_0_i_1_n_0\,
      I1 => \m_axis_tvalid[1]_0\,
      I2 => \m_axis_tvalid[1]\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tvalid[1]_1\,
      O => \^m_axis_tvalid\(0)
    );
\m_axis_tvalid[1]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[2]_0\(0),
      I1 => \gen_tdest_router.busy_r_6\(0),
      I2 => \^arb_gnt_r_reg[3]_0\,
      I3 => \gen_tdest_router.busy_r_6\(2),
      O => \m_axis_tvalid[1]_INST_0_i_1_n_0\
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(0),
      Q => port_priority_ns(6),
      R => SR(0)
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(1),
      Q => port_priority_ns(7),
      R => SR(0)
    );
\port_priority_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(2),
      Q => port_priority_ns(0),
      S => SR(0)
    );
\port_priority_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(3),
      Q => port_priority_ns(1),
      R => SR(0)
    );
\port_priority_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(4),
      Q => port_priority_ns(2),
      R => SR(0)
    );
\port_priority_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(5),
      Q => port_priority_ns(3),
      S => SR(0)
    );
\port_priority_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(6),
      Q => port_priority_ns(4),
      S => SR(0)
    );
\port_priority_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(7),
      Q => port_priority_ns(5),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6 is
  port (
    arb_busy_r_1 : out STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    areset_reg : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r_reg[2]_0\ : out STD_LOGIC;
    \m_axis_tready[2]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_ns_4 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_sel_r0_7 : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1_1\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_2__1_0\ : in STD_LOGIC;
    \m_axis_tvalid[2]\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1_2\ : in STD_LOGIC;
    \m_axis_tvalid[2]_0\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_axis_tdata[16]\ : in STD_LOGIC;
    \m_axis_tdata[16]_0\ : in STD_LOGIC;
    \m_axis_tdata[16]_1\ : in STD_LOGIC;
    \m_axis_tdata[16]_2\ : in STD_LOGIC;
    \m_axis_tdata[17]\ : in STD_LOGIC;
    \m_axis_tdata[17]_0\ : in STD_LOGIC;
    \m_axis_tdata[17]_1\ : in STD_LOGIC;
    \m_axis_tdata[17]_2\ : in STD_LOGIC;
    \m_axis_tdata[18]\ : in STD_LOGIC;
    \m_axis_tdata[18]_0\ : in STD_LOGIC;
    \m_axis_tdata[18]_1\ : in STD_LOGIC;
    \m_axis_tdata[18]_2\ : in STD_LOGIC;
    \m_axis_tdata[19]\ : in STD_LOGIC;
    \m_axis_tdata[19]_0\ : in STD_LOGIC;
    \m_axis_tdata[19]_1\ : in STD_LOGIC;
    \m_axis_tdata[19]_2\ : in STD_LOGIC;
    \m_axis_tdata[20]\ : in STD_LOGIC;
    \m_axis_tdata[20]_0\ : in STD_LOGIC;
    \m_axis_tdata[20]_1\ : in STD_LOGIC;
    \m_axis_tdata[20]_2\ : in STD_LOGIC;
    \m_axis_tdata[21]\ : in STD_LOGIC;
    \m_axis_tdata[21]_0\ : in STD_LOGIC;
    \m_axis_tdata[21]_1\ : in STD_LOGIC;
    \m_axis_tdata[21]_2\ : in STD_LOGIC;
    \m_axis_tdata[22]\ : in STD_LOGIC;
    \m_axis_tdata[22]_0\ : in STD_LOGIC;
    \m_axis_tdata[22]_1\ : in STD_LOGIC;
    \m_axis_tdata[22]_2\ : in STD_LOGIC;
    \m_axis_tdata[23]\ : in STD_LOGIC;
    \m_axis_tdata[23]_0\ : in STD_LOGIC;
    \m_axis_tdata[23]_1\ : in STD_LOGIC;
    \m_axis_tdata[23]_2\ : in STD_LOGIC;
    \m_axis_tlast[2]\ : in STD_LOGIC;
    \m_axis_tlast[2]_0\ : in STD_LOGIC;
    \m_axis_tlast[2]_1\ : in STD_LOGIC;
    \m_axis_tlast[2]_2\ : in STD_LOGIC;
    \m_axis_tid[16]\ : in STD_LOGIC;
    \m_axis_tid[16]_0\ : in STD_LOGIC;
    \m_axis_tid[16]_1\ : in STD_LOGIC;
    \m_axis_tid[16]_2\ : in STD_LOGIC;
    \m_axis_tid[17]\ : in STD_LOGIC;
    \m_axis_tid[17]_0\ : in STD_LOGIC;
    \m_axis_tid[17]_1\ : in STD_LOGIC;
    \m_axis_tid[17]_2\ : in STD_LOGIC;
    \m_axis_tid[18]\ : in STD_LOGIC;
    \m_axis_tid[18]_0\ : in STD_LOGIC;
    \m_axis_tid[18]_1\ : in STD_LOGIC;
    \m_axis_tid[18]_2\ : in STD_LOGIC;
    \m_axis_tid[19]\ : in STD_LOGIC;
    \m_axis_tid[19]_0\ : in STD_LOGIC;
    \m_axis_tid[19]_1\ : in STD_LOGIC;
    \m_axis_tid[19]_2\ : in STD_LOGIC;
    \m_axis_tid[20]\ : in STD_LOGIC;
    \m_axis_tid[20]_0\ : in STD_LOGIC;
    \m_axis_tid[20]_1\ : in STD_LOGIC;
    \m_axis_tid[20]_2\ : in STD_LOGIC;
    \m_axis_tid[21]\ : in STD_LOGIC;
    \m_axis_tid[21]_0\ : in STD_LOGIC;
    \m_axis_tid[21]_1\ : in STD_LOGIC;
    \m_axis_tid[21]_2\ : in STD_LOGIC;
    \m_axis_tid[22]\ : in STD_LOGIC;
    \m_axis_tid[22]_0\ : in STD_LOGIC;
    \m_axis_tid[22]_1\ : in STD_LOGIC;
    \m_axis_tid[22]_2\ : in STD_LOGIC;
    \m_axis_tid[23]\ : in STD_LOGIC;
    \m_axis_tid[23]_0\ : in STD_LOGIC;
    \m_axis_tid[23]_1\ : in STD_LOGIC;
    \m_axis_tid[23]_2\ : in STD_LOGIC;
    \m_axis_tdest[16]\ : in STD_LOGIC;
    \m_axis_tdest[16]_0\ : in STD_LOGIC;
    \m_axis_tdest[16]_1\ : in STD_LOGIC;
    \m_axis_tdest[16]_2\ : in STD_LOGIC;
    \m_axis_tdest[17]\ : in STD_LOGIC;
    \m_axis_tdest[17]_0\ : in STD_LOGIC;
    \m_axis_tdest[17]_1\ : in STD_LOGIC;
    \m_axis_tdest[17]_2\ : in STD_LOGIC;
    \m_axis_tdest[18]\ : in STD_LOGIC;
    \m_axis_tdest[18]_0\ : in STD_LOGIC;
    \m_axis_tdest[18]_1\ : in STD_LOGIC;
    \m_axis_tdest[18]_2\ : in STD_LOGIC;
    \m_axis_tdest[19]\ : in STD_LOGIC;
    \m_axis_tdest[19]_0\ : in STD_LOGIC;
    \m_axis_tdest[19]_1\ : in STD_LOGIC;
    \m_axis_tdest[19]_2\ : in STD_LOGIC;
    \m_axis_tdest[20]\ : in STD_LOGIC;
    \m_axis_tdest[20]_0\ : in STD_LOGIC;
    \m_axis_tdest[20]_1\ : in STD_LOGIC;
    \m_axis_tdest[20]_2\ : in STD_LOGIC;
    \m_axis_tdest[21]\ : in STD_LOGIC;
    \m_axis_tdest[21]_0\ : in STD_LOGIC;
    \m_axis_tdest[21]_1\ : in STD_LOGIC;
    \m_axis_tdest[21]_2\ : in STD_LOGIC;
    \m_axis_tdest[22]\ : in STD_LOGIC;
    \m_axis_tdest[22]_0\ : in STD_LOGIC;
    \m_axis_tdest[22]_1\ : in STD_LOGIC;
    \m_axis_tdest[22]_2\ : in STD_LOGIC;
    \m_axis_tdest[23]\ : in STD_LOGIC;
    \m_axis_tdest[23]_0\ : in STD_LOGIC;
    \m_axis_tdest[23]_1\ : in STD_LOGIC;
    \m_axis_tdest[23]_2\ : in STD_LOGIC;
    \m_axis_tuser[2]\ : in STD_LOGIC;
    \m_axis_tuser[2]_0\ : in STD_LOGIC;
    \m_axis_tuser[2]_1\ : in STD_LOGIC;
    \m_axis_tuser[2]_2\ : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6 : entity is "axis_switch_v1_1_29_arb_rr";
end axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6 is
  signal \^arb_busy_r_1\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 10 to 10 );
  signal \arb_gnt_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_10_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^arb_gnt_r_reg[3]_0\ : STD_LOGIC;
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal barrel_cntr : STD_LOGIC;
  signal barrel_cntr_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_axis_tvalid[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel_i : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[0]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \arb_gnt_r[2]_i_1__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_1__2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \arb_sel_r[1]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_1__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \barrel_cntr[1]_i_2__1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \busy_r[2]_i_1__1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axis_tvalid[2]_INST_0_i_2\ : label is "soft_lutpair75";
begin
  arb_busy_r_1 <= \^arb_busy_r_1\;
  \arb_gnt_r_reg[0]_0\ <= \^arb_gnt_r_reg[0]_0\;
  \arb_gnt_r_reg[1]_0\(0) <= \^arb_gnt_r_reg[1]_0\(0);
  \arb_gnt_r_reg[3]_0\ <= \^arb_gnt_r_reg[3]_0\;
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
  m_axis_tvalid(0) <= \^m_axis_tvalid\(0);
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns_4,
      Q => \^arb_busy_r_1\,
      R => SR(0)
    );
\arb_gnt_r[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__1_n_0\,
      I1 => arb_sel_r0_7,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[0]_i_1__0_n_0\
    );
\arb_gnt_r[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__1_n_0\,
      I1 => arb_sel_r0_7,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[1]_i_1__0_n_0\
    );
\arb_gnt_r[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__1_n_0\,
      I1 => arb_sel_r0_7,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[2]_i_1__2_n_0\
    );
\arb_gnt_r[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F0A2AEA200A2A2A"
    )
        port map (
      I0 => port_priority_ns(4),
      I1 => \arb_gnt_r[3]_i_4__1_0\,
      I2 => \barrel_cntr_reg_n_0_[1]\,
      I3 => \barrel_cntr_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_4__1_1\,
      I5 => port_priority_ns(2),
      O => \arb_gnt_r[3]_i_10_n_0\
    );
\arb_gnt_r[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__1_n_0\,
      I1 => arb_sel_r0_7,
      I2 => SR(0),
      I3 => sel_i(0),
      O => \arb_gnt_r[3]_i_1__2_n_0\
    );
\arb_gnt_r[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47474447"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_5__0_n_0\,
      I2 => \arb_gnt_r[3]_i_6__1_n_0\,
      I3 => port_priority_ns(5),
      I4 => \arb_gnt_r[3]_i_7__1_n_0\,
      O => \arb_gnt_r[3]_i_2__1_n_0\
    );
\arb_gnt_r[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => port_priority_ns(6),
      I1 => \arb_gnt_r[3]_i_5__0_n_0\,
      I2 => \arb_gnt_r[3]_i_9__0_n_0\,
      I3 => port_priority_ns(0),
      I4 => \arb_gnt_r[3]_i_10_n_0\,
      O => sel_i(0)
    );
\arb_gnt_r[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020000FF02000000"
    )
        port map (
      I0 => \m_axis_tvalid[2]\,
      I1 => \arb_gnt_r[3]_i_2__1_0\,
      I2 => \^arb_gnt_r_reg[3]_0\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \barrel_cntr_reg_n_0_[0]\,
      I5 => \arb_gnt_r[3]_i_4__1_0\,
      O => \arb_gnt_r[3]_i_5__0_n_0\
    );
\arb_gnt_r[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ECC820C020082000"
    )
        port map (
      I0 => port_priority_ns(3),
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \arb_gnt_r[3]_i_4__1_1\,
      I3 => \barrel_cntr_reg_n_0_[0]\,
      I4 => \arb_gnt_r[3]_i_4__1_0\,
      I5 => port_priority_ns(1),
      O => \arb_gnt_r[3]_i_6__1_n_0\
    );
\arb_gnt_r[3]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888BC88888888"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_4__1_0\,
      I1 => \barrel_cntr_reg_n_0_[1]\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \^arb_gnt_r_reg[3]_0\,
      I4 => \arb_gnt_r[3]_i_2__1_0\,
      I5 => \m_axis_tvalid[2]\,
      O => \arb_gnt_r[3]_i_7__1_n_0\
    );
\arb_gnt_r[3]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F7F7F757"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[1]\,
      I1 => \arb_gnt_r[3]_i_4__1_1\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \^arb_gnt_r_reg[0]_0\,
      I4 => \arb_gnt_r[3]_i_4__1_2\,
      I5 => \m_axis_tvalid[2]_0\,
      O => \arb_gnt_r[3]_i_9__0_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1__0_n_0\,
      Q => \^arb_gnt_r_reg[0]_0\,
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1__0_n_0\,
      Q => \^arb_gnt_r_reg[1]_0\(0),
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1__2_n_0\,
      Q => arb_gnt_i(10),
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1__2_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\,
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sel_i(0),
      I1 => arb_sel_r0_7,
      I2 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2__1_n_0\,
      I1 => arb_sel_r0_7,
      I2 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => SR(0)
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => SR(0)
    );
\barrel_cntr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(0)
    );
\barrel_cntr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\,
      I1 => \^arb_gnt_r_reg[0]_0\,
      I2 => \^arb_gnt_r_reg[1]_0\(0),
      I3 => \^arb_busy_r_1\,
      I4 => arb_gnt_i(10),
      O => barrel_cntr
    );
\barrel_cntr[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[1]\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(1)
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(0),
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\barrel_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(1),
      Q => \barrel_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\busy_r[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => arb_gnt_i(10),
      I1 => \gen_tdest_router.busy_r_8\(2),
      O => \arb_gnt_r_reg[2]_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F10000000000"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0\,
      I1 => \m_axis_tvalid[2]_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I3 => \m_axis_tvalid[2]_INST_0_i_2_n_0\,
      I4 => \m_axis_tvalid[2]_INST_0_i_1_n_0\,
      I5 => m_axis_tready(0),
      O => \m_axis_tready[2]\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_sel_r_reg[1]_0\,
      I1 => \^arb_sel_r_reg[0]_0\,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_3_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SR(0),
      I1 => \^m_axis_tvalid\(0),
      O => areset_reg
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[16]\,
      I1 => \m_axis_tdata[16]_0\,
      I2 => \m_axis_tdata[16]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[16]_2\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[17]\,
      I1 => \m_axis_tdata[17]_0\,
      I2 => \m_axis_tdata[17]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[17]_2\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[18]\,
      I1 => \m_axis_tdata[18]_0\,
      I2 => \m_axis_tdata[18]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[18]_2\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[19]\,
      I1 => \m_axis_tdata[19]_0\,
      I2 => \m_axis_tdata[19]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[19]_2\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[20]\,
      I1 => \m_axis_tdata[20]_0\,
      I2 => \m_axis_tdata[20]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[20]_2\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[21]\,
      I1 => \m_axis_tdata[21]_0\,
      I2 => \m_axis_tdata[21]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[21]_2\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[22]\,
      I1 => \m_axis_tdata[22]_0\,
      I2 => \m_axis_tdata[22]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[22]_2\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[23]\,
      I1 => \m_axis_tdata[23]_0\,
      I2 => \m_axis_tdata[23]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[23]_2\,
      O => m_axis_tdata(7)
    );
\m_axis_tdest[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[16]\,
      I1 => \m_axis_tdest[16]_0\,
      I2 => \m_axis_tdest[16]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[16]_2\,
      O => m_axis_tdest(0)
    );
\m_axis_tdest[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[17]\,
      I1 => \m_axis_tdest[17]_0\,
      I2 => \m_axis_tdest[17]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[17]_2\,
      O => m_axis_tdest(1)
    );
\m_axis_tdest[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[18]\,
      I1 => \m_axis_tdest[18]_0\,
      I2 => \m_axis_tdest[18]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[18]_2\,
      O => m_axis_tdest(2)
    );
\m_axis_tdest[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[19]\,
      I1 => \m_axis_tdest[19]_0\,
      I2 => \m_axis_tdest[19]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[19]_2\,
      O => m_axis_tdest(3)
    );
\m_axis_tdest[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[20]\,
      I1 => \m_axis_tdest[20]_0\,
      I2 => \m_axis_tdest[20]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[20]_2\,
      O => m_axis_tdest(4)
    );
\m_axis_tdest[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[21]\,
      I1 => \m_axis_tdest[21]_0\,
      I2 => \m_axis_tdest[21]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[21]_2\,
      O => m_axis_tdest(5)
    );
\m_axis_tdest[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[22]\,
      I1 => \m_axis_tdest[22]_0\,
      I2 => \m_axis_tdest[22]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[22]_2\,
      O => m_axis_tdest(6)
    );
\m_axis_tdest[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[23]\,
      I1 => \m_axis_tdest[23]_0\,
      I2 => \m_axis_tdest[23]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[23]_2\,
      O => m_axis_tdest(7)
    );
\m_axis_tid[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[16]\,
      I1 => \m_axis_tid[16]_0\,
      I2 => \m_axis_tid[16]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[16]_2\,
      O => m_axis_tid(0)
    );
\m_axis_tid[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[17]\,
      I1 => \m_axis_tid[17]_0\,
      I2 => \m_axis_tid[17]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[17]_2\,
      O => m_axis_tid(1)
    );
\m_axis_tid[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[18]\,
      I1 => \m_axis_tid[18]_0\,
      I2 => \m_axis_tid[18]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[18]_2\,
      O => m_axis_tid(2)
    );
\m_axis_tid[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[19]\,
      I1 => \m_axis_tid[19]_0\,
      I2 => \m_axis_tid[19]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[19]_2\,
      O => m_axis_tid(3)
    );
\m_axis_tid[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[20]\,
      I1 => \m_axis_tid[20]_0\,
      I2 => \m_axis_tid[20]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[20]_2\,
      O => m_axis_tid(4)
    );
\m_axis_tid[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[21]\,
      I1 => \m_axis_tid[21]_0\,
      I2 => \m_axis_tid[21]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[21]_2\,
      O => m_axis_tid(5)
    );
\m_axis_tid[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[22]\,
      I1 => \m_axis_tid[22]_0\,
      I2 => \m_axis_tid[22]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[22]_2\,
      O => m_axis_tid(6)
    );
\m_axis_tid[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[23]\,
      I1 => \m_axis_tid[23]_0\,
      I2 => \m_axis_tid[23]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[23]_2\,
      O => m_axis_tid(7)
    );
\m_axis_tlast[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tlast[2]\,
      I1 => \m_axis_tlast[2]_0\,
      I2 => \m_axis_tlast[2]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tlast[2]_2\,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tuser[2]\,
      I1 => \m_axis_tuser[2]_0\,
      I2 => \m_axis_tuser[2]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tuser[2]_2\,
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0000000E00000EE"
    )
        port map (
      I0 => \m_axis_tvalid[2]_INST_0_i_1_n_0\,
      I1 => \m_axis_tvalid[2]_INST_0_i_2_n_0\,
      I2 => \m_axis_tvalid[2]\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tvalid[2]_0\,
      O => \^m_axis_tvalid\(0)
    );
\m_axis_tvalid[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_0\,
      I1 => \gen_tdest_router.busy_r_8\(0),
      I2 => \^arb_gnt_r_reg[3]_0\,
      I3 => \gen_tdest_router.busy_r_8\(3),
      O => \m_axis_tvalid[2]_INST_0_i_1_n_0\
    );
\m_axis_tvalid[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[1]_0\(0),
      I1 => \gen_tdest_router.busy_r_8\(1),
      I2 => \gen_tdest_router.busy_r_8\(2),
      I3 => arb_gnt_i(10),
      O => \m_axis_tvalid[2]_INST_0_i_2_n_0\
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(0),
      Q => port_priority_ns(6),
      R => SR(0)
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(1),
      Q => port_priority_ns(7),
      R => SR(0)
    );
\port_priority_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(2),
      Q => port_priority_ns(0),
      S => SR(0)
    );
\port_priority_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(3),
      Q => port_priority_ns(1),
      R => SR(0)
    );
\port_priority_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(4),
      Q => port_priority_ns(2),
      R => SR(0)
    );
\port_priority_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(5),
      Q => port_priority_ns(3),
      S => SR(0)
    );
\port_priority_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(6),
      Q => port_priority_ns(4),
      S => SR(0)
    );
\port_priority_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(7),
      Q => port_priority_ns(5),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7 is
  port (
    arb_busy_r_reg_0 : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    areset_reg : out STD_LOGIC;
    \arb_gnt_r_reg[0]_0\ : out STD_LOGIC;
    \arb_gnt_r_reg[0]_1\ : out STD_LOGIC;
    \arb_gnt_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \arb_sel_r_reg[0]_0\ : out STD_LOGIC;
    \arb_sel_r_reg[1]_0\ : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_axis_tready[3]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_ns_5 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_1\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_3\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_sel_r_reg[0]_1\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_2\ : in STD_LOGIC;
    \m_axis_tvalid[3]\ : in STD_LOGIC;
    \m_axis_tvalid[3]_0\ : in STD_LOGIC;
    \m_axis_tvalid[3]_1\ : in STD_LOGIC;
    \m_axis_tvalid[3]_2\ : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \m_axis_tdata[24]\ : in STD_LOGIC;
    \m_axis_tdata[24]_0\ : in STD_LOGIC;
    \m_axis_tdata[24]_1\ : in STD_LOGIC;
    \m_axis_tdata[24]_2\ : in STD_LOGIC;
    \m_axis_tdata[25]\ : in STD_LOGIC;
    \m_axis_tdata[25]_0\ : in STD_LOGIC;
    \m_axis_tdata[25]_1\ : in STD_LOGIC;
    \m_axis_tdata[25]_2\ : in STD_LOGIC;
    \m_axis_tdata[26]\ : in STD_LOGIC;
    \m_axis_tdata[26]_0\ : in STD_LOGIC;
    \m_axis_tdata[26]_1\ : in STD_LOGIC;
    \m_axis_tdata[26]_2\ : in STD_LOGIC;
    \m_axis_tdata[27]\ : in STD_LOGIC;
    \m_axis_tdata[27]_0\ : in STD_LOGIC;
    \m_axis_tdata[27]_1\ : in STD_LOGIC;
    \m_axis_tdata[27]_2\ : in STD_LOGIC;
    \m_axis_tdata[28]\ : in STD_LOGIC;
    \m_axis_tdata[28]_0\ : in STD_LOGIC;
    \m_axis_tdata[28]_1\ : in STD_LOGIC;
    \m_axis_tdata[28]_2\ : in STD_LOGIC;
    \m_axis_tdata[29]\ : in STD_LOGIC;
    \m_axis_tdata[29]_0\ : in STD_LOGIC;
    \m_axis_tdata[29]_1\ : in STD_LOGIC;
    \m_axis_tdata[29]_2\ : in STD_LOGIC;
    \m_axis_tdata[30]\ : in STD_LOGIC;
    \m_axis_tdata[30]_0\ : in STD_LOGIC;
    \m_axis_tdata[30]_1\ : in STD_LOGIC;
    \m_axis_tdata[30]_2\ : in STD_LOGIC;
    \m_axis_tdata[31]\ : in STD_LOGIC;
    \m_axis_tdata[31]_0\ : in STD_LOGIC;
    \m_axis_tdata[31]_1\ : in STD_LOGIC;
    \m_axis_tdata[31]_2\ : in STD_LOGIC;
    \m_axis_tlast[3]\ : in STD_LOGIC;
    \m_axis_tlast[3]_0\ : in STD_LOGIC;
    \m_axis_tlast[3]_1\ : in STD_LOGIC;
    \m_axis_tlast[3]_2\ : in STD_LOGIC;
    \m_axis_tid[24]\ : in STD_LOGIC;
    \m_axis_tid[24]_0\ : in STD_LOGIC;
    \m_axis_tid[24]_1\ : in STD_LOGIC;
    \m_axis_tid[24]_2\ : in STD_LOGIC;
    \m_axis_tid[25]\ : in STD_LOGIC;
    \m_axis_tid[25]_0\ : in STD_LOGIC;
    \m_axis_tid[25]_1\ : in STD_LOGIC;
    \m_axis_tid[25]_2\ : in STD_LOGIC;
    \m_axis_tid[26]\ : in STD_LOGIC;
    \m_axis_tid[26]_0\ : in STD_LOGIC;
    \m_axis_tid[26]_1\ : in STD_LOGIC;
    \m_axis_tid[26]_2\ : in STD_LOGIC;
    \m_axis_tid[27]\ : in STD_LOGIC;
    \m_axis_tid[27]_0\ : in STD_LOGIC;
    \m_axis_tid[27]_1\ : in STD_LOGIC;
    \m_axis_tid[27]_2\ : in STD_LOGIC;
    \m_axis_tid[28]\ : in STD_LOGIC;
    \m_axis_tid[28]_0\ : in STD_LOGIC;
    \m_axis_tid[28]_1\ : in STD_LOGIC;
    \m_axis_tid[28]_2\ : in STD_LOGIC;
    \m_axis_tid[29]\ : in STD_LOGIC;
    \m_axis_tid[29]_0\ : in STD_LOGIC;
    \m_axis_tid[29]_1\ : in STD_LOGIC;
    \m_axis_tid[29]_2\ : in STD_LOGIC;
    \m_axis_tid[30]\ : in STD_LOGIC;
    \m_axis_tid[30]_0\ : in STD_LOGIC;
    \m_axis_tid[30]_1\ : in STD_LOGIC;
    \m_axis_tid[30]_2\ : in STD_LOGIC;
    \m_axis_tid[31]\ : in STD_LOGIC;
    \m_axis_tid[31]_0\ : in STD_LOGIC;
    \m_axis_tid[31]_1\ : in STD_LOGIC;
    \m_axis_tid[31]_2\ : in STD_LOGIC;
    \m_axis_tdest[24]\ : in STD_LOGIC;
    \m_axis_tdest[24]_0\ : in STD_LOGIC;
    \m_axis_tdest[24]_1\ : in STD_LOGIC;
    \m_axis_tdest[24]_2\ : in STD_LOGIC;
    \m_axis_tdest[25]\ : in STD_LOGIC;
    \m_axis_tdest[25]_0\ : in STD_LOGIC;
    \m_axis_tdest[25]_1\ : in STD_LOGIC;
    \m_axis_tdest[25]_2\ : in STD_LOGIC;
    \m_axis_tdest[26]\ : in STD_LOGIC;
    \m_axis_tdest[26]_0\ : in STD_LOGIC;
    \m_axis_tdest[26]_1\ : in STD_LOGIC;
    \m_axis_tdest[26]_2\ : in STD_LOGIC;
    \m_axis_tdest[27]\ : in STD_LOGIC;
    \m_axis_tdest[27]_0\ : in STD_LOGIC;
    \m_axis_tdest[27]_1\ : in STD_LOGIC;
    \m_axis_tdest[27]_2\ : in STD_LOGIC;
    \m_axis_tdest[28]\ : in STD_LOGIC;
    \m_axis_tdest[28]_0\ : in STD_LOGIC;
    \m_axis_tdest[28]_1\ : in STD_LOGIC;
    \m_axis_tdest[28]_2\ : in STD_LOGIC;
    \m_axis_tdest[29]\ : in STD_LOGIC;
    \m_axis_tdest[29]_0\ : in STD_LOGIC;
    \m_axis_tdest[29]_1\ : in STD_LOGIC;
    \m_axis_tdest[29]_2\ : in STD_LOGIC;
    \m_axis_tdest[30]\ : in STD_LOGIC;
    \m_axis_tdest[30]_0\ : in STD_LOGIC;
    \m_axis_tdest[30]_1\ : in STD_LOGIC;
    \m_axis_tdest[30]_2\ : in STD_LOGIC;
    \m_axis_tdest[31]\ : in STD_LOGIC;
    \m_axis_tdest[31]_0\ : in STD_LOGIC;
    \m_axis_tdest[31]_1\ : in STD_LOGIC;
    \m_axis_tdest[31]_2\ : in STD_LOGIC;
    \m_axis_tuser[3]\ : in STD_LOGIC;
    \m_axis_tuser[3]_0\ : in STD_LOGIC;
    \m_axis_tuser[3]_1\ : in STD_LOGIC;
    \m_axis_tuser[3]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7 : entity is "axis_switch_v1_1_29_arb_rr";
end axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7 is
  signal \^arb_busy_r_reg_0\ : STD_LOGIC;
  signal \arb_gnt_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_5__2_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \arb_gnt_r[3]_i_7_n_0\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[0]_1\ : STD_LOGIC;
  signal \^arb_gnt_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arb_sel_r0 : STD_LOGIC;
  signal \arb_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \arb_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[0]_0\ : STD_LOGIC;
  signal \^arb_sel_r_reg[1]_0\ : STD_LOGIC;
  signal barrel_cntr : STD_LOGIC;
  signal barrel_cntr_ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \barrel_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \barrel_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.payload_b_reg[3]\ : STD_LOGIC;
  signal \m_axis_tvalid[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal port_priority_ns : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \barrel_cntr[0]_i_1__2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \barrel_cntr[1]_i_2__2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \busy_r[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axis_tvalid[3]_INST_0_i_6\ : label is "soft_lutpair80";
begin
  arb_busy_r_reg_0 <= \^arb_busy_r_reg_0\;
  \arb_gnt_r_reg[0]_1\ <= \^arb_gnt_r_reg[0]_1\;
  \arb_gnt_r_reg[3]_0\(2 downto 0) <= \^arb_gnt_r_reg[3]_0\(2 downto 0);
  \arb_sel_r_reg[0]_0\ <= \^arb_sel_r_reg[0]_0\;
  \arb_sel_r_reg[1]_0\ <= \^arb_sel_r_reg[1]_0\;
  \gen_AB_reg_slice.payload_b_reg[3]\ <= \^gen_ab_reg_slice.payload_b_reg[3]\;
arb_busy_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => arb_busy_ns_5,
      Q => \^arb_busy_r_reg_0\,
      R => SR(0)
    );
\arb_gnt_r[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0703070300000700"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_5__2_n_0\,
      I3 => \arb_gnt_r[3]_i_3_n_0\,
      I4 => port_priority_ns(6),
      I5 => \arb_gnt_r[3]_i_4_n_0\,
      O => \arb_gnt_r[0]_i_1__1_n_0\
    );
\arb_gnt_r[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007303"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => port_priority_ns(6),
      I4 => \arb_gnt_r[3]_i_4_n_0\,
      I5 => \arb_gnt_r[3]_i_5__2_n_0\,
      O => \arb_gnt_r[1]_i_1__1_n_0\
    );
\arb_gnt_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080C080C00000800"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_5__2_n_0\,
      I3 => \arb_gnt_r[3]_i_3_n_0\,
      I4 => port_priority_ns(6),
      I5 => \arb_gnt_r[3]_i_4_n_0\,
      O => \arb_gnt_r[2]_i_1_n_0\
    );
\arb_gnt_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008C0C"
    )
        port map (
      I0 => port_priority_ns(7),
      I1 => \arb_gnt_r[3]_i_2_n_0\,
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => port_priority_ns(6),
      I4 => \arb_gnt_r[3]_i_4_n_0\,
      I5 => \arb_gnt_r[3]_i_5__2_n_0\,
      O => \arb_gnt_r[3]_i_1_n_0\
    );
\arb_gnt_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFFAAEEEEEEEE"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3_n_0\,
      I1 => port_priority_ns(1),
      I2 => port_priority_ns(3),
      I3 => port_priority_ns(5),
      I4 => \arb_gnt_r[3]_i_6_n_0\,
      I5 => \arb_gnt_r[3]_i_7_n_0\,
      O => \arb_gnt_r[3]_i_2_n_0\
    );
\arb_gnt_r[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF000F0FF"
    )
        port map (
      I0 => \arb_gnt_r_reg[2]_0\,
      I1 => \arb_gnt_r_reg[2]_1\,
      I2 => \arb_gnt_r_reg[2]_2\,
      I3 => \barrel_cntr_reg_n_0_[1]\,
      I4 => \arb_gnt_r_reg[2]_3\,
      I5 => \barrel_cntr_reg_n_0_[0]\,
      O => \arb_gnt_r[3]_i_3_n_0\
    );
\arb_gnt_r[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1013101300033033"
    )
        port map (
      I0 => port_priority_ns(2),
      I1 => \arb_gnt_r[3]_i_3_n_0\,
      I2 => \arb_gnt_r[3]_i_7_n_0\,
      I3 => port_priority_ns(0),
      I4 => port_priority_ns(4),
      I5 => \arb_gnt_r[3]_i_6_n_0\,
      O => \arb_gnt_r[3]_i_4_n_0\
    );
\arb_gnt_r[3]_i_5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEEEEEFEEEFE"
    )
        port map (
      I0 => SR(0),
      I1 => \arb_sel_r_reg[0]_2\,
      I2 => \^arb_busy_r_reg_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I4 => \arb_gnt_r_reg[2]_4\,
      I5 => \^gen_ab_reg_slice.payload_b_reg[3]\,
      O => \arb_gnt_r[3]_i_5__2_n_0\
    );
\arb_gnt_r[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \arb_gnt_r_reg[2]_1\,
      I1 => \arb_gnt_r_reg[2]_0\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \arb_gnt_r_reg[2]_3\,
      I4 => \barrel_cntr_reg_n_0_[1]\,
      I5 => \arb_gnt_r_reg[2]_2\,
      O => \arb_gnt_r[3]_i_6_n_0\
    );
\arb_gnt_r[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3030A0AF3F3F"
    )
        port map (
      I0 => \arb_gnt_r_reg[2]_3\,
      I1 => \arb_gnt_r_reg[2]_2\,
      I2 => \barrel_cntr_reg_n_0_[0]\,
      I3 => \arb_gnt_r_reg[2]_0\,
      I4 => \barrel_cntr_reg_n_0_[1]\,
      I5 => \arb_gnt_r_reg[2]_1\,
      O => \arb_gnt_r[3]_i_7_n_0\
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[0]_i_1__1_n_0\,
      Q => \^arb_gnt_r_reg[0]_1\,
      R => '0'
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[1]_i_1__1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(0),
      R => '0'
    );
\arb_gnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[2]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(1),
      R => '0'
    );
\arb_gnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_gnt_r[3]_i_1_n_0\,
      Q => \^arb_gnt_r_reg[3]_0\(2),
      R => '0'
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DFF0D00"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_3_n_0\,
      I1 => port_priority_ns(6),
      I2 => \arb_gnt_r[3]_i_4_n_0\,
      I3 => arb_sel_r0,
      I4 => \^arb_sel_r_reg[0]_0\,
      O => \arb_sel_r[0]_i_1_n_0\
    );
\arb_sel_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => \arb_gnt_r[3]_i_2_n_0\,
      I1 => port_priority_ns(7),
      I2 => \arb_gnt_r[3]_i_3_n_0\,
      I3 => arb_sel_r0,
      I4 => \^arb_sel_r_reg[1]_0\,
      O => \arb_sel_r[1]_i_1_n_0\
    );
\arb_sel_r[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF80FFFF"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[3]\,
      I1 => m_axis_tready(0),
      I2 => \arb_sel_r_reg[0]_1\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I4 => \^arb_busy_r_reg_0\,
      I5 => \arb_sel_r_reg[0]_2\,
      O => arb_sel_r0
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[0]_i_1_n_0\,
      Q => \^arb_sel_r_reg[0]_0\,
      R => SR(0)
    );
\arb_sel_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arb_sel_r[1]_i_1_n_0\,
      Q => \^arb_sel_r_reg[1]_0\,
      R => SR(0)
    );
\barrel_cntr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(0)
    );
\barrel_cntr[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \^arb_busy_r_reg_0\,
      I1 => \^arb_gnt_r_reg[0]_1\,
      I2 => \^arb_gnt_r_reg[3]_0\(1),
      I3 => \^arb_gnt_r_reg[3]_0\(2),
      I4 => \^arb_gnt_r_reg[3]_0\(0),
      O => barrel_cntr
    );
\barrel_cntr[1]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \barrel_cntr_reg_n_0_[1]\,
      I1 => \barrel_cntr_reg_n_0_[0]\,
      O => barrel_cntr_ns(1)
    );
\barrel_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(0),
      Q => \barrel_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\barrel_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => barrel_cntr_ns(1),
      Q => \barrel_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\busy_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_1\,
      I1 => \gen_tdest_router.busy_r\(0),
      O => \arb_gnt_r_reg[0]_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_ab_reg_slice.payload_b_reg[3]\,
      I1 => m_axis_tready(0),
      O => \m_axis_tready[3]\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => SR(0),
      I1 => \^gen_ab_reg_slice.payload_b_reg[3]\,
      O => areset_reg
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[24]\,
      I1 => \m_axis_tdata[24]_0\,
      I2 => \m_axis_tdata[24]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[24]_2\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[25]\,
      I1 => \m_axis_tdata[25]_0\,
      I2 => \m_axis_tdata[25]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[25]_2\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[26]\,
      I1 => \m_axis_tdata[26]_0\,
      I2 => \m_axis_tdata[26]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[26]_2\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[27]\,
      I1 => \m_axis_tdata[27]_0\,
      I2 => \m_axis_tdata[27]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[27]_2\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[28]\,
      I1 => \m_axis_tdata[28]_0\,
      I2 => \m_axis_tdata[28]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[28]_2\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[29]\,
      I1 => \m_axis_tdata[29]_0\,
      I2 => \m_axis_tdata[29]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[29]_2\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdata[30]\,
      I1 => \m_axis_tdata[30]_0\,
      I2 => \m_axis_tdata[30]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[30]_2\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdata[31]\,
      I1 => \m_axis_tdata[31]_0\,
      I2 => \m_axis_tdata[31]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdata[31]_2\,
      O => m_axis_tdata(7)
    );
\m_axis_tdest[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[24]\,
      I1 => \m_axis_tdest[24]_0\,
      I2 => \m_axis_tdest[24]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[24]_2\,
      O => m_axis_tdest(0)
    );
\m_axis_tdest[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[25]\,
      I1 => \m_axis_tdest[25]_0\,
      I2 => \m_axis_tdest[25]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[25]_2\,
      O => m_axis_tdest(1)
    );
\m_axis_tdest[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[26]\,
      I1 => \m_axis_tdest[26]_0\,
      I2 => \m_axis_tdest[26]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[26]_2\,
      O => m_axis_tdest(2)
    );
\m_axis_tdest[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[27]\,
      I1 => \m_axis_tdest[27]_0\,
      I2 => \m_axis_tdest[27]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[27]_2\,
      O => m_axis_tdest(3)
    );
\m_axis_tdest[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[28]\,
      I1 => \m_axis_tdest[28]_0\,
      I2 => \m_axis_tdest[28]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[28]_2\,
      O => m_axis_tdest(4)
    );
\m_axis_tdest[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tdest[29]\,
      I1 => \m_axis_tdest[29]_0\,
      I2 => \m_axis_tdest[29]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[29]_2\,
      O => m_axis_tdest(5)
    );
\m_axis_tdest[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[30]\,
      I1 => \m_axis_tdest[30]_0\,
      I2 => \m_axis_tdest[30]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[30]_2\,
      O => m_axis_tdest(6)
    );
\m_axis_tdest[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tdest[31]\,
      I1 => \m_axis_tdest[31]_0\,
      I2 => \m_axis_tdest[31]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tdest[31]_2\,
      O => m_axis_tdest(7)
    );
\m_axis_tid[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[24]\,
      I1 => \m_axis_tid[24]_0\,
      I2 => \m_axis_tid[24]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[24]_2\,
      O => m_axis_tid(0)
    );
\m_axis_tid[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[25]\,
      I1 => \m_axis_tid[25]_0\,
      I2 => \m_axis_tid[25]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[25]_2\,
      O => m_axis_tid(1)
    );
\m_axis_tid[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tid[26]\,
      I1 => \m_axis_tid[26]_0\,
      I2 => \m_axis_tid[26]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[26]_2\,
      O => m_axis_tid(2)
    );
\m_axis_tid[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[27]\,
      I1 => \m_axis_tid[27]_0\,
      I2 => \m_axis_tid[27]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[27]_2\,
      O => m_axis_tid(3)
    );
\m_axis_tid[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[28]\,
      I1 => \m_axis_tid[28]_0\,
      I2 => \m_axis_tid[28]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[28]_2\,
      O => m_axis_tid(4)
    );
\m_axis_tid[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[29]\,
      I1 => \m_axis_tid[29]_0\,
      I2 => \m_axis_tid[29]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[29]_2\,
      O => m_axis_tid(5)
    );
\m_axis_tid[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[30]\,
      I1 => \m_axis_tid[30]_0\,
      I2 => \m_axis_tid[30]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[30]_2\,
      O => m_axis_tid(6)
    );
\m_axis_tid[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => \m_axis_tid[31]\,
      I1 => \m_axis_tid[31]_0\,
      I2 => \m_axis_tid[31]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tid[31]_2\,
      O => m_axis_tid(7)
    );
\m_axis_tlast[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tlast[3]\,
      I1 => \m_axis_tlast[3]_0\,
      I2 => \m_axis_tlast[3]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tlast[3]_2\,
      O => m_axis_tlast(0)
    );
\m_axis_tuser[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => \m_axis_tuser[3]\,
      I1 => \m_axis_tuser[3]_0\,
      I2 => \m_axis_tuser[3]_1\,
      I3 => \^arb_sel_r_reg[0]_0\,
      I4 => \^arb_sel_r_reg[1]_0\,
      I5 => \m_axis_tuser[3]_2\,
      O => m_axis_tuser(0)
    );
\m_axis_tvalid[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFEFFFE"
    )
        port map (
      I0 => \m_axis_tvalid[3]\,
      I1 => \m_axis_tvalid[3]_0\,
      I2 => \m_axis_tvalid[3]_1\,
      I3 => \m_axis_tvalid[3]_2\,
      I4 => \m_axis_tvalid[3]_INST_0_i_5_n_0\,
      I5 => \m_axis_tvalid[3]_INST_0_i_6_n_0\,
      O => \^gen_ab_reg_slice.payload_b_reg[3]\
    );
\m_axis_tvalid[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^arb_gnt_r_reg[3]_0\(0),
      I1 => \gen_tdest_router.busy_r\(1),
      I2 => \^arb_gnt_r_reg[3]_0\(1),
      I3 => \gen_tdest_router.busy_r\(2),
      O => \m_axis_tvalid[3]_INST_0_i_5_n_0\
    );
\m_axis_tvalid[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^arb_gnt_r_reg[0]_1\,
      I1 => \gen_tdest_router.busy_r\(0),
      I2 => \^arb_gnt_r_reg[3]_0\(2),
      I3 => \gen_tdest_router.busy_r\(3),
      O => \m_axis_tvalid[3]_INST_0_i_6_n_0\
    );
\port_priority_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(0),
      Q => port_priority_ns(6),
      R => SR(0)
    );
\port_priority_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(1),
      Q => port_priority_ns(7),
      R => SR(0)
    );
\port_priority_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(2),
      Q => port_priority_ns(0),
      S => SR(0)
    );
\port_priority_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(3),
      Q => port_priority_ns(1),
      R => SR(0)
    );
\port_priority_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(4),
      Q => port_priority_ns(2),
      R => SR(0)
    );
\port_priority_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(5),
      Q => port_priority_ns(3),
      S => SR(0)
    );
\port_priority_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(6),
      Q => port_priority_ns(4),
      S => SR(0)
    );
\port_priority_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => barrel_cntr,
      D => port_priority_ns(7),
      Q => port_priority_ns(5),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder is
  port (
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[3]_0\ : out STD_LOGIC;
    \m_axis_tready[3]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_3\ : in STD_LOGIC;
    \busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_tdest_routing.busy_r_reg[3]_4\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_5\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_6\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder : entity is "axis_switch_v1_1_29_axisc_arb_responder";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder is
  signal \busy_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \^busy_r_reg[3]_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0\ : STD_LOGIC;
  signal \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.busy_r[3]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timeout_done_ns : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_1 : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_12\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \busy_r[2]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_4\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__2\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[3]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[3]_i_1__0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[3]_i_1__1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[3]_i_1__2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[3]_i_2\ : label is "soft_lutpair108";
begin
  \busy_r_reg[3]_0\ <= \^busy_r_reg[3]_0\;
  \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ <= \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\;
  \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ <= \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\;
  \gen_tdest_router.busy_r\(3 downto 0) <= \^gen_tdest_router.busy_r\(3 downto 0);
arb_busy_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg,
      O => arb_busy_ns
    );
\arb_gnt_r[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axis_tready(0),
      I1 => \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      O => \m_axis_tready[3]\
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => \busy_r_reg[3]_1\(1),
      O => \busy_r[1]_i_1_n_0\
    );
\busy_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(2),
      I1 => \busy_r_reg[3]_1\(2),
      O => \busy_r[2]_i_1_n_0\
    );
\busy_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => areset,
      I2 => timeout_done_ns,
      O => \busy_r[3]_i_1_n_0\
    );
\busy_r[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(3),
      I1 => \busy_r_reg[3]_1\(3),
      O => \^busy_r_reg[3]_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[0]_1\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => \busy_r[3]_i_1_n_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_1_n_0\,
      Q => \^gen_tdest_router.busy_r\(1),
      R => \busy_r[3]_i_1_n_0\
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[2]_i_1_n_0\,
      Q => \^gen_tdest_router.busy_r\(2),
      R => \busy_r[3]_i_1_n_0\
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^busy_r_reg[3]_0\,
      Q => \^gen_tdest_router.busy_r\(3),
      R => \busy_r[3]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => \busy_r_reg[3]_1\(0),
      O => \busy_r_reg[0]_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\,
      I2 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I3 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I3 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I4 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I4 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222E0000"
    )
        port map (
      I0 => \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\,
      I4 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__2_n_0\,
      Q => \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      R => '0'
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(0)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(10)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(1)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(2)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      O => p_0_in(3)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      O => p_0_in(4)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => p_0_in(5)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\,
      O => p_0_in(6)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      O => p_0_in(7)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      O => p_0_in(8)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__2_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(9)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(10),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => m_axis_tvalid(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0\,
      O => timeout_done_ns
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(2),
      I1 => \^gen_tdest_router.busy_r\(1),
      I2 => \^gen_tdest_router.busy_r\(3),
      I3 => \^gen_tdest_router.busy_r\(0),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__2_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0\,
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__2_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__2_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => timeout_done_ns,
      Q => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      R => areset
    );
\gen_tdest_routing.busy_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[3]_3\,
      I2 => \busy_r_reg[3]_1\(3),
      O => \gen_tdest_routing.busy_r_reg[3]\(0)
    );
\gen_tdest_routing.busy_r[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[3]_4\,
      I2 => \busy_r_reg[3]_1\(2),
      O => \gen_tdest_routing.busy_r_reg[3]_0\(0)
    );
\gen_tdest_routing.busy_r[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[3]_5\,
      I2 => \busy_r_reg[3]_1\(1),
      O => \gen_tdest_routing.busy_r_reg[3]_1\(0)
    );
\gen_tdest_routing.busy_r[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r[3]_i_2_n_0\,
      I1 => \gen_tdest_routing.busy_r_reg[3]_6\,
      I2 => \busy_r_reg[3]_1\(0),
      O => \gen_tdest_routing.busy_r_reg[3]_2\(0)
    );
\gen_tdest_routing.busy_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => m_axis_tvalid(0),
      I1 => m_axis_tready(0),
      I2 => \^gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I3 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      O => \gen_tdest_routing.busy_r[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2 is
  port (
    arb_sel_r0 : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_busy_ns : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    \busy_r_reg[2]_0\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2 : entity is "axis_switch_v1_1_29_axisc_arb_responder";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2 is
  signal \busy_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \busy_r[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_2__2_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0\ : STD_LOGIC;
  signal \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timeout_done_ns : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_3__1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \busy_r[3]_i_2__2\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[2]_i_2\ : label is "soft_lutpair98";
begin
  \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ <= \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\;
  \gen_tdest_router.busy_r\(3 downto 0) <= \^gen_tdest_router.busy_r\(3 downto 0);
\arb_busy_r_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg,
      I3 => arb_busy_r_reg_0,
      O => arb_busy_ns
    );
\arb_gnt_r[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I3 => arb_busy_r,
      I4 => \arb_gnt_r_reg[1]\,
      O => arb_sel_r0
    );
\busy_r[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => \busy_r_reg[3]_0\(0),
      O => \busy_r[0]_i_1__1_n_0\
    );
\busy_r[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => \busy_r_reg[3]_0\(1),
      O => \busy_r[1]_i_1__1_n_0\
    );
\busy_r[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => areset,
      I2 => timeout_done_ns,
      O => \busy_r[3]_i_1__1_n_0\
    );
\busy_r[3]_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(3),
      I1 => \busy_r_reg[3]_0\(2),
      O => \busy_r[3]_i_2__2_n_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[0]_i_1__1_n_0\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => \busy_r[3]_i_1__1_n_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_1__1_n_0\,
      Q => \^gen_tdest_router.busy_r\(1),
      R => \busy_r[3]_i_1__1_n_0\
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[2]_0\,
      Q => \^gen_tdest_router.busy_r\(2),
      R => \busy_r[3]_i_1__1_n_0\
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[3]_i_2__2_n_0\,
      Q => \^gen_tdest_router.busy_r\(3),
      R => \busy_r[3]_i_1__1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000212"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I4 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A060A"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I4 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F0100"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      R => '0'
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(0)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(10)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(1)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(2)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      O => p_0_in(3)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      O => p_0_in(4)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => p_0_in(5)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\,
      O => p_0_in(6)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      O => p_0_in(7)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      O => p_0_in(8)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__1_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(9)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(10),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0\,
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0\,
      I5 => m_axis_tvalid(0),
      O => timeout_done_ns
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(3),
      I1 => \^gen_tdest_router.busy_r\(0),
      I2 => \^gen_tdest_router.busy_r\(2),
      I3 => \^gen_tdest_router.busy_r\(1),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__1_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0\,
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__1_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__1_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => timeout_done_ns,
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      R => areset
    );
\gen_tdest_routing.busy_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      O => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3 is
  port (
    arb_sel_r0 : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : out STD_LOGIC;
    \busy_r_reg[0]_0\ : out STD_LOGIC;
    \busy_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \busy_r_reg[2]_0\ : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    \busy_r_reg[2]_1\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3 : entity is "axis_switch_v1_1_29_axisc_arb_responder";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3 is
  signal \busy_r[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \^busy_r_reg[0]_0\ : STD_LOGIC;
  signal \^busy_r_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0\ : STD_LOGIC;
  signal \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timeout_done_ns : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[3]_i_3__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \busy_r[1]_i_1__2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \busy_r[3]_i_2__1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \gen_tdest_routing.busy_r[1]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axis_tvalid[1]_INST_0_i_2\ : label is "soft_lutpair93";
begin
  \busy_r_reg[0]_0\ <= \^busy_r_reg[0]_0\;
  \busy_r_reg[3]_0\(2 downto 0) <= \^busy_r_reg[3]_0\(2 downto 0);
  \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ <= \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\;
\arb_busy_r_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg,
      I3 => arb_busy_r_reg_0,
      O => arb_busy_ns
    );
\arb_gnt_r[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I3 => arb_busy_r,
      I4 => \arb_gnt_r_reg[1]\,
      O => arb_sel_r0
    );
\busy_r[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[3]_0\(0),
      I1 => \busy_r_reg[3]_1\(0),
      O => \^busy_r_reg[0]_0\
    );
\busy_r[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_tdest_router.busy_r\(1),
      I1 => \busy_r_reg[3]_1\(1),
      O => \busy_r[1]_i_1__2_n_0\
    );
\busy_r[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => areset,
      I2 => timeout_done_ns,
      O => \busy_r[3]_i_1__0_n_0\
    );
\busy_r[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^busy_r_reg[3]_0\(2),
      I1 => \busy_r_reg[3]_1\(3),
      O => \busy_r[3]_i_2__1_n_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^busy_r_reg[0]_0\,
      Q => \^busy_r_reg[3]_0\(0),
      R => \busy_r[3]_i_1__0_n_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_1__2_n_0\,
      Q => \gen_tdest_router.busy_r\(1),
      R => \busy_r[3]_i_1__0_n_0\
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r_reg[2]_1\,
      Q => \^busy_r_reg[3]_0\(1),
      R => \busy_r[3]_i_1__0_n_0\
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[3]_i_2__1_n_0\,
      Q => \^busy_r_reg[3]_0\(2),
      R => \busy_r[3]_i_1__0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000212"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I4 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000A060A"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      I4 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[0]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[1]\,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F0100"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg_n_0_[2]\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1__0_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      R => '0'
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(0)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(10)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(1)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(2)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      O => p_0_in(3)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      O => p_0_in(4)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => p_0_in(5)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\,
      O => p_0_in(6)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      O => p_0_in(7)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      O => p_0_in(8)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3__0_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(9)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(10),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0\,
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0\,
      I5 => m_axis_tvalid(0),
      O => timeout_done_ns
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^busy_r_reg[3]_0\(2),
      I1 => \^busy_r_reg[3]_0\(0),
      I2 => \^busy_r_reg[3]_0\(1),
      I3 => \gen_tdest_router.busy_r\(1),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2__0_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0\,
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3__0_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4__0_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => timeout_done_ns,
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      R => areset
    );
\gen_tdest_routing.busy_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      O => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\
    );
\m_axis_tvalid[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^busy_r_reg[3]_0\(1),
      I1 => \busy_r_reg[3]_1\(2),
      I2 => \busy_r_reg[3]_1\(1),
      I3 => \gen_tdest_router.busy_r\(1),
      O => \busy_r_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4 is
  port (
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : out STD_LOGIC;
    arb_sel_r0 : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[3]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    \busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4 : entity is "axis_switch_v1_1_29_axisc_arb_responder";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4 is
  signal \busy_r[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \busy_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \busy_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \busy_r[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \^busy_r_reg[3]_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0\ : STD_LOGIC;
  signal \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0\ : STD_LOGIC;
  signal \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ : STD_LOGIC;
  signal \^gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal timeout_done_ns : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \busy_r[0]_i_1__2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4\ : label is "soft_lutpair86";
begin
  \busy_r_reg[3]_0\ <= \^busy_r_reg[3]_0\;
  \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ <= \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\;
  \gen_tdest_router.busy_r\(3 downto 0) <= \^gen_tdest_router.busy_r\(3 downto 0);
\arb_busy_r_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => arb_busy_r,
      I2 => arb_busy_r_reg,
      O => arb_busy_ns
    );
\arb_gnt_r[3]_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAAAFFFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => m_axis_tready(0),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I3 => m_axis_tvalid(0),
      I4 => arb_busy_r,
      I5 => arb_busy_r_reg,
      O => arb_sel_r0
    );
\busy_r[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => \busy_r_reg[3]_1\(0),
      O => \busy_r[0]_i_1__2_n_0\
    );
\busy_r[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(1),
      I1 => \busy_r_reg[3]_1\(1),
      O => \busy_r[1]_i_1__0_n_0\
    );
\busy_r[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(2),
      I1 => \busy_r_reg[3]_1\(2),
      O => \busy_r[2]_i_1__0_n_0\
    );
\busy_r[3]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I1 => areset,
      I2 => timeout_done_ns,
      O => \busy_r[3]_i_1__2_n_0\
    );
\busy_r[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(3),
      I1 => \busy_r_reg[3]_1\(3),
      O => \^busy_r_reg[3]_0\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[0]_i_1__2_n_0\,
      Q => \^gen_tdest_router.busy_r\(0),
      R => \busy_r[3]_i_1__2_n_0\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[1]_i_1__0_n_0\,
      Q => \^gen_tdest_router.busy_r\(1),
      R => \busy_r[3]_i_1__2_n_0\
    );
\busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \busy_r[2]_i_1__0_n_0\,
      Q => \^gen_tdest_router.busy_r\(2),
      R => \busy_r[3]_i_1__2_n_0\
    );
\busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \^busy_r_reg[3]_0\,
      Q => \^gen_tdest_router.busy_r\(3),
      R => \busy_r[3]_i_1__2_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(0),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      I2 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I3 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(1),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(0),
      I3 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I4 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(2),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(0),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(1),
      I4 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(0),
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(1),
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(2),
      R => '0'
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(0),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(1),
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000222E"
    )
        port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt\(2),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r0_n_0\,
      I4 => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\,
      I5 => areset,
      O => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1_n_0\,
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      R => '0'
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(0)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(10)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(1)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      O => p_0_in(2)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      O => p_0_in(3)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      O => p_0_in(4)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => p_0_in(5)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\,
      O => p_0_in(6)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      O => p_0_in(7)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\,
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      O => p_0_in(8)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[10]_i_3_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      O => p_0_in(9)
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(10),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(4),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(5),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(6),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(7),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(8),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in(9),
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      R => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => m_axis_tvalid(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0\,
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(7),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(10),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(2),
      I5 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0\,
      O => timeout_done_ns
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^gen_tdest_router.busy_r\(0),
      I1 => \^gen_tdest_router.busy_r\(3),
      I2 => \^gen_tdest_router.busy_r\(2),
      I3 => \^gen_tdest_router.busy_r\(1),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_2_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(6),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(5),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(3),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(8),
      I4 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0\,
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_3_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(0),
      I1 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(1),
      I2 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(9),
      I3 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg\(4),
      O => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_4_n_0\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => timeout_done_ns,
      Q => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      R => areset
    );
\gen_tdest_routing.busy_r[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      I1 => m_axis_tready(0),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_n_0\,
      I3 => m_axis_tvalid(0),
      O => \^gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter is
  port (
    areset : out STD_LOGIC;
    arb_busy_r : out STD_LOGIC;
    arb_busy_r_0 : out STD_LOGIC;
    arb_busy_r_1 : out STD_LOGIC;
    arb_busy_r_2 : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    areset_reg_0 : out STD_LOGIC;
    \arb_gnt_r_reg[0]\ : out STD_LOGIC;
    \arb_gnt_r_reg[3]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    areset_reg_1 : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_sel_i : out STD_LOGIC_VECTOR ( 7 downto 0 );
    areset_reg_2 : out STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ : out STD_LOGIC;
    areset_reg_3 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_gnt_r_reg[2]\ : out STD_LOGIC;
    \arb_gnt_r_reg[2]_0\ : out STD_LOGIC;
    m_axis_tready_3_sp_1 : out STD_LOGIC;
    m_axis_tready_1_sp_1 : out STD_LOGIC;
    m_axis_tready_2_sp_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_busy_ns : in STD_LOGIC;
    arb_busy_ns_3 : in STD_LOGIC;
    arb_busy_ns_4 : in STD_LOGIC;
    arb_busy_ns_5 : in STD_LOGIC;
    \arb_gnt_r_reg[2]_1\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_2\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_3\ : in STD_LOGIC;
    \arb_gnt_r_reg[2]_4\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_sel_r_reg[0]\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : in STD_LOGIC;
    \arb_sel_r_reg[0]_0\ : in STD_LOGIC;
    \m_axis_tvalid[3]\ : in STD_LOGIC;
    \m_axis_tvalid[3]_0\ : in STD_LOGIC;
    \m_axis_tvalid[3]_1\ : in STD_LOGIC;
    \m_axis_tvalid[3]_2\ : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_sel_r0 : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__0_1\ : in STD_LOGIC;
    m_axis_tvalid_1_sp_1 : in STD_LOGIC;
    \m_axis_tvalid[1]_0\ : in STD_LOGIC;
    \m_axis_tvalid[1]_1\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_6\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_sel_r0_7 : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_2__1\ : in STD_LOGIC;
    m_axis_tvalid_2_sp_1 : in STD_LOGIC;
    \arb_gnt_r[3]_i_4__1_1\ : in STD_LOGIC;
    \m_axis_tvalid[2]_0\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_8\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_sel_r0_9 : in STD_LOGIC;
    m_axis_tvalid_0_sp_1 : in STD_LOGIC;
    \m_axis_tvalid[0]_0\ : in STD_LOGIC;
    \m_axis_tvalid[0]_1\ : in STD_LOGIC;
    \gen_tdest_router.busy_r_10\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arb_gnt_r[3]_i_3__2\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_3__2_0\ : in STD_LOGIC;
    \arb_gnt_r[3]_i_3__2_1\ : in STD_LOGIC;
    m_axis_tdata_24_sp_1 : in STD_LOGIC;
    \m_axis_tdata[24]_0\ : in STD_LOGIC;
    \m_axis_tdata[24]_1\ : in STD_LOGIC;
    \m_axis_tdata[24]_2\ : in STD_LOGIC;
    m_axis_tdata_25_sp_1 : in STD_LOGIC;
    \m_axis_tdata[25]_0\ : in STD_LOGIC;
    \m_axis_tdata[25]_1\ : in STD_LOGIC;
    \m_axis_tdata[25]_2\ : in STD_LOGIC;
    m_axis_tdata_26_sp_1 : in STD_LOGIC;
    \m_axis_tdata[26]_0\ : in STD_LOGIC;
    \m_axis_tdata[26]_1\ : in STD_LOGIC;
    \m_axis_tdata[26]_2\ : in STD_LOGIC;
    m_axis_tdata_27_sp_1 : in STD_LOGIC;
    \m_axis_tdata[27]_0\ : in STD_LOGIC;
    \m_axis_tdata[27]_1\ : in STD_LOGIC;
    \m_axis_tdata[27]_2\ : in STD_LOGIC;
    m_axis_tdata_28_sp_1 : in STD_LOGIC;
    \m_axis_tdata[28]_0\ : in STD_LOGIC;
    \m_axis_tdata[28]_1\ : in STD_LOGIC;
    \m_axis_tdata[28]_2\ : in STD_LOGIC;
    m_axis_tdata_29_sp_1 : in STD_LOGIC;
    \m_axis_tdata[29]_0\ : in STD_LOGIC;
    \m_axis_tdata[29]_1\ : in STD_LOGIC;
    \m_axis_tdata[29]_2\ : in STD_LOGIC;
    m_axis_tdata_30_sp_1 : in STD_LOGIC;
    \m_axis_tdata[30]_0\ : in STD_LOGIC;
    \m_axis_tdata[30]_1\ : in STD_LOGIC;
    \m_axis_tdata[30]_2\ : in STD_LOGIC;
    m_axis_tdata_31_sp_1 : in STD_LOGIC;
    \m_axis_tdata[31]_0\ : in STD_LOGIC;
    \m_axis_tdata[31]_1\ : in STD_LOGIC;
    \m_axis_tdata[31]_2\ : in STD_LOGIC;
    m_axis_tlast_3_sp_1 : in STD_LOGIC;
    \m_axis_tlast[3]_0\ : in STD_LOGIC;
    \m_axis_tlast[3]_1\ : in STD_LOGIC;
    \m_axis_tlast[3]_2\ : in STD_LOGIC;
    m_axis_tid_24_sp_1 : in STD_LOGIC;
    \m_axis_tid[24]_0\ : in STD_LOGIC;
    \m_axis_tid[24]_1\ : in STD_LOGIC;
    \m_axis_tid[24]_2\ : in STD_LOGIC;
    m_axis_tid_25_sp_1 : in STD_LOGIC;
    \m_axis_tid[25]_0\ : in STD_LOGIC;
    \m_axis_tid[25]_1\ : in STD_LOGIC;
    \m_axis_tid[25]_2\ : in STD_LOGIC;
    m_axis_tid_26_sp_1 : in STD_LOGIC;
    \m_axis_tid[26]_0\ : in STD_LOGIC;
    \m_axis_tid[26]_1\ : in STD_LOGIC;
    \m_axis_tid[26]_2\ : in STD_LOGIC;
    m_axis_tid_27_sp_1 : in STD_LOGIC;
    \m_axis_tid[27]_0\ : in STD_LOGIC;
    \m_axis_tid[27]_1\ : in STD_LOGIC;
    \m_axis_tid[27]_2\ : in STD_LOGIC;
    m_axis_tid_28_sp_1 : in STD_LOGIC;
    \m_axis_tid[28]_0\ : in STD_LOGIC;
    \m_axis_tid[28]_1\ : in STD_LOGIC;
    \m_axis_tid[28]_2\ : in STD_LOGIC;
    m_axis_tid_29_sp_1 : in STD_LOGIC;
    \m_axis_tid[29]_0\ : in STD_LOGIC;
    \m_axis_tid[29]_1\ : in STD_LOGIC;
    \m_axis_tid[29]_2\ : in STD_LOGIC;
    m_axis_tid_30_sp_1 : in STD_LOGIC;
    \m_axis_tid[30]_0\ : in STD_LOGIC;
    \m_axis_tid[30]_1\ : in STD_LOGIC;
    \m_axis_tid[30]_2\ : in STD_LOGIC;
    m_axis_tid_31_sp_1 : in STD_LOGIC;
    \m_axis_tid[31]_0\ : in STD_LOGIC;
    \m_axis_tid[31]_1\ : in STD_LOGIC;
    \m_axis_tid[31]_2\ : in STD_LOGIC;
    m_axis_tdest_24_sp_1 : in STD_LOGIC;
    \m_axis_tdest[24]_0\ : in STD_LOGIC;
    \m_axis_tdest[24]_1\ : in STD_LOGIC;
    \m_axis_tdest[24]_2\ : in STD_LOGIC;
    m_axis_tdest_25_sp_1 : in STD_LOGIC;
    \m_axis_tdest[25]_0\ : in STD_LOGIC;
    \m_axis_tdest[25]_1\ : in STD_LOGIC;
    \m_axis_tdest[25]_2\ : in STD_LOGIC;
    m_axis_tdest_26_sp_1 : in STD_LOGIC;
    \m_axis_tdest[26]_0\ : in STD_LOGIC;
    \m_axis_tdest[26]_1\ : in STD_LOGIC;
    \m_axis_tdest[26]_2\ : in STD_LOGIC;
    m_axis_tdest_27_sp_1 : in STD_LOGIC;
    \m_axis_tdest[27]_0\ : in STD_LOGIC;
    \m_axis_tdest[27]_1\ : in STD_LOGIC;
    \m_axis_tdest[27]_2\ : in STD_LOGIC;
    m_axis_tdest_28_sp_1 : in STD_LOGIC;
    \m_axis_tdest[28]_0\ : in STD_LOGIC;
    \m_axis_tdest[28]_1\ : in STD_LOGIC;
    \m_axis_tdest[28]_2\ : in STD_LOGIC;
    m_axis_tdest_29_sp_1 : in STD_LOGIC;
    \m_axis_tdest[29]_0\ : in STD_LOGIC;
    \m_axis_tdest[29]_1\ : in STD_LOGIC;
    \m_axis_tdest[29]_2\ : in STD_LOGIC;
    m_axis_tdest_30_sp_1 : in STD_LOGIC;
    \m_axis_tdest[30]_0\ : in STD_LOGIC;
    \m_axis_tdest[30]_1\ : in STD_LOGIC;
    \m_axis_tdest[30]_2\ : in STD_LOGIC;
    m_axis_tdest_31_sp_1 : in STD_LOGIC;
    \m_axis_tdest[31]_0\ : in STD_LOGIC;
    \m_axis_tdest[31]_1\ : in STD_LOGIC;
    \m_axis_tdest[31]_2\ : in STD_LOGIC;
    m_axis_tuser_3_sp_1 : in STD_LOGIC;
    \m_axis_tuser[3]_0\ : in STD_LOGIC;
    \m_axis_tuser[3]_1\ : in STD_LOGIC;
    \m_axis_tuser[3]_2\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \arb_gnt_r_reg[2]_5\ : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter : entity is "axis_switch_v1_1_29_axis_switch_arbiter";
end axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter is
  signal \^areset\ : STD_LOGIC;
  signal areset_i_1_n_0 : STD_LOGIC;
  signal m_axis_tdata_24_sn_1 : STD_LOGIC;
  signal m_axis_tdata_25_sn_1 : STD_LOGIC;
  signal m_axis_tdata_26_sn_1 : STD_LOGIC;
  signal m_axis_tdata_27_sn_1 : STD_LOGIC;
  signal m_axis_tdata_28_sn_1 : STD_LOGIC;
  signal m_axis_tdata_29_sn_1 : STD_LOGIC;
  signal m_axis_tdata_30_sn_1 : STD_LOGIC;
  signal m_axis_tdata_31_sn_1 : STD_LOGIC;
  signal m_axis_tdest_24_sn_1 : STD_LOGIC;
  signal m_axis_tdest_25_sn_1 : STD_LOGIC;
  signal m_axis_tdest_26_sn_1 : STD_LOGIC;
  signal m_axis_tdest_27_sn_1 : STD_LOGIC;
  signal m_axis_tdest_28_sn_1 : STD_LOGIC;
  signal m_axis_tdest_29_sn_1 : STD_LOGIC;
  signal m_axis_tdest_30_sn_1 : STD_LOGIC;
  signal m_axis_tdest_31_sn_1 : STD_LOGIC;
  signal m_axis_tid_24_sn_1 : STD_LOGIC;
  signal m_axis_tid_25_sn_1 : STD_LOGIC;
  signal m_axis_tid_26_sn_1 : STD_LOGIC;
  signal m_axis_tid_27_sn_1 : STD_LOGIC;
  signal m_axis_tid_28_sn_1 : STD_LOGIC;
  signal m_axis_tid_29_sn_1 : STD_LOGIC;
  signal m_axis_tid_30_sn_1 : STD_LOGIC;
  signal m_axis_tid_31_sn_1 : STD_LOGIC;
  signal m_axis_tlast_3_sn_1 : STD_LOGIC;
  signal m_axis_tready_1_sn_1 : STD_LOGIC;
  signal m_axis_tready_2_sn_1 : STD_LOGIC;
  signal m_axis_tready_3_sn_1 : STD_LOGIC;
  signal m_axis_tuser_3_sn_1 : STD_LOGIC;
  signal m_axis_tvalid_0_sn_1 : STD_LOGIC;
  signal m_axis_tvalid_1_sn_1 : STD_LOGIC;
  signal m_axis_tvalid_2_sn_1 : STD_LOGIC;
begin
  areset <= \^areset\;
  m_axis_tdata_24_sn_1 <= m_axis_tdata_24_sp_1;
  m_axis_tdata_25_sn_1 <= m_axis_tdata_25_sp_1;
  m_axis_tdata_26_sn_1 <= m_axis_tdata_26_sp_1;
  m_axis_tdata_27_sn_1 <= m_axis_tdata_27_sp_1;
  m_axis_tdata_28_sn_1 <= m_axis_tdata_28_sp_1;
  m_axis_tdata_29_sn_1 <= m_axis_tdata_29_sp_1;
  m_axis_tdata_30_sn_1 <= m_axis_tdata_30_sp_1;
  m_axis_tdata_31_sn_1 <= m_axis_tdata_31_sp_1;
  m_axis_tdest_24_sn_1 <= m_axis_tdest_24_sp_1;
  m_axis_tdest_25_sn_1 <= m_axis_tdest_25_sp_1;
  m_axis_tdest_26_sn_1 <= m_axis_tdest_26_sp_1;
  m_axis_tdest_27_sn_1 <= m_axis_tdest_27_sp_1;
  m_axis_tdest_28_sn_1 <= m_axis_tdest_28_sp_1;
  m_axis_tdest_29_sn_1 <= m_axis_tdest_29_sp_1;
  m_axis_tdest_30_sn_1 <= m_axis_tdest_30_sp_1;
  m_axis_tdest_31_sn_1 <= m_axis_tdest_31_sp_1;
  m_axis_tid_24_sn_1 <= m_axis_tid_24_sp_1;
  m_axis_tid_25_sn_1 <= m_axis_tid_25_sp_1;
  m_axis_tid_26_sn_1 <= m_axis_tid_26_sp_1;
  m_axis_tid_27_sn_1 <= m_axis_tid_27_sp_1;
  m_axis_tid_28_sn_1 <= m_axis_tid_28_sp_1;
  m_axis_tid_29_sn_1 <= m_axis_tid_29_sp_1;
  m_axis_tid_30_sn_1 <= m_axis_tid_30_sp_1;
  m_axis_tid_31_sn_1 <= m_axis_tid_31_sp_1;
  m_axis_tlast_3_sn_1 <= m_axis_tlast_3_sp_1;
  m_axis_tready_1_sp_1 <= m_axis_tready_1_sn_1;
  m_axis_tready_2_sp_1 <= m_axis_tready_2_sn_1;
  m_axis_tready_3_sp_1 <= m_axis_tready_3_sn_1;
  m_axis_tuser_3_sn_1 <= m_axis_tuser_3_sp_1;
  m_axis_tvalid_0_sn_1 <= m_axis_tvalid_0_sp_1;
  m_axis_tvalid_1_sn_1 <= m_axis_tvalid_1_sp_1;
  m_axis_tvalid_2_sn_1 <= m_axis_tvalid_2_sp_1;
areset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => areset_i_1_n_0
    );
areset_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => areset_i_1_n_0,
      Q => \^areset\,
      R => '0'
    );
\gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_arb_rr
     port map (
      SR(0) => \^areset\,
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      \arb_gnt_r[3]_i_3__2_0\ => \arb_gnt_r[3]_i_3__2\,
      \arb_gnt_r[3]_i_3__2_1\ => \arb_gnt_r[3]_i_3__2_0\,
      \arb_gnt_r[3]_i_3__2_2\ => \arb_gnt_r[3]_i_3__2_1\,
      \arb_gnt_r_reg[3]_0\(3 downto 0) => \arb_gnt_r_reg[3]\(3 downto 0),
      arb_sel_r0_9 => arb_sel_r0_9,
      \arb_sel_r_reg[0]_0\ => arb_sel_i(0),
      \arb_sel_r_reg[1]_0\ => arb_sel_i(1),
      areset_reg => areset_reg_3,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      \gen_tdest_router.busy_r_10\(3 downto 0) => \gen_tdest_router.busy_r_10\(3 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      \m_axis_tdata[0]_0\ => \m_axis_tdata[24]_0\,
      \m_axis_tdata[0]_1\ => \m_axis_tdata[24]_1\,
      \m_axis_tdata[0]_2\ => \m_axis_tdata[24]_2\,
      \m_axis_tdata[1]_0\ => \m_axis_tdata[25]_0\,
      \m_axis_tdata[1]_1\ => \m_axis_tdata[25]_1\,
      \m_axis_tdata[1]_2\ => \m_axis_tdata[25]_2\,
      \m_axis_tdata[2]_0\ => \m_axis_tdata[26]_0\,
      \m_axis_tdata[2]_1\ => \m_axis_tdata[26]_1\,
      \m_axis_tdata[2]_2\ => \m_axis_tdata[26]_2\,
      \m_axis_tdata[3]_0\ => \m_axis_tdata[27]_0\,
      \m_axis_tdata[3]_1\ => \m_axis_tdata[27]_1\,
      \m_axis_tdata[3]_2\ => \m_axis_tdata[27]_2\,
      \m_axis_tdata[4]_0\ => \m_axis_tdata[28]_0\,
      \m_axis_tdata[4]_1\ => \m_axis_tdata[28]_1\,
      \m_axis_tdata[4]_2\ => \m_axis_tdata[28]_2\,
      \m_axis_tdata[5]_0\ => \m_axis_tdata[29]_0\,
      \m_axis_tdata[5]_1\ => \m_axis_tdata[29]_1\,
      \m_axis_tdata[5]_2\ => \m_axis_tdata[29]_2\,
      \m_axis_tdata[6]_0\ => \m_axis_tdata[30]_0\,
      \m_axis_tdata[6]_1\ => \m_axis_tdata[30]_1\,
      \m_axis_tdata[6]_2\ => \m_axis_tdata[30]_2\,
      \m_axis_tdata[7]_0\ => \m_axis_tdata[31]_0\,
      \m_axis_tdata[7]_1\ => \m_axis_tdata[31]_1\,
      \m_axis_tdata[7]_2\ => \m_axis_tdata[31]_2\,
      m_axis_tdata_0_sp_1 => m_axis_tdata_24_sn_1,
      m_axis_tdata_1_sp_1 => m_axis_tdata_25_sn_1,
      m_axis_tdata_2_sp_1 => m_axis_tdata_26_sn_1,
      m_axis_tdata_3_sp_1 => m_axis_tdata_27_sn_1,
      m_axis_tdata_4_sp_1 => m_axis_tdata_28_sn_1,
      m_axis_tdata_5_sp_1 => m_axis_tdata_29_sn_1,
      m_axis_tdata_6_sp_1 => m_axis_tdata_30_sn_1,
      m_axis_tdata_7_sp_1 => m_axis_tdata_31_sn_1,
      m_axis_tdest(7 downto 0) => m_axis_tdest(7 downto 0),
      \m_axis_tdest[0]_0\ => \m_axis_tdest[24]_0\,
      \m_axis_tdest[0]_1\ => \m_axis_tdest[24]_1\,
      \m_axis_tdest[0]_2\ => \m_axis_tdest[24]_2\,
      \m_axis_tdest[1]_0\ => \m_axis_tdest[25]_0\,
      \m_axis_tdest[1]_1\ => \m_axis_tdest[25]_1\,
      \m_axis_tdest[1]_2\ => \m_axis_tdest[25]_2\,
      \m_axis_tdest[2]_0\ => \m_axis_tdest[26]_0\,
      \m_axis_tdest[2]_1\ => \m_axis_tdest[26]_1\,
      \m_axis_tdest[2]_2\ => \m_axis_tdest[26]_2\,
      \m_axis_tdest[3]_0\ => \m_axis_tdest[27]_0\,
      \m_axis_tdest[3]_1\ => \m_axis_tdest[27]_1\,
      \m_axis_tdest[3]_2\ => \m_axis_tdest[27]_2\,
      \m_axis_tdest[4]_0\ => \m_axis_tdest[28]_0\,
      \m_axis_tdest[4]_1\ => \m_axis_tdest[28]_1\,
      \m_axis_tdest[4]_2\ => \m_axis_tdest[28]_2\,
      \m_axis_tdest[5]_0\ => \m_axis_tdest[29]_0\,
      \m_axis_tdest[5]_1\ => \m_axis_tdest[29]_1\,
      \m_axis_tdest[5]_2\ => \m_axis_tdest[29]_2\,
      \m_axis_tdest[6]_0\ => \m_axis_tdest[30]_0\,
      \m_axis_tdest[6]_1\ => \m_axis_tdest[30]_1\,
      \m_axis_tdest[6]_2\ => \m_axis_tdest[30]_2\,
      \m_axis_tdest[7]_0\ => \m_axis_tdest[31]_0\,
      \m_axis_tdest[7]_1\ => \m_axis_tdest[31]_1\,
      \m_axis_tdest[7]_2\ => \m_axis_tdest[31]_2\,
      m_axis_tdest_0_sp_1 => m_axis_tdest_24_sn_1,
      m_axis_tdest_1_sp_1 => m_axis_tdest_25_sn_1,
      m_axis_tdest_2_sp_1 => m_axis_tdest_26_sn_1,
      m_axis_tdest_3_sp_1 => m_axis_tdest_27_sn_1,
      m_axis_tdest_4_sp_1 => m_axis_tdest_28_sn_1,
      m_axis_tdest_5_sp_1 => m_axis_tdest_29_sn_1,
      m_axis_tdest_6_sp_1 => m_axis_tdest_30_sn_1,
      m_axis_tdest_7_sp_1 => m_axis_tdest_31_sn_1,
      m_axis_tid(7 downto 0) => m_axis_tid(7 downto 0),
      \m_axis_tid[0]_0\ => \m_axis_tid[24]_0\,
      \m_axis_tid[0]_1\ => \m_axis_tid[24]_1\,
      \m_axis_tid[0]_2\ => \m_axis_tid[24]_2\,
      \m_axis_tid[1]_0\ => \m_axis_tid[25]_0\,
      \m_axis_tid[1]_1\ => \m_axis_tid[25]_1\,
      \m_axis_tid[1]_2\ => \m_axis_tid[25]_2\,
      \m_axis_tid[2]_0\ => \m_axis_tid[26]_0\,
      \m_axis_tid[2]_1\ => \m_axis_tid[26]_1\,
      \m_axis_tid[2]_2\ => \m_axis_tid[26]_2\,
      \m_axis_tid[3]_0\ => \m_axis_tid[27]_0\,
      \m_axis_tid[3]_1\ => \m_axis_tid[27]_1\,
      \m_axis_tid[3]_2\ => \m_axis_tid[27]_2\,
      \m_axis_tid[4]_0\ => \m_axis_tid[28]_0\,
      \m_axis_tid[4]_1\ => \m_axis_tid[28]_1\,
      \m_axis_tid[4]_2\ => \m_axis_tid[28]_2\,
      \m_axis_tid[5]_0\ => \m_axis_tid[29]_0\,
      \m_axis_tid[5]_1\ => \m_axis_tid[29]_1\,
      \m_axis_tid[5]_2\ => \m_axis_tid[29]_2\,
      \m_axis_tid[6]_0\ => \m_axis_tid[30]_0\,
      \m_axis_tid[6]_1\ => \m_axis_tid[30]_1\,
      \m_axis_tid[6]_2\ => \m_axis_tid[30]_2\,
      \m_axis_tid[7]_0\ => \m_axis_tid[31]_0\,
      \m_axis_tid[7]_1\ => \m_axis_tid[31]_1\,
      \m_axis_tid[7]_2\ => \m_axis_tid[31]_2\,
      m_axis_tid_0_sp_1 => m_axis_tid_24_sn_1,
      m_axis_tid_1_sp_1 => m_axis_tid_25_sn_1,
      m_axis_tid_2_sp_1 => m_axis_tid_26_sn_1,
      m_axis_tid_3_sp_1 => m_axis_tid_27_sn_1,
      m_axis_tid_4_sp_1 => m_axis_tid_28_sn_1,
      m_axis_tid_5_sp_1 => m_axis_tid_29_sn_1,
      m_axis_tid_6_sp_1 => m_axis_tid_30_sn_1,
      m_axis_tid_7_sp_1 => m_axis_tid_31_sn_1,
      m_axis_tlast(0) => m_axis_tlast(0),
      \m_axis_tlast[0]_0\ => \m_axis_tlast[3]_0\,
      \m_axis_tlast[0]_1\ => \m_axis_tlast[3]_1\,
      \m_axis_tlast[0]_2\ => \m_axis_tlast[3]_2\,
      m_axis_tlast_0_sp_1 => m_axis_tlast_3_sn_1,
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tuser(0) => m_axis_tuser(0),
      \m_axis_tuser[0]_0\ => \m_axis_tuser[3]_0\,
      \m_axis_tuser[0]_1\ => \m_axis_tuser[3]_1\,
      \m_axis_tuser[0]_2\ => \m_axis_tuser[3]_2\,
      m_axis_tuser_0_sp_1 => m_axis_tuser_3_sn_1,
      m_axis_tvalid(0) => m_axis_tvalid(0),
      \m_axis_tvalid[0]_0\ => \m_axis_tvalid[0]_0\,
      \m_axis_tvalid[0]_1\ => \m_axis_tvalid[0]_1\,
      m_axis_tvalid_0_sp_1 => m_axis_tvalid_0_sn_1
    );
\gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_arb_rr_5
     port map (
      SR(0) => \^areset\,
      aclk => aclk,
      arb_busy_ns_3 => arb_busy_ns_3,
      arb_busy_r_0 => arb_busy_r_0,
      \arb_gnt_r[3]_i_4__0_0\ => \arb_gnt_r[3]_i_4__0\,
      \arb_gnt_r[3]_i_4__0_1\ => \arb_gnt_r[3]_i_4__0_0\,
      \arb_gnt_r[3]_i_4__0_2\ => \arb_gnt_r[3]_i_4__0_1\,
      \arb_gnt_r_reg[2]_0\(2 downto 0) => \arb_gnt_r_reg[3]\(6 downto 4),
      \arb_gnt_r_reg[2]_1\ => \arb_gnt_r_reg[2]_0\,
      \arb_gnt_r_reg[3]_0\ => \arb_gnt_r_reg[3]\(7),
      arb_sel_r0 => arb_sel_r0,
      \arb_sel_r_reg[0]_0\ => arb_sel_i(2),
      \arb_sel_r_reg[1]_0\ => arb_sel_i(3),
      areset_reg => areset_reg_1,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      \gen_tdest_router.busy_r_6\(2 downto 0) => \gen_tdest_router.busy_r_6\(2 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(15 downto 8),
      \m_axis_tdata[10]\ => m_axis_tdata_26_sn_1,
      \m_axis_tdata[10]_0\ => \m_axis_tdata[26]_2\,
      \m_axis_tdata[10]_1\ => \m_axis_tdata[26]_1\,
      \m_axis_tdata[10]_2\ => \m_axis_tdata[26]_0\,
      \m_axis_tdata[11]\ => m_axis_tdata_27_sn_1,
      \m_axis_tdata[11]_0\ => \m_axis_tdata[27]_2\,
      \m_axis_tdata[11]_1\ => \m_axis_tdata[27]_1\,
      \m_axis_tdata[11]_2\ => \m_axis_tdata[27]_0\,
      \m_axis_tdata[12]\ => m_axis_tdata_28_sn_1,
      \m_axis_tdata[12]_0\ => \m_axis_tdata[28]_2\,
      \m_axis_tdata[12]_1\ => \m_axis_tdata[28]_1\,
      \m_axis_tdata[12]_2\ => \m_axis_tdata[28]_0\,
      \m_axis_tdata[13]\ => m_axis_tdata_29_sn_1,
      \m_axis_tdata[13]_0\ => \m_axis_tdata[29]_2\,
      \m_axis_tdata[13]_1\ => \m_axis_tdata[29]_1\,
      \m_axis_tdata[13]_2\ => \m_axis_tdata[29]_0\,
      \m_axis_tdata[14]\ => m_axis_tdata_30_sn_1,
      \m_axis_tdata[14]_0\ => \m_axis_tdata[30]_2\,
      \m_axis_tdata[14]_1\ => \m_axis_tdata[30]_1\,
      \m_axis_tdata[14]_2\ => \m_axis_tdata[30]_0\,
      \m_axis_tdata[15]\ => m_axis_tdata_31_sn_1,
      \m_axis_tdata[15]_0\ => \m_axis_tdata[31]_2\,
      \m_axis_tdata[15]_1\ => \m_axis_tdata[31]_1\,
      \m_axis_tdata[15]_2\ => \m_axis_tdata[31]_0\,
      \m_axis_tdata[8]\ => m_axis_tdata_24_sn_1,
      \m_axis_tdata[8]_0\ => \m_axis_tdata[24]_0\,
      \m_axis_tdata[8]_1\ => \m_axis_tdata[24]_1\,
      \m_axis_tdata[8]_2\ => \m_axis_tdata[24]_2\,
      \m_axis_tdata[9]\ => m_axis_tdata_25_sn_1,
      \m_axis_tdata[9]_0\ => \m_axis_tdata[25]_0\,
      \m_axis_tdata[9]_1\ => \m_axis_tdata[25]_1\,
      \m_axis_tdata[9]_2\ => \m_axis_tdata[25]_2\,
      m_axis_tdest(7 downto 0) => m_axis_tdest(15 downto 8),
      \m_axis_tdest[10]\ => m_axis_tdest_26_sn_1,
      \m_axis_tdest[10]_0\ => \m_axis_tdest[26]_2\,
      \m_axis_tdest[10]_1\ => \m_axis_tdest[26]_1\,
      \m_axis_tdest[10]_2\ => \m_axis_tdest[26]_0\,
      \m_axis_tdest[11]\ => m_axis_tdest_27_sn_1,
      \m_axis_tdest[11]_0\ => \m_axis_tdest[27]_2\,
      \m_axis_tdest[11]_1\ => \m_axis_tdest[27]_1\,
      \m_axis_tdest[11]_2\ => \m_axis_tdest[27]_0\,
      \m_axis_tdest[12]\ => m_axis_tdest_28_sn_1,
      \m_axis_tdest[12]_0\ => \m_axis_tdest[28]_2\,
      \m_axis_tdest[12]_1\ => \m_axis_tdest[28]_1\,
      \m_axis_tdest[12]_2\ => \m_axis_tdest[28]_0\,
      \m_axis_tdest[13]\ => m_axis_tdest_29_sn_1,
      \m_axis_tdest[13]_0\ => \m_axis_tdest[29]_2\,
      \m_axis_tdest[13]_1\ => \m_axis_tdest[29]_1\,
      \m_axis_tdest[13]_2\ => \m_axis_tdest[29]_0\,
      \m_axis_tdest[14]\ => m_axis_tdest_30_sn_1,
      \m_axis_tdest[14]_0\ => \m_axis_tdest[30]_2\,
      \m_axis_tdest[14]_1\ => \m_axis_tdest[30]_1\,
      \m_axis_tdest[14]_2\ => \m_axis_tdest[30]_0\,
      \m_axis_tdest[15]\ => m_axis_tdest_31_sn_1,
      \m_axis_tdest[15]_0\ => \m_axis_tdest[31]_2\,
      \m_axis_tdest[15]_1\ => \m_axis_tdest[31]_1\,
      \m_axis_tdest[15]_2\ => \m_axis_tdest[31]_0\,
      \m_axis_tdest[8]\ => m_axis_tdest_24_sn_1,
      \m_axis_tdest[8]_0\ => \m_axis_tdest[24]_0\,
      \m_axis_tdest[8]_1\ => \m_axis_tdest[24]_1\,
      \m_axis_tdest[8]_2\ => \m_axis_tdest[24]_2\,
      \m_axis_tdest[9]\ => m_axis_tdest_25_sn_1,
      \m_axis_tdest[9]_0\ => \m_axis_tdest[25]_2\,
      \m_axis_tdest[9]_1\ => \m_axis_tdest[25]_1\,
      \m_axis_tdest[9]_2\ => \m_axis_tdest[25]_0\,
      m_axis_tid(7 downto 0) => m_axis_tid(15 downto 8),
      \m_axis_tid[10]\ => m_axis_tid_26_sn_1,
      \m_axis_tid[10]_0\ => \m_axis_tid[26]_0\,
      \m_axis_tid[10]_1\ => \m_axis_tid[26]_1\,
      \m_axis_tid[10]_2\ => \m_axis_tid[26]_2\,
      \m_axis_tid[11]\ => m_axis_tid_27_sn_1,
      \m_axis_tid[11]_0\ => \m_axis_tid[27]_2\,
      \m_axis_tid[11]_1\ => \m_axis_tid[27]_1\,
      \m_axis_tid[11]_2\ => \m_axis_tid[27]_0\,
      \m_axis_tid[12]\ => m_axis_tid_28_sn_1,
      \m_axis_tid[12]_0\ => \m_axis_tid[28]_0\,
      \m_axis_tid[12]_1\ => \m_axis_tid[28]_1\,
      \m_axis_tid[12]_2\ => \m_axis_tid[28]_2\,
      \m_axis_tid[13]\ => m_axis_tid_29_sn_1,
      \m_axis_tid[13]_0\ => \m_axis_tid[29]_0\,
      \m_axis_tid[13]_1\ => \m_axis_tid[29]_1\,
      \m_axis_tid[13]_2\ => \m_axis_tid[29]_2\,
      \m_axis_tid[14]\ => m_axis_tid_30_sn_1,
      \m_axis_tid[14]_0\ => \m_axis_tid[30]_0\,
      \m_axis_tid[14]_1\ => \m_axis_tid[30]_1\,
      \m_axis_tid[14]_2\ => \m_axis_tid[30]_2\,
      \m_axis_tid[15]\ => m_axis_tid_31_sn_1,
      \m_axis_tid[15]_0\ => \m_axis_tid[31]_0\,
      \m_axis_tid[15]_1\ => \m_axis_tid[31]_1\,
      \m_axis_tid[15]_2\ => \m_axis_tid[31]_2\,
      \m_axis_tid[8]\ => m_axis_tid_24_sn_1,
      \m_axis_tid[8]_0\ => \m_axis_tid[24]_0\,
      \m_axis_tid[8]_1\ => \m_axis_tid[24]_1\,
      \m_axis_tid[8]_2\ => \m_axis_tid[24]_2\,
      \m_axis_tid[9]\ => m_axis_tid_25_sn_1,
      \m_axis_tid[9]_0\ => \m_axis_tid[25]_2\,
      \m_axis_tid[9]_1\ => \m_axis_tid[25]_1\,
      \m_axis_tid[9]_2\ => \m_axis_tid[25]_0\,
      m_axis_tlast(0) => m_axis_tlast(1),
      \m_axis_tlast[1]\ => m_axis_tlast_3_sn_1,
      \m_axis_tlast[1]_0\ => \m_axis_tlast[3]_2\,
      \m_axis_tlast[1]_1\ => \m_axis_tlast[3]_1\,
      \m_axis_tlast[1]_2\ => \m_axis_tlast[3]_0\,
      m_axis_tready(0) => m_axis_tready(1),
      \m_axis_tready[1]\ => m_axis_tready_1_sn_1,
      m_axis_tuser(0) => m_axis_tuser(1),
      \m_axis_tuser[1]\ => m_axis_tuser_3_sn_1,
      \m_axis_tuser[1]_0\ => \m_axis_tuser[3]_2\,
      \m_axis_tuser[1]_1\ => \m_axis_tuser[3]_1\,
      \m_axis_tuser[1]_2\ => \m_axis_tuser[3]_0\,
      m_axis_tvalid(0) => m_axis_tvalid(1),
      \m_axis_tvalid[1]\ => m_axis_tvalid_1_sn_1,
      \m_axis_tvalid[1]_0\ => \m_axis_tvalid[1]_0\,
      \m_axis_tvalid[1]_1\ => \m_axis_tvalid[1]_1\
    );
\gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_arb_rr_6
     port map (
      SR(0) => \^areset\,
      aclk => aclk,
      arb_busy_ns_4 => arb_busy_ns_4,
      arb_busy_r_1 => arb_busy_r_1,
      \arb_gnt_r[3]_i_2__1_0\ => \arb_gnt_r[3]_i_2__1\,
      \arb_gnt_r[3]_i_4__1_0\ => \arb_gnt_r[3]_i_4__1\,
      \arb_gnt_r[3]_i_4__1_1\ => \arb_gnt_r[3]_i_4__1_0\,
      \arb_gnt_r[3]_i_4__1_2\ => \arb_gnt_r[3]_i_4__1_1\,
      \arb_gnt_r_reg[0]_0\ => \arb_gnt_r_reg[3]\(8),
      \arb_gnt_r_reg[1]_0\(0) => \arb_gnt_r_reg[3]\(9),
      \arb_gnt_r_reg[2]_0\ => \arb_gnt_r_reg[2]\,
      \arb_gnt_r_reg[3]_0\ => \arb_gnt_r_reg[3]\(10),
      arb_sel_r0_7 => arb_sel_r0_7,
      \arb_sel_r_reg[0]_0\ => arb_sel_i(4),
      \arb_sel_r_reg[1]_0\ => arb_sel_i(5),
      areset_reg => areset_reg_2,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      \gen_tdest_router.busy_r_8\(3 downto 0) => \gen_tdest_router.busy_r_8\(3 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(23 downto 16),
      \m_axis_tdata[16]\ => m_axis_tdata_24_sn_1,
      \m_axis_tdata[16]_0\ => \m_axis_tdata[24]_0\,
      \m_axis_tdata[16]_1\ => \m_axis_tdata[24]_1\,
      \m_axis_tdata[16]_2\ => \m_axis_tdata[24]_2\,
      \m_axis_tdata[17]\ => m_axis_tdata_25_sn_1,
      \m_axis_tdata[17]_0\ => \m_axis_tdata[25]_2\,
      \m_axis_tdata[17]_1\ => \m_axis_tdata[25]_1\,
      \m_axis_tdata[17]_2\ => \m_axis_tdata[25]_0\,
      \m_axis_tdata[18]\ => m_axis_tdata_26_sn_1,
      \m_axis_tdata[18]_0\ => \m_axis_tdata[26]_0\,
      \m_axis_tdata[18]_1\ => \m_axis_tdata[26]_1\,
      \m_axis_tdata[18]_2\ => \m_axis_tdata[26]_2\,
      \m_axis_tdata[19]\ => m_axis_tdata_27_sn_1,
      \m_axis_tdata[19]_0\ => \m_axis_tdata[27]_0\,
      \m_axis_tdata[19]_1\ => \m_axis_tdata[27]_1\,
      \m_axis_tdata[19]_2\ => \m_axis_tdata[27]_2\,
      \m_axis_tdata[20]\ => m_axis_tdata_28_sn_1,
      \m_axis_tdata[20]_0\ => \m_axis_tdata[28]_0\,
      \m_axis_tdata[20]_1\ => \m_axis_tdata[28]_1\,
      \m_axis_tdata[20]_2\ => \m_axis_tdata[28]_2\,
      \m_axis_tdata[21]\ => m_axis_tdata_29_sn_1,
      \m_axis_tdata[21]_0\ => \m_axis_tdata[29]_0\,
      \m_axis_tdata[21]_1\ => \m_axis_tdata[29]_1\,
      \m_axis_tdata[21]_2\ => \m_axis_tdata[29]_2\,
      \m_axis_tdata[22]\ => m_axis_tdata_30_sn_1,
      \m_axis_tdata[22]_0\ => \m_axis_tdata[30]_2\,
      \m_axis_tdata[22]_1\ => \m_axis_tdata[30]_1\,
      \m_axis_tdata[22]_2\ => \m_axis_tdata[30]_0\,
      \m_axis_tdata[23]\ => m_axis_tdata_31_sn_1,
      \m_axis_tdata[23]_0\ => \m_axis_tdata[31]_0\,
      \m_axis_tdata[23]_1\ => \m_axis_tdata[31]_1\,
      \m_axis_tdata[23]_2\ => \m_axis_tdata[31]_2\,
      m_axis_tdest(7 downto 0) => m_axis_tdest(23 downto 16),
      \m_axis_tdest[16]\ => m_axis_tdest_24_sn_1,
      \m_axis_tdest[16]_0\ => \m_axis_tdest[24]_2\,
      \m_axis_tdest[16]_1\ => \m_axis_tdest[24]_1\,
      \m_axis_tdest[16]_2\ => \m_axis_tdest[24]_0\,
      \m_axis_tdest[17]\ => m_axis_tdest_25_sn_1,
      \m_axis_tdest[17]_0\ => \m_axis_tdest[25]_0\,
      \m_axis_tdest[17]_1\ => \m_axis_tdest[25]_1\,
      \m_axis_tdest[17]_2\ => \m_axis_tdest[25]_2\,
      \m_axis_tdest[18]\ => m_axis_tdest_26_sn_1,
      \m_axis_tdest[18]_0\ => \m_axis_tdest[26]_0\,
      \m_axis_tdest[18]_1\ => \m_axis_tdest[26]_1\,
      \m_axis_tdest[18]_2\ => \m_axis_tdest[26]_2\,
      \m_axis_tdest[19]\ => m_axis_tdest_27_sn_1,
      \m_axis_tdest[19]_0\ => \m_axis_tdest[27]_0\,
      \m_axis_tdest[19]_1\ => \m_axis_tdest[27]_1\,
      \m_axis_tdest[19]_2\ => \m_axis_tdest[27]_2\,
      \m_axis_tdest[20]\ => m_axis_tdest_28_sn_1,
      \m_axis_tdest[20]_0\ => \m_axis_tdest[28]_0\,
      \m_axis_tdest[20]_1\ => \m_axis_tdest[28]_1\,
      \m_axis_tdest[20]_2\ => \m_axis_tdest[28]_2\,
      \m_axis_tdest[21]\ => m_axis_tdest_29_sn_1,
      \m_axis_tdest[21]_0\ => \m_axis_tdest[29]_2\,
      \m_axis_tdest[21]_1\ => \m_axis_tdest[29]_1\,
      \m_axis_tdest[21]_2\ => \m_axis_tdest[29]_0\,
      \m_axis_tdest[22]\ => m_axis_tdest_30_sn_1,
      \m_axis_tdest[22]_0\ => \m_axis_tdest[30]_0\,
      \m_axis_tdest[22]_1\ => \m_axis_tdest[30]_1\,
      \m_axis_tdest[22]_2\ => \m_axis_tdest[30]_2\,
      \m_axis_tdest[23]\ => m_axis_tdest_31_sn_1,
      \m_axis_tdest[23]_0\ => \m_axis_tdest[31]_2\,
      \m_axis_tdest[23]_1\ => \m_axis_tdest[31]_1\,
      \m_axis_tdest[23]_2\ => \m_axis_tdest[31]_0\,
      m_axis_tid(7 downto 0) => m_axis_tid(23 downto 16),
      \m_axis_tid[16]\ => m_axis_tid_24_sn_1,
      \m_axis_tid[16]_0\ => \m_axis_tid[24]_0\,
      \m_axis_tid[16]_1\ => \m_axis_tid[24]_1\,
      \m_axis_tid[16]_2\ => \m_axis_tid[24]_2\,
      \m_axis_tid[17]\ => m_axis_tid_25_sn_1,
      \m_axis_tid[17]_0\ => \m_axis_tid[25]_2\,
      \m_axis_tid[17]_1\ => \m_axis_tid[25]_1\,
      \m_axis_tid[17]_2\ => \m_axis_tid[25]_0\,
      \m_axis_tid[18]\ => m_axis_tid_26_sn_1,
      \m_axis_tid[18]_0\ => \m_axis_tid[26]_0\,
      \m_axis_tid[18]_1\ => \m_axis_tid[26]_1\,
      \m_axis_tid[18]_2\ => \m_axis_tid[26]_2\,
      \m_axis_tid[19]\ => m_axis_tid_27_sn_1,
      \m_axis_tid[19]_0\ => \m_axis_tid[27]_0\,
      \m_axis_tid[19]_1\ => \m_axis_tid[27]_1\,
      \m_axis_tid[19]_2\ => \m_axis_tid[27]_2\,
      \m_axis_tid[20]\ => m_axis_tid_28_sn_1,
      \m_axis_tid[20]_0\ => \m_axis_tid[28]_2\,
      \m_axis_tid[20]_1\ => \m_axis_tid[28]_1\,
      \m_axis_tid[20]_2\ => \m_axis_tid[28]_0\,
      \m_axis_tid[21]\ => m_axis_tid_29_sn_1,
      \m_axis_tid[21]_0\ => \m_axis_tid[29]_2\,
      \m_axis_tid[21]_1\ => \m_axis_tid[29]_1\,
      \m_axis_tid[21]_2\ => \m_axis_tid[29]_0\,
      \m_axis_tid[22]\ => m_axis_tid_30_sn_1,
      \m_axis_tid[22]_0\ => \m_axis_tid[30]_0\,
      \m_axis_tid[22]_1\ => \m_axis_tid[30]_1\,
      \m_axis_tid[22]_2\ => \m_axis_tid[30]_2\,
      \m_axis_tid[23]\ => m_axis_tid_31_sn_1,
      \m_axis_tid[23]_0\ => \m_axis_tid[31]_0\,
      \m_axis_tid[23]_1\ => \m_axis_tid[31]_1\,
      \m_axis_tid[23]_2\ => \m_axis_tid[31]_2\,
      m_axis_tlast(0) => m_axis_tlast(2),
      \m_axis_tlast[2]\ => m_axis_tlast_3_sn_1,
      \m_axis_tlast[2]_0\ => \m_axis_tlast[3]_2\,
      \m_axis_tlast[2]_1\ => \m_axis_tlast[3]_1\,
      \m_axis_tlast[2]_2\ => \m_axis_tlast[3]_0\,
      m_axis_tready(0) => m_axis_tready(2),
      \m_axis_tready[2]\ => m_axis_tready_2_sn_1,
      m_axis_tuser(0) => m_axis_tuser(2),
      \m_axis_tuser[2]\ => m_axis_tuser_3_sn_1,
      \m_axis_tuser[2]_0\ => \m_axis_tuser[3]_0\,
      \m_axis_tuser[2]_1\ => \m_axis_tuser[3]_1\,
      \m_axis_tuser[2]_2\ => \m_axis_tuser[3]_2\,
      m_axis_tvalid(0) => m_axis_tvalid(2),
      \m_axis_tvalid[2]\ => m_axis_tvalid_2_sn_1,
      \m_axis_tvalid[2]_0\ => \m_axis_tvalid[2]_0\
    );
\gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_arb_rr_7
     port map (
      SR(0) => \^areset\,
      aclk => aclk,
      arb_busy_ns_5 => arb_busy_ns_5,
      arb_busy_r_reg_0 => arb_busy_r_2,
      \arb_gnt_r_reg[0]_0\ => \arb_gnt_r_reg[0]\,
      \arb_gnt_r_reg[0]_1\ => \arb_gnt_r_reg[3]\(11),
      \arb_gnt_r_reg[2]_0\ => \arb_gnt_r_reg[2]_1\,
      \arb_gnt_r_reg[2]_1\ => \arb_gnt_r_reg[2]_2\,
      \arb_gnt_r_reg[2]_2\ => \arb_gnt_r_reg[2]_3\,
      \arb_gnt_r_reg[2]_3\ => \arb_gnt_r_reg[2]_4\,
      \arb_gnt_r_reg[2]_4\ => \arb_gnt_r_reg[2]_5\,
      \arb_gnt_r_reg[3]_0\(2 downto 0) => \arb_gnt_r_reg[3]\(14 downto 12),
      \arb_sel_r_reg[0]_0\ => arb_sel_i(6),
      \arb_sel_r_reg[0]_1\ => \arb_sel_r_reg[0]\,
      \arb_sel_r_reg[0]_2\ => \arb_sel_r_reg[0]_0\,
      \arb_sel_r_reg[1]_0\ => arb_sel_i(7),
      areset_reg => areset_reg_0,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \gen_AB_reg_slice.payload_b_reg[3]\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(31 downto 24),
      \m_axis_tdata[24]\ => m_axis_tdata_24_sn_1,
      \m_axis_tdata[24]_0\ => \m_axis_tdata[24]_2\,
      \m_axis_tdata[24]_1\ => \m_axis_tdata[24]_1\,
      \m_axis_tdata[24]_2\ => \m_axis_tdata[24]_0\,
      \m_axis_tdata[25]\ => m_axis_tdata_25_sn_1,
      \m_axis_tdata[25]_0\ => \m_axis_tdata[25]_2\,
      \m_axis_tdata[25]_1\ => \m_axis_tdata[25]_1\,
      \m_axis_tdata[25]_2\ => \m_axis_tdata[25]_0\,
      \m_axis_tdata[26]\ => m_axis_tdata_26_sn_1,
      \m_axis_tdata[26]_0\ => \m_axis_tdata[26]_2\,
      \m_axis_tdata[26]_1\ => \m_axis_tdata[26]_1\,
      \m_axis_tdata[26]_2\ => \m_axis_tdata[26]_0\,
      \m_axis_tdata[27]\ => m_axis_tdata_27_sn_1,
      \m_axis_tdata[27]_0\ => \m_axis_tdata[27]_2\,
      \m_axis_tdata[27]_1\ => \m_axis_tdata[27]_1\,
      \m_axis_tdata[27]_2\ => \m_axis_tdata[27]_0\,
      \m_axis_tdata[28]\ => m_axis_tdata_28_sn_1,
      \m_axis_tdata[28]_0\ => \m_axis_tdata[28]_2\,
      \m_axis_tdata[28]_1\ => \m_axis_tdata[28]_1\,
      \m_axis_tdata[28]_2\ => \m_axis_tdata[28]_0\,
      \m_axis_tdata[29]\ => m_axis_tdata_29_sn_1,
      \m_axis_tdata[29]_0\ => \m_axis_tdata[29]_2\,
      \m_axis_tdata[29]_1\ => \m_axis_tdata[29]_1\,
      \m_axis_tdata[29]_2\ => \m_axis_tdata[29]_0\,
      \m_axis_tdata[30]\ => m_axis_tdata_30_sn_1,
      \m_axis_tdata[30]_0\ => \m_axis_tdata[30]_2\,
      \m_axis_tdata[30]_1\ => \m_axis_tdata[30]_1\,
      \m_axis_tdata[30]_2\ => \m_axis_tdata[30]_0\,
      \m_axis_tdata[31]\ => m_axis_tdata_31_sn_1,
      \m_axis_tdata[31]_0\ => \m_axis_tdata[31]_2\,
      \m_axis_tdata[31]_1\ => \m_axis_tdata[31]_1\,
      \m_axis_tdata[31]_2\ => \m_axis_tdata[31]_0\,
      m_axis_tdest(7 downto 0) => m_axis_tdest(31 downto 24),
      \m_axis_tdest[24]\ => m_axis_tdest_24_sn_1,
      \m_axis_tdest[24]_0\ => \m_axis_tdest[24]_2\,
      \m_axis_tdest[24]_1\ => \m_axis_tdest[24]_1\,
      \m_axis_tdest[24]_2\ => \m_axis_tdest[24]_0\,
      \m_axis_tdest[25]\ => m_axis_tdest_25_sn_1,
      \m_axis_tdest[25]_0\ => \m_axis_tdest[25]_2\,
      \m_axis_tdest[25]_1\ => \m_axis_tdest[25]_1\,
      \m_axis_tdest[25]_2\ => \m_axis_tdest[25]_0\,
      \m_axis_tdest[26]\ => m_axis_tdest_26_sn_1,
      \m_axis_tdest[26]_0\ => \m_axis_tdest[26]_2\,
      \m_axis_tdest[26]_1\ => \m_axis_tdest[26]_1\,
      \m_axis_tdest[26]_2\ => \m_axis_tdest[26]_0\,
      \m_axis_tdest[27]\ => m_axis_tdest_27_sn_1,
      \m_axis_tdest[27]_0\ => \m_axis_tdest[27]_2\,
      \m_axis_tdest[27]_1\ => \m_axis_tdest[27]_1\,
      \m_axis_tdest[27]_2\ => \m_axis_tdest[27]_0\,
      \m_axis_tdest[28]\ => m_axis_tdest_28_sn_1,
      \m_axis_tdest[28]_0\ => \m_axis_tdest[28]_2\,
      \m_axis_tdest[28]_1\ => \m_axis_tdest[28]_1\,
      \m_axis_tdest[28]_2\ => \m_axis_tdest[28]_0\,
      \m_axis_tdest[29]\ => m_axis_tdest_29_sn_1,
      \m_axis_tdest[29]_0\ => \m_axis_tdest[29]_2\,
      \m_axis_tdest[29]_1\ => \m_axis_tdest[29]_1\,
      \m_axis_tdest[29]_2\ => \m_axis_tdest[29]_0\,
      \m_axis_tdest[30]\ => m_axis_tdest_30_sn_1,
      \m_axis_tdest[30]_0\ => \m_axis_tdest[30]_2\,
      \m_axis_tdest[30]_1\ => \m_axis_tdest[30]_1\,
      \m_axis_tdest[30]_2\ => \m_axis_tdest[30]_0\,
      \m_axis_tdest[31]\ => m_axis_tdest_31_sn_1,
      \m_axis_tdest[31]_0\ => \m_axis_tdest[31]_2\,
      \m_axis_tdest[31]_1\ => \m_axis_tdest[31]_1\,
      \m_axis_tdest[31]_2\ => \m_axis_tdest[31]_0\,
      m_axis_tid(7 downto 0) => m_axis_tid(31 downto 24),
      \m_axis_tid[24]\ => m_axis_tid_24_sn_1,
      \m_axis_tid[24]_0\ => \m_axis_tid[24]_0\,
      \m_axis_tid[24]_1\ => \m_axis_tid[24]_1\,
      \m_axis_tid[24]_2\ => \m_axis_tid[24]_2\,
      \m_axis_tid[25]\ => m_axis_tid_25_sn_1,
      \m_axis_tid[25]_0\ => \m_axis_tid[25]_0\,
      \m_axis_tid[25]_1\ => \m_axis_tid[25]_1\,
      \m_axis_tid[25]_2\ => \m_axis_tid[25]_2\,
      \m_axis_tid[26]\ => m_axis_tid_26_sn_1,
      \m_axis_tid[26]_0\ => \m_axis_tid[26]_0\,
      \m_axis_tid[26]_1\ => \m_axis_tid[26]_1\,
      \m_axis_tid[26]_2\ => \m_axis_tid[26]_2\,
      \m_axis_tid[27]\ => m_axis_tid_27_sn_1,
      \m_axis_tid[27]_0\ => \m_axis_tid[27]_2\,
      \m_axis_tid[27]_1\ => \m_axis_tid[27]_1\,
      \m_axis_tid[27]_2\ => \m_axis_tid[27]_0\,
      \m_axis_tid[28]\ => m_axis_tid_28_sn_1,
      \m_axis_tid[28]_0\ => \m_axis_tid[28]_2\,
      \m_axis_tid[28]_1\ => \m_axis_tid[28]_1\,
      \m_axis_tid[28]_2\ => \m_axis_tid[28]_0\,
      \m_axis_tid[29]\ => m_axis_tid_29_sn_1,
      \m_axis_tid[29]_0\ => \m_axis_tid[29]_2\,
      \m_axis_tid[29]_1\ => \m_axis_tid[29]_1\,
      \m_axis_tid[29]_2\ => \m_axis_tid[29]_0\,
      \m_axis_tid[30]\ => m_axis_tid_30_sn_1,
      \m_axis_tid[30]_0\ => \m_axis_tid[30]_2\,
      \m_axis_tid[30]_1\ => \m_axis_tid[30]_1\,
      \m_axis_tid[30]_2\ => \m_axis_tid[30]_0\,
      \m_axis_tid[31]\ => m_axis_tid_31_sn_1,
      \m_axis_tid[31]_0\ => \m_axis_tid[31]_2\,
      \m_axis_tid[31]_1\ => \m_axis_tid[31]_1\,
      \m_axis_tid[31]_2\ => \m_axis_tid[31]_0\,
      m_axis_tlast(0) => m_axis_tlast(3),
      \m_axis_tlast[3]\ => m_axis_tlast_3_sn_1,
      \m_axis_tlast[3]_0\ => \m_axis_tlast[3]_2\,
      \m_axis_tlast[3]_1\ => \m_axis_tlast[3]_1\,
      \m_axis_tlast[3]_2\ => \m_axis_tlast[3]_0\,
      m_axis_tready(0) => m_axis_tready(3),
      \m_axis_tready[3]\ => m_axis_tready_3_sn_1,
      m_axis_tuser(0) => m_axis_tuser(3),
      \m_axis_tuser[3]\ => m_axis_tuser_3_sn_1,
      \m_axis_tuser[3]_0\ => \m_axis_tuser[3]_0\,
      \m_axis_tuser[3]_1\ => \m_axis_tuser[3]_1\,
      \m_axis_tuser[3]_2\ => \m_axis_tuser[3]_2\,
      \m_axis_tvalid[3]\ => \m_axis_tvalid[3]\,
      \m_axis_tvalid[3]_0\ => \m_axis_tvalid[3]_0\,
      \m_axis_tvalid[3]_1\ => \m_axis_tvalid[3]_1\,
      \m_axis_tvalid[3]_2\ => \m_axis_tvalid[3]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_1\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[2]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[1]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg_0 : in STD_LOGIC;
    arb_busy_r_reg_1 : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_AB_reg_slice.state[1]_i_2\ : in STD_LOGIC;
    \gen_AB_reg_slice.state[1]_i_2_0\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[1]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]_1\ : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r[3]_i_3__0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder : entity is "axis_switch_v1_1_29_axisc_decoder";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder is
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^gen_tdest_routing.busy_r_reg[2]_0\ : STD_LOGIC;
  signal \^gen_tdest_routing.busy_r_reg[3]_1\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[2]_0\ <= \^gen_tdest_routing.busy_r_reg[2]_0\;
  \gen_tdest_routing.busy_r_reg[3]_1\ <= \^gen_tdest_routing.busy_r_reg[3]_1\;
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg_n_0_[1]\,
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_routing.busy_r_reg[1]_1\,
      O => \gen_tdest_routing.busy_ns\(1)
    );
\gen_tdest_routing.busy_r[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[2]_0\,
      I1 => arb_gnt_i(1),
      I2 => \gen_tdest_routing.busy_r_reg[2]_1\,
      O => \gen_tdest_routing.busy_ns\(2)
    );
\gen_tdest_routing.busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(1),
      Q => \gen_tdest_routing.busy_r_reg_n_0_[1]\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(2),
      Q => \^gen_tdest_routing.busy_r_reg[2]_0\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_r_reg[3]_2\(0),
      Q => \^gen_tdest_routing.busy_r_reg[3]_1\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0\: entity work.axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_12
     port map (
      D(25) => D(17),
      D(24 downto 17) => s_axis_tdest(7 downto 0),
      D(16 downto 0) => D(16 downto 0),
      aclk => aclk,
      areset => areset,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]\,
      \gen_AB_reg_slice.payload_b_reg[10]_0\ => \gen_AB_reg_slice.payload_b_reg[10]\,
      \gen_AB_reg_slice.payload_b_reg[11]_0\ => \gen_AB_reg_slice.payload_b_reg[11]\,
      \gen_AB_reg_slice.payload_b_reg[12]_0\ => \gen_AB_reg_slice.payload_b_reg[12]\,
      \gen_AB_reg_slice.payload_b_reg[13]_0\ => \gen_AB_reg_slice.payload_b_reg[13]\,
      \gen_AB_reg_slice.payload_b_reg[14]_0\ => \gen_AB_reg_slice.payload_b_reg[14]\,
      \gen_AB_reg_slice.payload_b_reg[15]_0\ => \gen_AB_reg_slice.payload_b_reg[15]\,
      \gen_AB_reg_slice.payload_b_reg[16]_0\ => \gen_AB_reg_slice.payload_b_reg[16]\,
      \gen_AB_reg_slice.payload_b_reg[17]_0\ => \gen_AB_reg_slice.payload_b_reg[17]\,
      \gen_AB_reg_slice.payload_b_reg[18]_0\ => \gen_AB_reg_slice.payload_b_reg[18]\,
      \gen_AB_reg_slice.payload_b_reg[19]_0\ => \gen_AB_reg_slice.payload_b_reg[19]\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]_0\,
      \gen_AB_reg_slice.payload_b_reg[20]_0\ => \gen_AB_reg_slice.payload_b_reg[20]\,
      \gen_AB_reg_slice.payload_b_reg[21]_0\ => \gen_AB_reg_slice.payload_b_reg[21]\,
      \gen_AB_reg_slice.payload_b_reg[22]_0\ => \gen_AB_reg_slice.payload_b_reg[22]\,
      \gen_AB_reg_slice.payload_b_reg[23]_0\ => \gen_AB_reg_slice.payload_b_reg[23]\,
      \gen_AB_reg_slice.payload_b_reg[24]_0\ => \gen_AB_reg_slice.payload_b_reg[24]\,
      \gen_AB_reg_slice.payload_b_reg[25]_0\ => \gen_AB_reg_slice.payload_b_reg[25]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]_0\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_AB_reg_slice.payload_b_reg[3]\,
      \gen_AB_reg_slice.payload_b_reg[4]_0\ => \gen_AB_reg_slice.payload_b_reg[4]\,
      \gen_AB_reg_slice.payload_b_reg[5]_0\ => \gen_AB_reg_slice.payload_b_reg[5]\,
      \gen_AB_reg_slice.payload_b_reg[6]_0\ => \gen_AB_reg_slice.payload_b_reg[6]\,
      \gen_AB_reg_slice.payload_b_reg[7]_0\ => \gen_AB_reg_slice.payload_b_reg[7]\,
      \gen_AB_reg_slice.payload_b_reg[8]_0\ => \gen_AB_reg_slice.payload_b_reg[8]\,
      \gen_AB_reg_slice.payload_b_reg[9]_0\ => \gen_AB_reg_slice.payload_b_reg[9]\,
      \gen_AB_reg_slice.state_reg[1]_0\ => \gen_AB_reg_slice.state_reg[1]\,
      \gen_AB_reg_slice.state_reg[1]_1\ => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1\: entity work.\axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_13\
     port map (
      aclk => aclk,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_busy_r_reg_0 => \^gen_tdest_routing.busy_r_reg[3]_1\,
      arb_busy_r_reg_1 => arb_busy_r_reg_0,
      arb_busy_r_reg_2 => arb_busy_r_reg_1,
      arb_busy_r_reg_3 => \gen_tdest_routing.busy_r_reg_n_0_[1]\,
      arb_busy_r_reg_4 => \^gen_tdest_routing.busy_r_reg[2]_0\,
      arb_gnt_i(2 downto 0) => arb_gnt_i(2 downto 0),
      \arb_gnt_r[3]_i_3__0\ => \arb_gnt_r[3]_i_3__0\,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[2]_0\ => \gen_AB_reg_slice.payload_a_reg[2]\,
      \gen_AB_reg_slice.payload_a_reg[3]_0\ => \gen_AB_reg_slice.payload_a_reg[3]\,
      \gen_AB_reg_slice.payload_a_reg[3]_1\ => \gen_AB_reg_slice.payload_a_reg[3]_0\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]\,
      \gen_AB_reg_slice.state[1]_i_2_0\ => \gen_AB_reg_slice.state[1]_i_2\,
      \gen_AB_reg_slice.state[1]_i_2_1\ => \gen_AB_reg_slice.state[1]_i_2_0\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_AB_reg_slice.state_reg[0]\,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_routing.busy_r_reg[1]\ => \gen_tdest_routing.busy_r_reg[1]_0\,
      \gen_tdest_routing.busy_r_reg[3]\ => \gen_tdest_routing.busy_r_reg[3]_0\,
      \gen_tdest_routing.decode_err_r0\ => \gen_tdest_routing.decode_err_r0\,
      m_axis_tready(2 downto 0) => m_axis_tready(2 downto 0),
      m_axis_tready_2_sp_1 => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_6\,
      s_axis_tdest(7 downto 0) => s_axis_tdest(7 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => \^s_decode_err\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0\ is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_AB_reg_slice.state_reg[0]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0\ : entity is "axis_switch_v1_1_29_axisc_decoder";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0\ is
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_tdest_routing.busy_r_reg[3]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[3]_0\ <= \^gen_tdest_routing.busy_r_reg[3]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      O => \gen_tdest_routing.busy_ns\(0)
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(0),
      Q => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_r_reg[3]_1\(0),
      Q => \^gen_tdest_routing.busy_r_reg[3]_0\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0\: entity work.axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_10
     port map (
      D(25 downto 0) => D(25 downto 0),
      aclk => aclk,
      areset => areset,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]\,
      \gen_AB_reg_slice.payload_b_reg[10]_0\ => \gen_AB_reg_slice.payload_b_reg[10]\,
      \gen_AB_reg_slice.payload_b_reg[11]_0\ => \gen_AB_reg_slice.payload_b_reg[11]\,
      \gen_AB_reg_slice.payload_b_reg[12]_0\ => \gen_AB_reg_slice.payload_b_reg[12]\,
      \gen_AB_reg_slice.payload_b_reg[13]_0\ => \gen_AB_reg_slice.payload_b_reg[13]\,
      \gen_AB_reg_slice.payload_b_reg[14]_0\ => \gen_AB_reg_slice.payload_b_reg[14]\,
      \gen_AB_reg_slice.payload_b_reg[15]_0\ => \gen_AB_reg_slice.payload_b_reg[15]\,
      \gen_AB_reg_slice.payload_b_reg[16]_0\ => \gen_AB_reg_slice.payload_b_reg[16]\,
      \gen_AB_reg_slice.payload_b_reg[17]_0\ => \gen_AB_reg_slice.payload_b_reg[17]\,
      \gen_AB_reg_slice.payload_b_reg[18]_0\ => \gen_AB_reg_slice.payload_b_reg[18]\,
      \gen_AB_reg_slice.payload_b_reg[19]_0\ => \gen_AB_reg_slice.payload_b_reg[19]\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]\,
      \gen_AB_reg_slice.payload_b_reg[20]_0\ => \gen_AB_reg_slice.payload_b_reg[20]\,
      \gen_AB_reg_slice.payload_b_reg[21]_0\ => \gen_AB_reg_slice.payload_b_reg[21]\,
      \gen_AB_reg_slice.payload_b_reg[22]_0\ => \gen_AB_reg_slice.payload_b_reg[22]\,
      \gen_AB_reg_slice.payload_b_reg[23]_0\ => \gen_AB_reg_slice.payload_b_reg[23]\,
      \gen_AB_reg_slice.payload_b_reg[24]_0\ => \gen_AB_reg_slice.payload_b_reg[24]\,
      \gen_AB_reg_slice.payload_b_reg[25]_0\ => \gen_AB_reg_slice.payload_b_reg[25]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_AB_reg_slice.payload_b_reg[3]\,
      \gen_AB_reg_slice.payload_b_reg[4]_0\ => \gen_AB_reg_slice.payload_b_reg[4]\,
      \gen_AB_reg_slice.payload_b_reg[5]_0\ => \gen_AB_reg_slice.payload_b_reg[5]\,
      \gen_AB_reg_slice.payload_b_reg[6]_0\ => \gen_AB_reg_slice.payload_b_reg[6]\,
      \gen_AB_reg_slice.payload_b_reg[7]_0\ => \gen_AB_reg_slice.payload_b_reg[7]\,
      \gen_AB_reg_slice.payload_b_reg[8]_0\ => \gen_AB_reg_slice.payload_b_reg[8]\,
      \gen_AB_reg_slice.payload_b_reg[9]_0\ => \gen_AB_reg_slice.payload_b_reg[9]\,
      \gen_AB_reg_slice.state_reg[1]_0\ => \gen_AB_reg_slice.state_reg[1]\,
      \gen_AB_reg_slice.state_reg[1]_1\ => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1\: entity work.\axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_11\
     port map (
      D(7 downto 0) => D(24 downto 17),
      aclk => aclk,
      arb_busy_r_i_2 => \^gen_tdest_routing.busy_r_reg[3]_0\,
      \arb_busy_r_i_2__2\ => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      arb_sel_i(3 downto 0) => arb_sel_i(3 downto 0),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => \gen_AB_reg_slice.payload_a_reg[0]\,
      \gen_AB_reg_slice.payload_a_reg[0]_1\ => \gen_AB_reg_slice.payload_a_reg[0]_0\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_AB_reg_slice.state_reg[0]\,
      \gen_AB_reg_slice.state_reg[0]_1\ => \gen_AB_reg_slice.state_reg[0]_0\,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_0\(0),
      \gen_tdest_routing.decode_err_r0\ => \gen_tdest_routing.decode_err_r0\,
      m_axis_tready(1 downto 0) => m_axis_tready(1 downto 0),
      m_axis_tready_0_sp_1 => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\,
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => \^s_decode_err\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0\ is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_AB_reg_slice.state_reg[0]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_routing.busy_r_reg[0]_0\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0\ : entity is "axis_switch_v1_1_29_axisc_decoder";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0\ is
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gen_tdest_routing.busy_r_reg[3]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[3]_0\ <= \^gen_tdest_routing.busy_r_reg[3]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_routing.busy_r_reg[0]_0\,
      O => \gen_tdest_routing.busy_ns\(0)
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(0),
      Q => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_r_reg[3]_1\(0),
      Q => \^gen_tdest_routing.busy_r_reg[3]_0\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0\: entity work.axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice_8
     port map (
      D(25 downto 0) => D(25 downto 0),
      aclk => aclk,
      areset => areset,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]_0\,
      \gen_AB_reg_slice.payload_b_reg[10]_0\ => \gen_AB_reg_slice.payload_b_reg[10]\,
      \gen_AB_reg_slice.payload_b_reg[11]_0\ => \gen_AB_reg_slice.payload_b_reg[11]\,
      \gen_AB_reg_slice.payload_b_reg[12]_0\ => \gen_AB_reg_slice.payload_b_reg[12]\,
      \gen_AB_reg_slice.payload_b_reg[13]_0\ => \gen_AB_reg_slice.payload_b_reg[13]\,
      \gen_AB_reg_slice.payload_b_reg[14]_0\ => \gen_AB_reg_slice.payload_b_reg[14]\,
      \gen_AB_reg_slice.payload_b_reg[15]_0\ => \gen_AB_reg_slice.payload_b_reg[15]\,
      \gen_AB_reg_slice.payload_b_reg[16]_0\ => \gen_AB_reg_slice.payload_b_reg[16]\,
      \gen_AB_reg_slice.payload_b_reg[17]_0\ => \gen_AB_reg_slice.payload_b_reg[17]\,
      \gen_AB_reg_slice.payload_b_reg[18]_0\ => \gen_AB_reg_slice.payload_b_reg[18]\,
      \gen_AB_reg_slice.payload_b_reg[19]_0\ => \gen_AB_reg_slice.payload_b_reg[19]\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]\,
      \gen_AB_reg_slice.payload_b_reg[20]_0\ => \gen_AB_reg_slice.payload_b_reg[20]\,
      \gen_AB_reg_slice.payload_b_reg[21]_0\ => \gen_AB_reg_slice.payload_b_reg[21]\,
      \gen_AB_reg_slice.payload_b_reg[22]_0\ => \gen_AB_reg_slice.payload_b_reg[22]\,
      \gen_AB_reg_slice.payload_b_reg[23]_0\ => \gen_AB_reg_slice.payload_b_reg[23]\,
      \gen_AB_reg_slice.payload_b_reg[24]_0\ => \gen_AB_reg_slice.payload_b_reg[24]\,
      \gen_AB_reg_slice.payload_b_reg[25]_0\ => \gen_AB_reg_slice.payload_b_reg[25]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_AB_reg_slice.payload_b_reg[3]\,
      \gen_AB_reg_slice.payload_b_reg[4]_0\ => \gen_AB_reg_slice.payload_b_reg[4]\,
      \gen_AB_reg_slice.payload_b_reg[5]_0\ => \gen_AB_reg_slice.payload_b_reg[5]\,
      \gen_AB_reg_slice.payload_b_reg[6]_0\ => \gen_AB_reg_slice.payload_b_reg[6]\,
      \gen_AB_reg_slice.payload_b_reg[7]_0\ => \gen_AB_reg_slice.payload_b_reg[7]\,
      \gen_AB_reg_slice.payload_b_reg[8]_0\ => \gen_AB_reg_slice.payload_b_reg[8]\,
      \gen_AB_reg_slice.payload_b_reg[9]_0\ => \gen_AB_reg_slice.payload_b_reg[9]\,
      \gen_AB_reg_slice.state_reg[1]_0\ => \gen_AB_reg_slice.state_reg[1]\,
      \gen_AB_reg_slice.state_reg[1]_1\ => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1\: entity work.\axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0_9\
     port map (
      D(7 downto 0) => D(24 downto 17),
      aclk => aclk,
      arb_busy_r_i_2 => \^gen_tdest_routing.busy_r_reg[3]_0\,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_busy_r_reg_0 => arb_busy_r_reg_0,
      arb_gnt_i(1 downto 0) => arb_gnt_i(1 downto 0),
      \arb_gnt_r[3]_i_9__2\ => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => \gen_AB_reg_slice.payload_a_reg[0]\,
      \gen_AB_reg_slice.payload_a_reg[0]_1\ => \gen_AB_reg_slice.payload_a_reg[0]_0\,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_AB_reg_slice.state_reg[0]\,
      \gen_AB_reg_slice.state_reg[0]_1\ => \gen_AB_reg_slice.state_reg[0]_0\,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_0\(0),
      \gen_tdest_routing.decode_err_r0\ => \gen_tdest_routing.decode_err_r0\,
      m_axis_tready(1 downto 0) => m_axis_tready(1 downto 0),
      m_axis_tready_0_sp_1 => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_3\,
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => \^s_decode_err\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1\ is
  port (
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[1]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_1\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[0]_2\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.state_reg[1]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[25]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[24]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[23]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[22]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[21]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[20]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[19]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[18]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[17]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[16]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[15]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[14]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[13]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[12]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[11]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[10]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[9]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[8]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[7]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[6]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[5]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[4]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[3]_1\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[2]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[1]_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_b_reg[0]_0\ : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]_1\ : out STD_LOGIC;
    areset : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_gnt_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_tdest_routing.busy_r_reg[1]_1\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[2]_2\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[0]_1\ : in STD_LOGIC;
    \gen_tdest_router.busy_r\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_AB_reg_slice.state[1]_i_2__2\ : in STD_LOGIC;
    \gen_AB_reg_slice.state[1]_i_2__2_0\ : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gen_tdest_router.busy_r_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \arb_gnt_r[3]_i_3__1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1\ : entity is "axis_switch_v1_1_29_axisc_decoder";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1\ is
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gen_tdest_routing.busy_r_reg[1]_0\ : STD_LOGIC;
  signal \^gen_tdest_routing.busy_r_reg[2]_0\ : STD_LOGIC;
  signal \^gen_tdest_routing.busy_r_reg[3]_0\ : STD_LOGIC;
  signal \gen_tdest_routing.busy_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_tdest_routing.decode_err_r0\ : STD_LOGIC;
  signal \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0\ : STD_LOGIC;
  signal \^s_decode_err\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_tdest_routing.busy_r_reg[1]_0\ <= \^gen_tdest_routing.busy_r_reg[1]_0\;
  \gen_tdest_routing.busy_r_reg[2]_0\ <= \^gen_tdest_routing.busy_r_reg[2]_0\;
  \gen_tdest_routing.busy_r_reg[3]_0\ <= \^gen_tdest_routing.busy_r_reg[3]_0\;
  s_decode_err(0) <= \^s_decode_err\(0);
\gen_tdest_routing.busy_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      I1 => arb_gnt_i(0),
      I2 => \gen_tdest_routing.busy_r_reg[0]_1\,
      O => \gen_tdest_routing.busy_ns\(0)
    );
\gen_tdest_routing.busy_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[1]_0\,
      I1 => arb_gnt_i(1),
      I2 => \gen_tdest_routing.busy_r_reg[1]_1\,
      O => \gen_tdest_routing.busy_ns\(1)
    );
\gen_tdest_routing.busy_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^gen_tdest_routing.busy_r_reg[2]_0\,
      I1 => arb_gnt_i(2),
      I2 => \gen_tdest_routing.busy_r_reg[2]_2\,
      O => \gen_tdest_routing.busy_ns\(2)
    );
\gen_tdest_routing.busy_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(0),
      Q => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(1),
      Q => \^gen_tdest_routing.busy_r_reg[1]_0\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_ns\(2),
      Q => \^gen_tdest_routing.busy_r_reg[2]_0\,
      R => areset
    );
\gen_tdest_routing.busy_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.busy_r_reg[3]_1\(0),
      Q => \^gen_tdest_routing.busy_r_reg[3]_0\,
      R => areset
    );
\gen_tdest_routing.decode_err_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_tdest_routing.decode_err_r0\,
      Q => \^s_decode_err\(0),
      R => areset
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_0\: entity work.axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice
     port map (
      D(25 downto 0) => D(25 downto 0),
      aclk => aclk,
      areset => areset,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]_0\,
      \gen_AB_reg_slice.payload_b_reg[10]_0\ => \gen_AB_reg_slice.payload_b_reg[10]\,
      \gen_AB_reg_slice.payload_b_reg[11]_0\ => \gen_AB_reg_slice.payload_b_reg[11]\,
      \gen_AB_reg_slice.payload_b_reg[12]_0\ => \gen_AB_reg_slice.payload_b_reg[12]\,
      \gen_AB_reg_slice.payload_b_reg[13]_0\ => \gen_AB_reg_slice.payload_b_reg[13]\,
      \gen_AB_reg_slice.payload_b_reg[14]_0\ => \gen_AB_reg_slice.payload_b_reg[14]\,
      \gen_AB_reg_slice.payload_b_reg[15]_0\ => \gen_AB_reg_slice.payload_b_reg[15]\,
      \gen_AB_reg_slice.payload_b_reg[16]_0\ => \gen_AB_reg_slice.payload_b_reg[16]\,
      \gen_AB_reg_slice.payload_b_reg[17]_0\ => \gen_AB_reg_slice.payload_b_reg[17]\,
      \gen_AB_reg_slice.payload_b_reg[18]_0\ => \gen_AB_reg_slice.payload_b_reg[18]\,
      \gen_AB_reg_slice.payload_b_reg[19]_0\ => \gen_AB_reg_slice.payload_b_reg[19]\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]_0\,
      \gen_AB_reg_slice.payload_b_reg[20]_0\ => \gen_AB_reg_slice.payload_b_reg[20]\,
      \gen_AB_reg_slice.payload_b_reg[21]_0\ => \gen_AB_reg_slice.payload_b_reg[21]\,
      \gen_AB_reg_slice.payload_b_reg[22]_0\ => \gen_AB_reg_slice.payload_b_reg[22]\,
      \gen_AB_reg_slice.payload_b_reg[23]_0\ => \gen_AB_reg_slice.payload_b_reg[23]\,
      \gen_AB_reg_slice.payload_b_reg[24]_0\ => \gen_AB_reg_slice.payload_b_reg[24]\,
      \gen_AB_reg_slice.payload_b_reg[25]_0\ => \gen_AB_reg_slice.payload_b_reg[25]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]_0\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_AB_reg_slice.payload_b_reg[3]_1\,
      \gen_AB_reg_slice.payload_b_reg[4]_0\ => \gen_AB_reg_slice.payload_b_reg[4]\,
      \gen_AB_reg_slice.payload_b_reg[5]_0\ => \gen_AB_reg_slice.payload_b_reg[5]\,
      \gen_AB_reg_slice.payload_b_reg[6]_0\ => \gen_AB_reg_slice.payload_b_reg[6]\,
      \gen_AB_reg_slice.payload_b_reg[7]_0\ => \gen_AB_reg_slice.payload_b_reg[7]\,
      \gen_AB_reg_slice.payload_b_reg[8]_0\ => \gen_AB_reg_slice.payload_b_reg[8]\,
      \gen_AB_reg_slice.payload_b_reg[9]_0\ => \gen_AB_reg_slice.payload_b_reg[9]\,
      \gen_AB_reg_slice.state_reg[1]_0\ => \gen_AB_reg_slice.state_reg[1]\,
      \gen_AB_reg_slice.state_reg[1]_1\ => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
\gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1\: entity work.\axis_switch_swifsaxis_register_slice_v1_1_29_axisc_register_slice__parameterized0\
     port map (
      D(7 downto 0) => D(24 downto 17),
      aclk => aclk,
      arb_busy_r_i_2 => \^gen_tdest_routing.busy_r_reg[3]_0\,
      \arb_busy_r_i_2__2\ => \gen_tdest_routing.busy_r_reg_n_0_[0]\,
      arb_busy_r_reg => \^gen_tdest_routing.busy_r_reg[2]_0\,
      arb_busy_r_reg_0 => \^gen_tdest_routing.busy_r_reg[1]_0\,
      arb_gnt_i(3 downto 0) => arb_gnt_i(3 downto 0),
      \arb_gnt_r[3]_i_3__1\ => \arb_gnt_r[3]_i_3__1\,
      arb_sel_i(7 downto 0) => arb_sel_i(7 downto 0),
      areset => areset,
      \busy_r_reg[3]\ => \gen_tdest_routing.gen_tdest_decoder.axisc_register_slice_1_n_0\,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_AB_reg_slice.payload_b_reg[0]\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_AB_reg_slice.payload_b_reg[1]\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_AB_reg_slice.payload_b_reg[2]\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_AB_reg_slice.payload_b_reg[3]\,
      \gen_AB_reg_slice.payload_b_reg[3]_1\ => \gen_AB_reg_slice.payload_b_reg[3]_0\,
      \gen_AB_reg_slice.state[1]_i_2__2_0\ => \gen_AB_reg_slice.state[1]_i_2__2\,
      \gen_AB_reg_slice.state[1]_i_2__2_1\ => \gen_AB_reg_slice.state[1]_i_2__2_0\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_AB_reg_slice.state_reg[0]\,
      \gen_AB_reg_slice.state_reg[0]_1\ => \gen_AB_reg_slice.state_reg[0]_0\,
      \gen_AB_reg_slice.state_reg[0]_2\ => \gen_AB_reg_slice.state_reg[0]_1\,
      \gen_AB_reg_slice.state_reg[0]_3\ => \gen_AB_reg_slice.state_reg[0]_2\,
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(0),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_0\(0),
      \gen_tdest_routing.busy_r_reg[0]\ => \gen_tdest_routing.busy_r_reg[0]_0\,
      \gen_tdest_routing.busy_r_reg[2]\ => \gen_tdest_routing.busy_r_reg[2]_1\,
      \gen_tdest_routing.decode_err_r0\ => \gen_tdest_routing.decode_err_r0\,
      m_axis_tready(3 downto 0) => m_axis_tready(3 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => \^s_decode_err\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux is
  port (
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ : out STD_LOGIC;
    arb_sel_r0 : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[3]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    arb_busy_r : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    \busy_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux : entity is "axis_switch_v1_1_29_axisc_transfer_mux";
end axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_4
     port map (
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_sel_r0 => arb_sel_r0,
      areset => areset,
      \busy_r_reg[3]_0\ => \busy_r_reg[3]\,
      \busy_r_reg[3]_1\(3 downto 0) => \busy_r_reg[3]_0\(3 downto 0),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0\ is
  port (
    arb_sel_r0 : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ : out STD_LOGIC;
    \busy_r_reg[0]\ : out STD_LOGIC;
    \busy_r_reg[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \busy_r_reg[2]\ : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    \busy_r_reg[2]_0\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0\ : entity is "axis_switch_v1_1_29_axisc_transfer_mux";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0\ is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_3
     port map (
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_busy_r_reg_0 => arb_busy_r_reg_0,
      \arb_gnt_r_reg[1]\ => \arb_gnt_r_reg[1]\,
      arb_sel_r0 => arb_sel_r0,
      areset => areset,
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[2]_0\ => \busy_r_reg[2]\,
      \busy_r_reg[2]_1\ => \busy_r_reg[2]_0\,
      \busy_r_reg[3]_0\(2 downto 0) => \busy_r_reg[3]\(2 downto 0),
      \busy_r_reg[3]_1\(3 downto 0) => \busy_r_reg[3]_0\(3 downto 0),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\,
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1\ is
  port (
    arb_sel_r0 : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_busy_ns : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    \arb_gnt_r_reg[1]\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_busy_r_reg : in STD_LOGIC;
    arb_busy_r_reg_0 : in STD_LOGIC;
    \busy_r_reg[2]\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1\ : entity is "axis_switch_v1_1_29_axisc_transfer_mux";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1\ is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder_2
     port map (
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg,
      arb_busy_r_reg_0 => arb_busy_r_reg_0,
      \arb_gnt_r_reg[1]\ => \arb_gnt_r_reg[1]\,
      arb_sel_r0 => arb_sel_r0,
      areset => areset,
      \busy_r_reg[2]_0\ => \busy_r_reg[2]\,
      \busy_r_reg[3]_0\(2 downto 0) => \busy_r_reg[3]\(2 downto 0),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1\ is
  port (
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : out STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : out STD_LOGIC;
    arb_busy_ns : out STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_tdest_routing.busy_r_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]\ : out STD_LOGIC;
    \gen_tdest_router.busy_r\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \busy_r_reg[3]\ : out STD_LOGIC;
    \m_axis_tready[3]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    areset : in STD_LOGIC;
    \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ : in STD_LOGIC;
    arb_busy_r : in STD_LOGIC;
    arb_busy_r_reg : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_3\ : in STD_LOGIC;
    \busy_r_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_tdest_routing.busy_r_reg[3]_4\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_5\ : in STD_LOGIC;
    \gen_tdest_routing.busy_r_reg[3]_6\ : in STD_LOGIC;
    m_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \busy_r_reg[0]_0\ : in STD_LOGIC;
    \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1\ : entity is "axis_switch_v1_1_29_axisc_transfer_mux";
end \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1\;

architecture STRUCTURE of \axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1\ is
begin
\gen_tdest_router.axisc_arb_responder\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_arb_responder
     port map (
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_busy_r_reg => arb_busy_r_reg,
      areset => areset,
      \busy_r_reg[0]_0\ => \busy_r_reg[0]\,
      \busy_r_reg[0]_1\ => \busy_r_reg[0]_0\,
      \busy_r_reg[3]_0\ => \busy_r_reg[3]\,
      \busy_r_reg[3]_1\(3 downto 0) => \busy_r_reg[3]_0\(3 downto 0),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_1\ => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]_0\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ => \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      \gen_tdest_routing.busy_r_reg[3]\(0) => \gen_tdest_routing.busy_r_reg[3]\(0),
      \gen_tdest_routing.busy_r_reg[3]_0\(0) => \gen_tdest_routing.busy_r_reg[3]_0\(0),
      \gen_tdest_routing.busy_r_reg[3]_1\(0) => \gen_tdest_routing.busy_r_reg[3]_1\(0),
      \gen_tdest_routing.busy_r_reg[3]_2\(0) => \gen_tdest_routing.busy_r_reg[3]_2\(0),
      \gen_tdest_routing.busy_r_reg[3]_3\ => \gen_tdest_routing.busy_r_reg[3]_3\,
      \gen_tdest_routing.busy_r_reg[3]_4\ => \gen_tdest_routing.busy_r_reg[3]_4\,
      \gen_tdest_routing.busy_r_reg[3]_5\ => \gen_tdest_routing.busy_r_reg[3]_5\,
      \gen_tdest_routing.busy_r_reg[3]_6\ => \gen_tdest_routing.busy_r_reg[3]_6\,
      m_axis_tready(0) => m_axis_tready(0),
      \m_axis_tready[3]\ => \m_axis_tready[3]\,
      m_axis_tvalid(0) => m_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifsaxis_switch_v1_1_29_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_req : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 15 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 7 downto 0 );
    arb_last : out STD_LOGIC_VECTOR ( 15 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 127 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 127 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 5;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1024;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 243;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 8;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 8;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "artix7";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : integer;
  attribute C_M_AXIS_BASETDEST_ARRAY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 50462976;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "16'b1111100110011110";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : integer;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 50462976;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 4;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 4;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 40;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 1;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "axis_switch_v1_1_29_axis_switch";
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "16'b1111100110011110";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is "4'b0000";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of axis_switch_swifsaxis_switch_v1_1_29_axis_switch : entity is 26;
end axis_switch_swifsaxis_switch_v1_1_29_axis_switch;

architecture STRUCTURE of axis_switch_swifsaxis_switch_v1_1_29_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal arb_gnt_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal arb_sel_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal areset : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_11\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_12\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_13\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_14\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_15\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_16\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_17\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_18\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_19\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_20\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_21\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_22\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_23\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_24\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_25\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_26\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_27\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_28\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_29\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_30\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_31\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_32\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_33\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_34\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_35\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_36\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_37\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_4\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_5\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_6\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_7\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_8\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_9\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_10\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_11\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_12\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_13\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_14\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_15\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_16\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_17\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_18\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_19\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_20\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_21\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_22\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_23\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_24\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_25\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_26\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_27\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_28\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_29\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_30\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_31\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_32\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_4\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_5\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_7\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_8\ : STD_LOGIC;
  signal \gen_decoder[1].axisc_decoder_0_n_9\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_10\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_11\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_12\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_13\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_14\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_15\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_16\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_17\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_18\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_19\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_20\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_21\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_22\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_23\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_24\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_25\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_26\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_27\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_28\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_29\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_30\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_31\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_32\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_33\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_4\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_5\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_7\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_8\ : STD_LOGIC;
  signal \gen_decoder[2].axisc_decoder_0_n_9\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_10\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_11\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_12\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_13\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_15\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_16\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_17\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_18\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_19\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_2\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_20\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_21\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_22\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_23\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_24\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_25\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_26\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_27\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_28\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_29\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_3\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_30\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_31\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_32\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_33\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_34\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_35\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_36\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_37\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_38\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_39\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_4\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_40\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_41\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_5\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_6\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_7\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_8\ : STD_LOGIC;
  signal \gen_decoder[3].axisc_decoder_0_n_9\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6\ : STD_LOGIC;
  signal \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\ : STD_LOGIC;
  signal \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\ : STD_LOGIC;
  signal \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\ : STD_LOGIC;
  signal \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\ : STD_LOGIC;
  signal \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\ : STD_LOGIC;
  signal \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\ : STD_LOGIC;
  signal \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\ : STD_LOGIC;
  signal \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\ : STD_LOGIC;
  signal \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\ : STD_LOGIC;
  signal \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ : STD_LOGIC;
  signal \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ : STD_LOGIC;
  signal \gen_tdest_router.busy_r\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_router.busy_r_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_router.busy_r_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_router.busy_r_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_tdest_routing.busy_ns\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \gen_tdest_routing.busy_ns_3\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \gen_tdest_routing.busy_ns_4\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \gen_tdest_routing.busy_ns_5\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_0\ : STD_LOGIC;
  signal \gen_transfer_mux[0].axisc_transfer_mux_0_n_7\ : STD_LOGIC;
  signal \gen_transfer_mux[1].axisc_transfer_mux_0_n_1\ : STD_LOGIC;
  signal \gen_transfer_mux[1].axisc_transfer_mux_0_n_2\ : STD_LOGIC;
  signal \gen_transfer_mux[1].axisc_transfer_mux_0_n_6\ : STD_LOGIC;
  signal \gen_transfer_mux[2].axisc_transfer_mux_0_n_1\ : STD_LOGIC;
  signal \gen_transfer_mux[3].axisc_transfer_mux_0_n_0\ : STD_LOGIC;
  signal \gen_transfer_mux[3].axisc_transfer_mux_0_n_12\ : STD_LOGIC;
  signal \gen_transfer_mux[3].axisc_transfer_mux_0_n_13\ : STD_LOGIC;
  signal \gen_transfer_mux[3].axisc_transfer_mux_0_n_7\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  arb_dest(127) <= \<const0>\;
  arb_dest(126) <= \<const0>\;
  arb_dest(125) <= \<const0>\;
  arb_dest(124) <= \<const0>\;
  arb_dest(123) <= \<const0>\;
  arb_dest(122) <= \<const0>\;
  arb_dest(121) <= \<const0>\;
  arb_dest(120) <= \<const0>\;
  arb_dest(119) <= \<const0>\;
  arb_dest(118) <= \<const0>\;
  arb_dest(117) <= \<const0>\;
  arb_dest(116) <= \<const0>\;
  arb_dest(115) <= \<const0>\;
  arb_dest(114) <= \<const0>\;
  arb_dest(113) <= \<const0>\;
  arb_dest(112) <= \<const0>\;
  arb_dest(111) <= \<const0>\;
  arb_dest(110) <= \<const0>\;
  arb_dest(109) <= \<const0>\;
  arb_dest(108) <= \<const0>\;
  arb_dest(107) <= \<const0>\;
  arb_dest(106) <= \<const0>\;
  arb_dest(105) <= \<const0>\;
  arb_dest(104) <= \<const0>\;
  arb_dest(103) <= \<const0>\;
  arb_dest(102) <= \<const0>\;
  arb_dest(101) <= \<const0>\;
  arb_dest(100) <= \<const0>\;
  arb_dest(99) <= \<const0>\;
  arb_dest(98) <= \<const0>\;
  arb_dest(97) <= \<const0>\;
  arb_dest(96) <= \<const0>\;
  arb_dest(95) <= \<const0>\;
  arb_dest(94) <= \<const0>\;
  arb_dest(93) <= \<const0>\;
  arb_dest(92) <= \<const0>\;
  arb_dest(91) <= \<const0>\;
  arb_dest(90) <= \<const0>\;
  arb_dest(89) <= \<const0>\;
  arb_dest(88) <= \<const0>\;
  arb_dest(87) <= \<const0>\;
  arb_dest(86) <= \<const0>\;
  arb_dest(85) <= \<const0>\;
  arb_dest(84) <= \<const0>\;
  arb_dest(83) <= \<const0>\;
  arb_dest(82) <= \<const0>\;
  arb_dest(81) <= \<const0>\;
  arb_dest(80) <= \<const0>\;
  arb_dest(79) <= \<const0>\;
  arb_dest(78) <= \<const0>\;
  arb_dest(77) <= \<const0>\;
  arb_dest(76) <= \<const0>\;
  arb_dest(75) <= \<const0>\;
  arb_dest(74) <= \<const0>\;
  arb_dest(73) <= \<const0>\;
  arb_dest(72) <= \<const0>\;
  arb_dest(71) <= \<const0>\;
  arb_dest(70) <= \<const0>\;
  arb_dest(69) <= \<const0>\;
  arb_dest(68) <= \<const0>\;
  arb_dest(67) <= \<const0>\;
  arb_dest(66) <= \<const0>\;
  arb_dest(65) <= \<const0>\;
  arb_dest(64) <= \<const0>\;
  arb_dest(63) <= \<const0>\;
  arb_dest(62) <= \<const0>\;
  arb_dest(61) <= \<const0>\;
  arb_dest(60) <= \<const0>\;
  arb_dest(59) <= \<const0>\;
  arb_dest(58) <= \<const0>\;
  arb_dest(57) <= \<const0>\;
  arb_dest(56) <= \<const0>\;
  arb_dest(55) <= \<const0>\;
  arb_dest(54) <= \<const0>\;
  arb_dest(53) <= \<const0>\;
  arb_dest(52) <= \<const0>\;
  arb_dest(51) <= \<const0>\;
  arb_dest(50) <= \<const0>\;
  arb_dest(49) <= \<const0>\;
  arb_dest(48) <= \<const0>\;
  arb_dest(47) <= \<const0>\;
  arb_dest(46) <= \<const0>\;
  arb_dest(45) <= \<const0>\;
  arb_dest(44) <= \<const0>\;
  arb_dest(43) <= \<const0>\;
  arb_dest(42) <= \<const0>\;
  arb_dest(41) <= \<const0>\;
  arb_dest(40) <= \<const0>\;
  arb_dest(39) <= \<const0>\;
  arb_dest(38) <= \<const0>\;
  arb_dest(37) <= \<const0>\;
  arb_dest(36) <= \<const0>\;
  arb_dest(35) <= \<const0>\;
  arb_dest(34) <= \<const0>\;
  arb_dest(33) <= \<const0>\;
  arb_dest(32) <= \<const0>\;
  arb_dest(31) <= \<const0>\;
  arb_dest(30) <= \<const0>\;
  arb_dest(29) <= \<const0>\;
  arb_dest(28) <= \<const0>\;
  arb_dest(27) <= \<const0>\;
  arb_dest(26) <= \<const0>\;
  arb_dest(25) <= \<const0>\;
  arb_dest(24) <= \<const0>\;
  arb_dest(23) <= \<const0>\;
  arb_dest(22) <= \<const0>\;
  arb_dest(21) <= \<const0>\;
  arb_dest(20) <= \<const0>\;
  arb_dest(19) <= \<const0>\;
  arb_dest(18) <= \<const0>\;
  arb_dest(17) <= \<const0>\;
  arb_dest(16) <= \<const0>\;
  arb_dest(15) <= \<const0>\;
  arb_dest(14) <= \<const0>\;
  arb_dest(13) <= \<const0>\;
  arb_dest(12) <= \<const0>\;
  arb_dest(11) <= \<const0>\;
  arb_dest(10) <= \<const0>\;
  arb_dest(9) <= \<const0>\;
  arb_dest(8) <= \<const0>\;
  arb_dest(7) <= \<const0>\;
  arb_dest(6) <= \<const0>\;
  arb_dest(5) <= \<const0>\;
  arb_dest(4) <= \<const0>\;
  arb_dest(3) <= \<const0>\;
  arb_dest(2) <= \<const0>\;
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(3) <= \<const0>\;
  arb_done(2) <= \<const0>\;
  arb_done(1) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(127) <= \<const0>\;
  arb_id(126) <= \<const0>\;
  arb_id(125) <= \<const0>\;
  arb_id(124) <= \<const0>\;
  arb_id(123) <= \<const0>\;
  arb_id(122) <= \<const0>\;
  arb_id(121) <= \<const0>\;
  arb_id(120) <= \<const0>\;
  arb_id(119) <= \<const0>\;
  arb_id(118) <= \<const0>\;
  arb_id(117) <= \<const0>\;
  arb_id(116) <= \<const0>\;
  arb_id(115) <= \<const0>\;
  arb_id(114) <= \<const0>\;
  arb_id(113) <= \<const0>\;
  arb_id(112) <= \<const0>\;
  arb_id(111) <= \<const0>\;
  arb_id(110) <= \<const0>\;
  arb_id(109) <= \<const0>\;
  arb_id(108) <= \<const0>\;
  arb_id(107) <= \<const0>\;
  arb_id(106) <= \<const0>\;
  arb_id(105) <= \<const0>\;
  arb_id(104) <= \<const0>\;
  arb_id(103) <= \<const0>\;
  arb_id(102) <= \<const0>\;
  arb_id(101) <= \<const0>\;
  arb_id(100) <= \<const0>\;
  arb_id(99) <= \<const0>\;
  arb_id(98) <= \<const0>\;
  arb_id(97) <= \<const0>\;
  arb_id(96) <= \<const0>\;
  arb_id(95) <= \<const0>\;
  arb_id(94) <= \<const0>\;
  arb_id(93) <= \<const0>\;
  arb_id(92) <= \<const0>\;
  arb_id(91) <= \<const0>\;
  arb_id(90) <= \<const0>\;
  arb_id(89) <= \<const0>\;
  arb_id(88) <= \<const0>\;
  arb_id(87) <= \<const0>\;
  arb_id(86) <= \<const0>\;
  arb_id(85) <= \<const0>\;
  arb_id(84) <= \<const0>\;
  arb_id(83) <= \<const0>\;
  arb_id(82) <= \<const0>\;
  arb_id(81) <= \<const0>\;
  arb_id(80) <= \<const0>\;
  arb_id(79) <= \<const0>\;
  arb_id(78) <= \<const0>\;
  arb_id(77) <= \<const0>\;
  arb_id(76) <= \<const0>\;
  arb_id(75) <= \<const0>\;
  arb_id(74) <= \<const0>\;
  arb_id(73) <= \<const0>\;
  arb_id(72) <= \<const0>\;
  arb_id(71) <= \<const0>\;
  arb_id(70) <= \<const0>\;
  arb_id(69) <= \<const0>\;
  arb_id(68) <= \<const0>\;
  arb_id(67) <= \<const0>\;
  arb_id(66) <= \<const0>\;
  arb_id(65) <= \<const0>\;
  arb_id(64) <= \<const0>\;
  arb_id(63) <= \<const0>\;
  arb_id(62) <= \<const0>\;
  arb_id(61) <= \<const0>\;
  arb_id(60) <= \<const0>\;
  arb_id(59) <= \<const0>\;
  arb_id(58) <= \<const0>\;
  arb_id(57) <= \<const0>\;
  arb_id(56) <= \<const0>\;
  arb_id(55) <= \<const0>\;
  arb_id(54) <= \<const0>\;
  arb_id(53) <= \<const0>\;
  arb_id(52) <= \<const0>\;
  arb_id(51) <= \<const0>\;
  arb_id(50) <= \<const0>\;
  arb_id(49) <= \<const0>\;
  arb_id(48) <= \<const0>\;
  arb_id(47) <= \<const0>\;
  arb_id(46) <= \<const0>\;
  arb_id(45) <= \<const0>\;
  arb_id(44) <= \<const0>\;
  arb_id(43) <= \<const0>\;
  arb_id(42) <= \<const0>\;
  arb_id(41) <= \<const0>\;
  arb_id(40) <= \<const0>\;
  arb_id(39) <= \<const0>\;
  arb_id(38) <= \<const0>\;
  arb_id(37) <= \<const0>\;
  arb_id(36) <= \<const0>\;
  arb_id(35) <= \<const0>\;
  arb_id(34) <= \<const0>\;
  arb_id(33) <= \<const0>\;
  arb_id(32) <= \<const0>\;
  arb_id(31) <= \<const0>\;
  arb_id(30) <= \<const0>\;
  arb_id(29) <= \<const0>\;
  arb_id(28) <= \<const0>\;
  arb_id(27) <= \<const0>\;
  arb_id(26) <= \<const0>\;
  arb_id(25) <= \<const0>\;
  arb_id(24) <= \<const0>\;
  arb_id(23) <= \<const0>\;
  arb_id(22) <= \<const0>\;
  arb_id(21) <= \<const0>\;
  arb_id(20) <= \<const0>\;
  arb_id(19) <= \<const0>\;
  arb_id(18) <= \<const0>\;
  arb_id(17) <= \<const0>\;
  arb_id(16) <= \<const0>\;
  arb_id(15) <= \<const0>\;
  arb_id(14) <= \<const0>\;
  arb_id(13) <= \<const0>\;
  arb_id(12) <= \<const0>\;
  arb_id(11) <= \<const0>\;
  arb_id(10) <= \<const0>\;
  arb_id(9) <= \<const0>\;
  arb_id(8) <= \<const0>\;
  arb_id(7) <= \<const0>\;
  arb_id(6) <= \<const0>\;
  arb_id(5) <= \<const0>\;
  arb_id(4) <= \<const0>\;
  arb_id(3) <= \<const0>\;
  arb_id(2) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(15) <= \<const0>\;
  arb_last(14) <= \<const0>\;
  arb_last(13) <= \<const0>\;
  arb_last(12) <= \<const0>\;
  arb_last(11) <= \<const0>\;
  arb_last(10) <= \<const0>\;
  arb_last(9) <= \<const0>\;
  arb_last(8) <= \<const0>\;
  arb_last(7) <= \<const0>\;
  arb_last(6) <= \<const0>\;
  arb_last(5) <= \<const0>\;
  arb_last(4) <= \<const0>\;
  arb_last(3) <= \<const0>\;
  arb_last(2) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(15) <= \<const0>\;
  arb_req(14) <= \<const0>\;
  arb_req(13) <= \<const0>\;
  arb_req(12) <= \<const0>\;
  arb_req(11) <= \<const0>\;
  arb_req(10) <= \<const0>\;
  arb_req(9) <= \<const0>\;
  arb_req(8) <= \<const0>\;
  arb_req(7) <= \<const0>\;
  arb_req(6) <= \<const0>\;
  arb_req(5) <= \<const0>\;
  arb_req(4) <= \<const0>\;
  arb_req(3) <= \<const0>\;
  arb_req(2) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(15) <= \<const0>\;
  arb_user(14) <= \<const0>\;
  arb_user(13) <= \<const0>\;
  arb_user(12) <= \<const0>\;
  arb_user(11) <= \<const0>\;
  arb_user(10) <= \<const0>\;
  arb_user(9) <= \<const0>\;
  arb_user(8) <= \<const0>\;
  arb_user(7) <= \<const0>\;
  arb_user(6) <= \<const0>\;
  arb_user(5) <= \<const0>\;
  arb_user(4) <= \<const0>\;
  arb_user(3) <= \<const0>\;
  arb_user(2) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tvalid(3 downto 0) <= \^m_axis_tvalid\(3 downto 0);
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_decoder[0].axisc_decoder_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder
     port map (
      D(17) => s_axis_tuser(0),
      D(16 downto 9) => s_axis_tid(7 downto 0),
      D(8) => s_axis_tlast(0),
      D(7 downto 0) => s_axis_tdata(7 downto 0),
      aclk => aclk,
      arb_busy_r_reg => \gen_decoder[2].axisc_decoder_0_n_1\,
      arb_busy_r_reg_0 => \gen_decoder[1].axisc_decoder_0_n_1\,
      arb_busy_r_reg_1 => \gen_decoder[3].axisc_decoder_0_n_9\,
      arb_gnt_i(2) => arb_gnt_i(12),
      arb_gnt_i(1) => arb_gnt_i(8),
      arb_gnt_i(0) => arb_gnt_i(4),
      \arb_gnt_r[3]_i_3__0\ => \gen_decoder[3].axisc_decoder_0_n_7\,
      arb_sel_i(1 downto 0) => arb_sel_i(7 downto 6),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[2]\ => \gen_decoder[0].axisc_decoder_0_n_8\,
      \gen_AB_reg_slice.payload_a_reg[3]\ => \gen_decoder[0].axisc_decoder_0_n_3\,
      \gen_AB_reg_slice.payload_a_reg[3]_0\ => \gen_decoder[0].axisc_decoder_0_n_6\,
      \gen_AB_reg_slice.payload_b_reg[0]\ => \gen_decoder[0].axisc_decoder_0_n_36\,
      \gen_AB_reg_slice.payload_b_reg[10]\ => \gen_decoder[0].axisc_decoder_0_n_26\,
      \gen_AB_reg_slice.payload_b_reg[11]\ => \gen_decoder[0].axisc_decoder_0_n_25\,
      \gen_AB_reg_slice.payload_b_reg[12]\ => \gen_decoder[0].axisc_decoder_0_n_24\,
      \gen_AB_reg_slice.payload_b_reg[13]\ => \gen_decoder[0].axisc_decoder_0_n_23\,
      \gen_AB_reg_slice.payload_b_reg[14]\ => \gen_decoder[0].axisc_decoder_0_n_22\,
      \gen_AB_reg_slice.payload_b_reg[15]\ => \gen_decoder[0].axisc_decoder_0_n_21\,
      \gen_AB_reg_slice.payload_b_reg[16]\ => \gen_decoder[0].axisc_decoder_0_n_20\,
      \gen_AB_reg_slice.payload_b_reg[17]\ => \gen_decoder[0].axisc_decoder_0_n_19\,
      \gen_AB_reg_slice.payload_b_reg[18]\ => \gen_decoder[0].axisc_decoder_0_n_18\,
      \gen_AB_reg_slice.payload_b_reg[19]\ => \gen_decoder[0].axisc_decoder_0_n_17\,
      \gen_AB_reg_slice.payload_b_reg[1]\ => \gen_decoder[0].axisc_decoder_0_n_5\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_decoder[0].axisc_decoder_0_n_35\,
      \gen_AB_reg_slice.payload_b_reg[20]\ => \gen_decoder[0].axisc_decoder_0_n_16\,
      \gen_AB_reg_slice.payload_b_reg[21]\ => \gen_decoder[0].axisc_decoder_0_n_15\,
      \gen_AB_reg_slice.payload_b_reg[22]\ => \gen_decoder[0].axisc_decoder_0_n_14\,
      \gen_AB_reg_slice.payload_b_reg[23]\ => \gen_decoder[0].axisc_decoder_0_n_13\,
      \gen_AB_reg_slice.payload_b_reg[24]\ => \gen_decoder[0].axisc_decoder_0_n_12\,
      \gen_AB_reg_slice.payload_b_reg[25]\ => \gen_decoder[0].axisc_decoder_0_n_11\,
      \gen_AB_reg_slice.payload_b_reg[2]\ => \gen_decoder[0].axisc_decoder_0_n_4\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_decoder[0].axisc_decoder_0_n_34\,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \gen_decoder[0].axisc_decoder_0_n_33\,
      \gen_AB_reg_slice.payload_b_reg[4]\ => \gen_decoder[0].axisc_decoder_0_n_32\,
      \gen_AB_reg_slice.payload_b_reg[5]\ => \gen_decoder[0].axisc_decoder_0_n_31\,
      \gen_AB_reg_slice.payload_b_reg[6]\ => \gen_decoder[0].axisc_decoder_0_n_30\,
      \gen_AB_reg_slice.payload_b_reg[7]\ => \gen_decoder[0].axisc_decoder_0_n_29\,
      \gen_AB_reg_slice.payload_b_reg[8]\ => \gen_decoder[0].axisc_decoder_0_n_28\,
      \gen_AB_reg_slice.payload_b_reg[9]\ => \gen_decoder[0].axisc_decoder_0_n_27\,
      \gen_AB_reg_slice.state[1]_i_2\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_2\,
      \gen_AB_reg_slice.state[1]_i_2_0\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_7\,
      \gen_AB_reg_slice.state_reg[0]\ => \gen_decoder[0].axisc_decoder_0_n_7\,
      \gen_AB_reg_slice.state_reg[1]\ => s_axis_tready(0),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r_1\(0),
      \gen_tdest_routing.busy_r_reg[1]_0\ => \gen_decoder[0].axisc_decoder_0_n_37\,
      \gen_tdest_routing.busy_r_reg[1]_1\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_1\,
      \gen_tdest_routing.busy_r_reg[2]_0\ => \gen_decoder[0].axisc_decoder_0_n_9\,
      \gen_tdest_routing.busy_r_reg[2]_1\ => \gen_transfer_mux[2].axisc_transfer_mux_0_n_1\,
      \gen_tdest_routing.busy_r_reg[3]_0\ => \gen_decoder[0].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[3]_1\ => \gen_decoder[0].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[3]_2\(0) => \gen_tdest_routing.busy_ns\(3),
      m_axis_tready(2 downto 0) => m_axis_tready(3 downto 1),
      s_axis_tdest(7 downto 0) => s_axis_tdest(7 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_decode_err(0) => s_decode_err(0)
    );
\gen_decoder[1].axisc_decoder_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0\
     port map (
      D(25) => s_axis_tuser(1),
      D(24 downto 17) => s_axis_tdest(15 downto 8),
      D(16 downto 9) => s_axis_tid(15 downto 8),
      D(8) => s_axis_tlast(1),
      D(7 downto 0) => s_axis_tdata(15 downto 8),
      aclk => aclk,
      arb_gnt_i(1) => arb_gnt_i(13),
      arb_gnt_i(0) => arb_gnt_i(1),
      arb_sel_i(3 downto 2) => arb_sel_i(7 downto 6),
      arb_sel_i(1 downto 0) => arb_sel_i(1 downto 0),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_4\,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_5\,
      \gen_AB_reg_slice.payload_b_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_32\,
      \gen_AB_reg_slice.payload_b_reg[10]\ => \gen_decoder[1].axisc_decoder_0_n_22\,
      \gen_AB_reg_slice.payload_b_reg[11]\ => \gen_decoder[1].axisc_decoder_0_n_21\,
      \gen_AB_reg_slice.payload_b_reg[12]\ => \gen_decoder[1].axisc_decoder_0_n_20\,
      \gen_AB_reg_slice.payload_b_reg[13]\ => \gen_decoder[1].axisc_decoder_0_n_19\,
      \gen_AB_reg_slice.payload_b_reg[14]\ => \gen_decoder[1].axisc_decoder_0_n_18\,
      \gen_AB_reg_slice.payload_b_reg[15]\ => \gen_decoder[1].axisc_decoder_0_n_17\,
      \gen_AB_reg_slice.payload_b_reg[16]\ => \gen_decoder[1].axisc_decoder_0_n_16\,
      \gen_AB_reg_slice.payload_b_reg[17]\ => \gen_decoder[1].axisc_decoder_0_n_15\,
      \gen_AB_reg_slice.payload_b_reg[18]\ => \gen_decoder[1].axisc_decoder_0_n_14\,
      \gen_AB_reg_slice.payload_b_reg[19]\ => \gen_decoder[1].axisc_decoder_0_n_13\,
      \gen_AB_reg_slice.payload_b_reg[1]\ => \gen_decoder[1].axisc_decoder_0_n_31\,
      \gen_AB_reg_slice.payload_b_reg[20]\ => \gen_decoder[1].axisc_decoder_0_n_12\,
      \gen_AB_reg_slice.payload_b_reg[21]\ => \gen_decoder[1].axisc_decoder_0_n_11\,
      \gen_AB_reg_slice.payload_b_reg[22]\ => \gen_decoder[1].axisc_decoder_0_n_10\,
      \gen_AB_reg_slice.payload_b_reg[23]\ => \gen_decoder[1].axisc_decoder_0_n_9\,
      \gen_AB_reg_slice.payload_b_reg[24]\ => \gen_decoder[1].axisc_decoder_0_n_8\,
      \gen_AB_reg_slice.payload_b_reg[25]\ => \gen_decoder[1].axisc_decoder_0_n_7\,
      \gen_AB_reg_slice.payload_b_reg[2]\ => \gen_decoder[1].axisc_decoder_0_n_30\,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \gen_decoder[1].axisc_decoder_0_n_29\,
      \gen_AB_reg_slice.payload_b_reg[4]\ => \gen_decoder[1].axisc_decoder_0_n_28\,
      \gen_AB_reg_slice.payload_b_reg[5]\ => \gen_decoder[1].axisc_decoder_0_n_27\,
      \gen_AB_reg_slice.payload_b_reg[6]\ => \gen_decoder[1].axisc_decoder_0_n_26\,
      \gen_AB_reg_slice.payload_b_reg[7]\ => \gen_decoder[1].axisc_decoder_0_n_25\,
      \gen_AB_reg_slice.payload_b_reg[8]\ => \gen_decoder[1].axisc_decoder_0_n_24\,
      \gen_AB_reg_slice.payload_b_reg[9]\ => \gen_decoder[1].axisc_decoder_0_n_23\,
      \gen_AB_reg_slice.state_reg[0]\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_decoder[1].axisc_decoder_0_n_3\,
      \gen_AB_reg_slice.state_reg[1]\ => s_axis_tready(1),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(1),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_2\(1),
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_0\,
      \gen_tdest_routing.busy_r_reg[3]_0\ => \gen_decoder[1].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[3]_1\(0) => \gen_tdest_routing.busy_ns_3\(3),
      m_axis_tready(1) => m_axis_tready(3),
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(1),
      s_decode_err(0) => s_decode_err(1)
    );
\gen_decoder[2].axisc_decoder_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized0_0\
     port map (
      D(25) => s_axis_tuser(2),
      D(24 downto 17) => s_axis_tdest(23 downto 16),
      D(16 downto 9) => s_axis_tid(23 downto 16),
      D(8) => s_axis_tlast(2),
      D(7 downto 0) => s_axis_tdata(23 downto 16),
      aclk => aclk,
      arb_busy_r_reg => \gen_decoder[1].axisc_decoder_0_n_4\,
      arb_busy_r_reg_0 => \gen_decoder[3].axisc_decoder_0_n_12\,
      arb_gnt_i(1) => arb_gnt_i(14),
      arb_gnt_i(0) => arb_gnt_i(2),
      arb_sel_i(1 downto 0) => arb_sel_i(7 downto 6),
      areset => areset,
      \gen_AB_reg_slice.payload_a_reg[0]\ => \gen_decoder[2].axisc_decoder_0_n_5\,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_33\,
      \gen_AB_reg_slice.payload_b_reg[0]\ => \gen_decoder[2].axisc_decoder_0_n_4\,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_32\,
      \gen_AB_reg_slice.payload_b_reg[10]\ => \gen_decoder[2].axisc_decoder_0_n_22\,
      \gen_AB_reg_slice.payload_b_reg[11]\ => \gen_decoder[2].axisc_decoder_0_n_21\,
      \gen_AB_reg_slice.payload_b_reg[12]\ => \gen_decoder[2].axisc_decoder_0_n_20\,
      \gen_AB_reg_slice.payload_b_reg[13]\ => \gen_decoder[2].axisc_decoder_0_n_19\,
      \gen_AB_reg_slice.payload_b_reg[14]\ => \gen_decoder[2].axisc_decoder_0_n_18\,
      \gen_AB_reg_slice.payload_b_reg[15]\ => \gen_decoder[2].axisc_decoder_0_n_17\,
      \gen_AB_reg_slice.payload_b_reg[16]\ => \gen_decoder[2].axisc_decoder_0_n_16\,
      \gen_AB_reg_slice.payload_b_reg[17]\ => \gen_decoder[2].axisc_decoder_0_n_15\,
      \gen_AB_reg_slice.payload_b_reg[18]\ => \gen_decoder[2].axisc_decoder_0_n_14\,
      \gen_AB_reg_slice.payload_b_reg[19]\ => \gen_decoder[2].axisc_decoder_0_n_13\,
      \gen_AB_reg_slice.payload_b_reg[1]\ => \gen_decoder[2].axisc_decoder_0_n_31\,
      \gen_AB_reg_slice.payload_b_reg[20]\ => \gen_decoder[2].axisc_decoder_0_n_12\,
      \gen_AB_reg_slice.payload_b_reg[21]\ => \gen_decoder[2].axisc_decoder_0_n_11\,
      \gen_AB_reg_slice.payload_b_reg[22]\ => \gen_decoder[2].axisc_decoder_0_n_10\,
      \gen_AB_reg_slice.payload_b_reg[23]\ => \gen_decoder[2].axisc_decoder_0_n_9\,
      \gen_AB_reg_slice.payload_b_reg[24]\ => \gen_decoder[2].axisc_decoder_0_n_8\,
      \gen_AB_reg_slice.payload_b_reg[25]\ => \gen_decoder[2].axisc_decoder_0_n_7\,
      \gen_AB_reg_slice.payload_b_reg[2]\ => \gen_decoder[2].axisc_decoder_0_n_30\,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \gen_decoder[2].axisc_decoder_0_n_29\,
      \gen_AB_reg_slice.payload_b_reg[4]\ => \gen_decoder[2].axisc_decoder_0_n_28\,
      \gen_AB_reg_slice.payload_b_reg[5]\ => \gen_decoder[2].axisc_decoder_0_n_27\,
      \gen_AB_reg_slice.payload_b_reg[6]\ => \gen_decoder[2].axisc_decoder_0_n_26\,
      \gen_AB_reg_slice.payload_b_reg[7]\ => \gen_decoder[2].axisc_decoder_0_n_25\,
      \gen_AB_reg_slice.payload_b_reg[8]\ => \gen_decoder[2].axisc_decoder_0_n_24\,
      \gen_AB_reg_slice.payload_b_reg[9]\ => \gen_decoder[2].axisc_decoder_0_n_23\,
      \gen_AB_reg_slice.state_reg[0]\ => \gen_decoder[2].axisc_decoder_0_n_1\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      \gen_AB_reg_slice.state_reg[1]\ => s_axis_tready(2),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r\(2),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_2\(2),
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_0\,
      \gen_tdest_routing.busy_r_reg[3]_0\ => \gen_decoder[2].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[3]_1\(0) => \gen_tdest_routing.busy_ns_4\(3),
      m_axis_tready(1) => m_axis_tready(3),
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(2),
      s_decode_err(0) => s_decode_err(2)
    );
\gen_decoder[3].axisc_decoder_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_decoder__parameterized1\
     port map (
      D(25) => s_axis_tuser(3),
      D(24 downto 17) => s_axis_tdest(31 downto 24),
      D(16 downto 9) => s_axis_tid(31 downto 24),
      D(8) => s_axis_tlast(3),
      D(7 downto 0) => s_axis_tdata(31 downto 24),
      aclk => aclk,
      arb_gnt_i(3) => arb_gnt_i(15),
      arb_gnt_i(2) => arb_gnt_i(11),
      arb_gnt_i(1) => arb_gnt_i(7),
      arb_gnt_i(0) => arb_gnt_i(3),
      \arb_gnt_r[3]_i_3__1\ => \gen_decoder[0].axisc_decoder_0_n_8\,
      arb_sel_i(7 downto 0) => arb_sel_i(7 downto 0),
      areset => areset,
      \gen_AB_reg_slice.payload_b_reg[0]\ => \gen_decoder[3].axisc_decoder_0_n_13\,
      \gen_AB_reg_slice.payload_b_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_40\,
      \gen_AB_reg_slice.payload_b_reg[10]\ => \gen_decoder[3].axisc_decoder_0_n_30\,
      \gen_AB_reg_slice.payload_b_reg[11]\ => \gen_decoder[3].axisc_decoder_0_n_29\,
      \gen_AB_reg_slice.payload_b_reg[12]\ => \gen_decoder[3].axisc_decoder_0_n_28\,
      \gen_AB_reg_slice.payload_b_reg[13]\ => \gen_decoder[3].axisc_decoder_0_n_27\,
      \gen_AB_reg_slice.payload_b_reg[14]\ => \gen_decoder[3].axisc_decoder_0_n_26\,
      \gen_AB_reg_slice.payload_b_reg[15]\ => \gen_decoder[3].axisc_decoder_0_n_25\,
      \gen_AB_reg_slice.payload_b_reg[16]\ => \gen_decoder[3].axisc_decoder_0_n_24\,
      \gen_AB_reg_slice.payload_b_reg[17]\ => \gen_decoder[3].axisc_decoder_0_n_23\,
      \gen_AB_reg_slice.payload_b_reg[18]\ => \gen_decoder[3].axisc_decoder_0_n_22\,
      \gen_AB_reg_slice.payload_b_reg[19]\ => \gen_decoder[3].axisc_decoder_0_n_21\,
      \gen_AB_reg_slice.payload_b_reg[1]\ => \gen_decoder[3].axisc_decoder_0_n_3\,
      \gen_AB_reg_slice.payload_b_reg[1]_0\ => \gen_decoder[3].axisc_decoder_0_n_39\,
      \gen_AB_reg_slice.payload_b_reg[20]\ => \gen_decoder[3].axisc_decoder_0_n_20\,
      \gen_AB_reg_slice.payload_b_reg[21]\ => \gen_decoder[3].axisc_decoder_0_n_19\,
      \gen_AB_reg_slice.payload_b_reg[22]\ => \gen_decoder[3].axisc_decoder_0_n_18\,
      \gen_AB_reg_slice.payload_b_reg[23]\ => \gen_decoder[3].axisc_decoder_0_n_17\,
      \gen_AB_reg_slice.payload_b_reg[24]\ => \gen_decoder[3].axisc_decoder_0_n_16\,
      \gen_AB_reg_slice.payload_b_reg[25]\ => \gen_decoder[3].axisc_decoder_0_n_15\,
      \gen_AB_reg_slice.payload_b_reg[2]\ => \gen_decoder[3].axisc_decoder_0_n_5\,
      \gen_AB_reg_slice.payload_b_reg[2]_0\ => \gen_decoder[3].axisc_decoder_0_n_38\,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \gen_decoder[3].axisc_decoder_0_n_9\,
      \gen_AB_reg_slice.payload_b_reg[3]_0\ => \gen_decoder[3].axisc_decoder_0_n_11\,
      \gen_AB_reg_slice.payload_b_reg[3]_1\ => \gen_decoder[3].axisc_decoder_0_n_37\,
      \gen_AB_reg_slice.payload_b_reg[4]\ => \gen_decoder[3].axisc_decoder_0_n_36\,
      \gen_AB_reg_slice.payload_b_reg[5]\ => \gen_decoder[3].axisc_decoder_0_n_35\,
      \gen_AB_reg_slice.payload_b_reg[6]\ => \gen_decoder[3].axisc_decoder_0_n_34\,
      \gen_AB_reg_slice.payload_b_reg[7]\ => \gen_decoder[3].axisc_decoder_0_n_33\,
      \gen_AB_reg_slice.payload_b_reg[8]\ => \gen_decoder[3].axisc_decoder_0_n_32\,
      \gen_AB_reg_slice.payload_b_reg[9]\ => \gen_decoder[3].axisc_decoder_0_n_31\,
      \gen_AB_reg_slice.state[1]_i_2__2\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_12\,
      \gen_AB_reg_slice.state[1]_i_2__2_0\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_7\,
      \gen_AB_reg_slice.state_reg[0]\ => \gen_decoder[3].axisc_decoder_0_n_4\,
      \gen_AB_reg_slice.state_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_6\,
      \gen_AB_reg_slice.state_reg[0]_1\ => \gen_decoder[3].axisc_decoder_0_n_7\,
      \gen_AB_reg_slice.state_reg[0]_2\ => \gen_decoder[3].axisc_decoder_0_n_8\,
      \gen_AB_reg_slice.state_reg[1]\ => s_axis_tready(3),
      \gen_tdest_router.busy_r\(0) => \gen_tdest_router.busy_r_0\(3),
      \gen_tdest_router.busy_r_0\(0) => \gen_tdest_router.busy_r_1\(3),
      \gen_tdest_routing.busy_r_reg[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_12\,
      \gen_tdest_routing.busy_r_reg[0]_1\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_0\,
      \gen_tdest_routing.busy_r_reg[1]_0\ => \gen_decoder[3].axisc_decoder_0_n_1\,
      \gen_tdest_routing.busy_r_reg[1]_1\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_1\,
      \gen_tdest_routing.busy_r_reg[2]_0\ => \gen_decoder[3].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[2]_1\ => \gen_decoder[3].axisc_decoder_0_n_41\,
      \gen_tdest_routing.busy_r_reg[2]_2\ => \gen_transfer_mux[2].axisc_transfer_mux_0_n_1\,
      \gen_tdest_routing.busy_r_reg[3]_0\ => \gen_decoder[3].axisc_decoder_0_n_10\,
      \gen_tdest_routing.busy_r_reg[3]_1\(0) => \gen_tdest_routing.busy_ns_5\(3),
      m_axis_tready(3 downto 0) => m_axis_tready(3 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(3),
      s_decode_err(0) => s_decode_err(3)
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axis_switch_arbiter
     port map (
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_ns_3 => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_ns_4 => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_ns_5 => \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_0 => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_1 => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_2 => \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      \arb_gnt_r[3]_i_2__1\ => \gen_decoder[3].axisc_decoder_0_n_2\,
      \arb_gnt_r[3]_i_3__2\ => \gen_decoder[1].axisc_decoder_0_n_4\,
      \arb_gnt_r[3]_i_3__2_0\ => \gen_decoder[3].axisc_decoder_0_n_12\,
      \arb_gnt_r[3]_i_3__2_1\ => \gen_decoder[2].axisc_decoder_0_n_5\,
      \arb_gnt_r[3]_i_4__0\ => \gen_decoder[3].axisc_decoder_0_n_7\,
      \arb_gnt_r[3]_i_4__0_0\ => \gen_decoder[0].axisc_decoder_0_n_7\,
      \arb_gnt_r[3]_i_4__0_1\ => \gen_decoder[3].axisc_decoder_0_n_1\,
      \arb_gnt_r[3]_i_4__1\ => \gen_decoder[0].axisc_decoder_0_n_8\,
      \arb_gnt_r[3]_i_4__1_0\ => \gen_decoder[3].axisc_decoder_0_n_4\,
      \arb_gnt_r[3]_i_4__1_1\ => \gen_decoder[0].axisc_decoder_0_n_9\,
      \arb_gnt_r_reg[0]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\,
      \arb_gnt_r_reg[2]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142\,
      \arb_gnt_r_reg[2]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143\,
      \arb_gnt_r_reg[2]_1\ => \gen_decoder[3].axisc_decoder_0_n_9\,
      \arb_gnt_r_reg[2]_2\ => \gen_decoder[1].axisc_decoder_0_n_1\,
      \arb_gnt_r_reg[2]_3\ => \gen_decoder[2].axisc_decoder_0_n_1\,
      \arb_gnt_r_reg[2]_4\ => \gen_decoder[0].axisc_decoder_0_n_3\,
      \arb_gnt_r_reg[2]_5\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_13\,
      \arb_gnt_r_reg[3]\(14 downto 10) => arb_gnt_i(15 downto 11),
      \arb_gnt_r_reg[3]\(9 downto 0) => arb_gnt_i(9 downto 0),
      arb_sel_i(7 downto 0) => arb_sel_i(7 downto 0),
      arb_sel_r0 => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      arb_sel_r0_7 => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      arb_sel_r0_9 => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      \arb_sel_r_reg[0]\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_0\,
      \arb_sel_r_reg[0]_0\ => \gen_decoder[0].axisc_decoder_0_n_1\,
      areset => areset,
      areset_reg_0 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6\,
      areset_reg_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23\,
      areset_reg_2 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35\,
      areset_reg_3 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37\,
      aresetn => aresetn,
      \gen_AB_reg_slice.payload_b_reg[3]\ => \^m_axis_tvalid\(3),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ => \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_decoder[3].axisc_decoder_0_n_8\,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ => \gen_decoder[3].axisc_decoder_0_n_6\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ => \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r_2\(3 downto 0),
      \gen_tdest_router.busy_r_10\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      \gen_tdest_router.busy_r_6\(2 downto 1) => \gen_tdest_router.busy_r_0\(3 downto 2),
      \gen_tdest_router.busy_r_6\(0) => \gen_tdest_router.busy_r_0\(0),
      \gen_tdest_router.busy_r_8\(3 downto 0) => \gen_tdest_router.busy_r_1\(3 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      \m_axis_tdata[24]_0\ => \gen_decoder[0].axisc_decoder_0_n_36\,
      \m_axis_tdata[24]_1\ => \gen_decoder[1].axisc_decoder_0_n_32\,
      \m_axis_tdata[24]_2\ => \gen_decoder[3].axisc_decoder_0_n_40\,
      \m_axis_tdata[25]_0\ => \gen_decoder[3].axisc_decoder_0_n_39\,
      \m_axis_tdata[25]_1\ => \gen_decoder[1].axisc_decoder_0_n_31\,
      \m_axis_tdata[25]_2\ => \gen_decoder[0].axisc_decoder_0_n_35\,
      \m_axis_tdata[26]_0\ => \gen_decoder[3].axisc_decoder_0_n_38\,
      \m_axis_tdata[26]_1\ => \gen_decoder[1].axisc_decoder_0_n_30\,
      \m_axis_tdata[26]_2\ => \gen_decoder[0].axisc_decoder_0_n_34\,
      \m_axis_tdata[27]_0\ => \gen_decoder[0].axisc_decoder_0_n_33\,
      \m_axis_tdata[27]_1\ => \gen_decoder[1].axisc_decoder_0_n_29\,
      \m_axis_tdata[27]_2\ => \gen_decoder[3].axisc_decoder_0_n_37\,
      \m_axis_tdata[28]_0\ => \gen_decoder[3].axisc_decoder_0_n_36\,
      \m_axis_tdata[28]_1\ => \gen_decoder[1].axisc_decoder_0_n_28\,
      \m_axis_tdata[28]_2\ => \gen_decoder[0].axisc_decoder_0_n_32\,
      \m_axis_tdata[29]_0\ => \gen_decoder[0].axisc_decoder_0_n_31\,
      \m_axis_tdata[29]_1\ => \gen_decoder[1].axisc_decoder_0_n_27\,
      \m_axis_tdata[29]_2\ => \gen_decoder[3].axisc_decoder_0_n_35\,
      \m_axis_tdata[30]_0\ => \gen_decoder[0].axisc_decoder_0_n_30\,
      \m_axis_tdata[30]_1\ => \gen_decoder[1].axisc_decoder_0_n_26\,
      \m_axis_tdata[30]_2\ => \gen_decoder[3].axisc_decoder_0_n_34\,
      \m_axis_tdata[31]_0\ => \gen_decoder[3].axisc_decoder_0_n_33\,
      \m_axis_tdata[31]_1\ => \gen_decoder[1].axisc_decoder_0_n_25\,
      \m_axis_tdata[31]_2\ => \gen_decoder[0].axisc_decoder_0_n_29\,
      m_axis_tdata_24_sp_1 => \gen_decoder[2].axisc_decoder_0_n_32\,
      m_axis_tdata_25_sp_1 => \gen_decoder[2].axisc_decoder_0_n_31\,
      m_axis_tdata_26_sp_1 => \gen_decoder[2].axisc_decoder_0_n_30\,
      m_axis_tdata_27_sp_1 => \gen_decoder[2].axisc_decoder_0_n_29\,
      m_axis_tdata_28_sp_1 => \gen_decoder[2].axisc_decoder_0_n_28\,
      m_axis_tdata_29_sp_1 => \gen_decoder[2].axisc_decoder_0_n_27\,
      m_axis_tdata_30_sp_1 => \gen_decoder[2].axisc_decoder_0_n_26\,
      m_axis_tdata_31_sp_1 => \gen_decoder[2].axisc_decoder_0_n_25\,
      m_axis_tdest(31 downto 0) => m_axis_tdest(31 downto 0),
      \m_axis_tdest[24]_0\ => \gen_decoder[3].axisc_decoder_0_n_23\,
      \m_axis_tdest[24]_1\ => \gen_decoder[1].axisc_decoder_0_n_15\,
      \m_axis_tdest[24]_2\ => \gen_decoder[0].axisc_decoder_0_n_19\,
      \m_axis_tdest[25]_0\ => \gen_decoder[3].axisc_decoder_0_n_22\,
      \m_axis_tdest[25]_1\ => \gen_decoder[1].axisc_decoder_0_n_14\,
      \m_axis_tdest[25]_2\ => \gen_decoder[0].axisc_decoder_0_n_18\,
      \m_axis_tdest[26]_0\ => \gen_decoder[0].axisc_decoder_0_n_17\,
      \m_axis_tdest[26]_1\ => \gen_decoder[1].axisc_decoder_0_n_13\,
      \m_axis_tdest[26]_2\ => \gen_decoder[3].axisc_decoder_0_n_21\,
      \m_axis_tdest[27]_0\ => \gen_decoder[3].axisc_decoder_0_n_20\,
      \m_axis_tdest[27]_1\ => \gen_decoder[1].axisc_decoder_0_n_12\,
      \m_axis_tdest[27]_2\ => \gen_decoder[0].axisc_decoder_0_n_16\,
      \m_axis_tdest[28]_0\ => \gen_decoder[0].axisc_decoder_0_n_15\,
      \m_axis_tdest[28]_1\ => \gen_decoder[1].axisc_decoder_0_n_11\,
      \m_axis_tdest[28]_2\ => \gen_decoder[3].axisc_decoder_0_n_19\,
      \m_axis_tdest[29]_0\ => \gen_decoder[0].axisc_decoder_0_n_14\,
      \m_axis_tdest[29]_1\ => \gen_decoder[1].axisc_decoder_0_n_10\,
      \m_axis_tdest[29]_2\ => \gen_decoder[3].axisc_decoder_0_n_18\,
      \m_axis_tdest[30]_0\ => \gen_decoder[3].axisc_decoder_0_n_17\,
      \m_axis_tdest[30]_1\ => \gen_decoder[1].axisc_decoder_0_n_9\,
      \m_axis_tdest[30]_2\ => \gen_decoder[0].axisc_decoder_0_n_13\,
      \m_axis_tdest[31]_0\ => \gen_decoder[3].axisc_decoder_0_n_16\,
      \m_axis_tdest[31]_1\ => \gen_decoder[1].axisc_decoder_0_n_8\,
      \m_axis_tdest[31]_2\ => \gen_decoder[0].axisc_decoder_0_n_12\,
      m_axis_tdest_24_sp_1 => \gen_decoder[2].axisc_decoder_0_n_15\,
      m_axis_tdest_25_sp_1 => \gen_decoder[2].axisc_decoder_0_n_14\,
      m_axis_tdest_26_sp_1 => \gen_decoder[2].axisc_decoder_0_n_13\,
      m_axis_tdest_27_sp_1 => \gen_decoder[2].axisc_decoder_0_n_12\,
      m_axis_tdest_28_sp_1 => \gen_decoder[2].axisc_decoder_0_n_11\,
      m_axis_tdest_29_sp_1 => \gen_decoder[2].axisc_decoder_0_n_10\,
      m_axis_tdest_30_sp_1 => \gen_decoder[2].axisc_decoder_0_n_9\,
      m_axis_tdest_31_sp_1 => \gen_decoder[2].axisc_decoder_0_n_8\,
      m_axis_tid(31 downto 0) => m_axis_tid(31 downto 0),
      \m_axis_tid[24]_0\ => \gen_decoder[0].axisc_decoder_0_n_27\,
      \m_axis_tid[24]_1\ => \gen_decoder[1].axisc_decoder_0_n_23\,
      \m_axis_tid[24]_2\ => \gen_decoder[3].axisc_decoder_0_n_31\,
      \m_axis_tid[25]_0\ => \gen_decoder[3].axisc_decoder_0_n_30\,
      \m_axis_tid[25]_1\ => \gen_decoder[1].axisc_decoder_0_n_22\,
      \m_axis_tid[25]_2\ => \gen_decoder[0].axisc_decoder_0_n_26\,
      \m_axis_tid[26]_0\ => \gen_decoder[0].axisc_decoder_0_n_25\,
      \m_axis_tid[26]_1\ => \gen_decoder[1].axisc_decoder_0_n_21\,
      \m_axis_tid[26]_2\ => \gen_decoder[3].axisc_decoder_0_n_29\,
      \m_axis_tid[27]_0\ => \gen_decoder[0].axisc_decoder_0_n_24\,
      \m_axis_tid[27]_1\ => \gen_decoder[1].axisc_decoder_0_n_20\,
      \m_axis_tid[27]_2\ => \gen_decoder[3].axisc_decoder_0_n_28\,
      \m_axis_tid[28]_0\ => \gen_decoder[0].axisc_decoder_0_n_23\,
      \m_axis_tid[28]_1\ => \gen_decoder[1].axisc_decoder_0_n_19\,
      \m_axis_tid[28]_2\ => \gen_decoder[3].axisc_decoder_0_n_27\,
      \m_axis_tid[29]_0\ => \gen_decoder[0].axisc_decoder_0_n_22\,
      \m_axis_tid[29]_1\ => \gen_decoder[1].axisc_decoder_0_n_18\,
      \m_axis_tid[29]_2\ => \gen_decoder[3].axisc_decoder_0_n_26\,
      \m_axis_tid[30]_0\ => \gen_decoder[0].axisc_decoder_0_n_21\,
      \m_axis_tid[30]_1\ => \gen_decoder[1].axisc_decoder_0_n_17\,
      \m_axis_tid[30]_2\ => \gen_decoder[3].axisc_decoder_0_n_25\,
      \m_axis_tid[31]_0\ => \gen_decoder[0].axisc_decoder_0_n_20\,
      \m_axis_tid[31]_1\ => \gen_decoder[1].axisc_decoder_0_n_16\,
      \m_axis_tid[31]_2\ => \gen_decoder[3].axisc_decoder_0_n_24\,
      m_axis_tid_24_sp_1 => \gen_decoder[2].axisc_decoder_0_n_23\,
      m_axis_tid_25_sp_1 => \gen_decoder[2].axisc_decoder_0_n_22\,
      m_axis_tid_26_sp_1 => \gen_decoder[2].axisc_decoder_0_n_21\,
      m_axis_tid_27_sp_1 => \gen_decoder[2].axisc_decoder_0_n_20\,
      m_axis_tid_28_sp_1 => \gen_decoder[2].axisc_decoder_0_n_19\,
      m_axis_tid_29_sp_1 => \gen_decoder[2].axisc_decoder_0_n_18\,
      m_axis_tid_30_sp_1 => \gen_decoder[2].axisc_decoder_0_n_17\,
      m_axis_tid_31_sp_1 => \gen_decoder[2].axisc_decoder_0_n_16\,
      m_axis_tlast(3 downto 0) => m_axis_tlast(3 downto 0),
      \m_axis_tlast[3]_0\ => \gen_decoder[3].axisc_decoder_0_n_32\,
      \m_axis_tlast[3]_1\ => \gen_decoder[1].axisc_decoder_0_n_24\,
      \m_axis_tlast[3]_2\ => \gen_decoder[0].axisc_decoder_0_n_28\,
      m_axis_tlast_3_sp_1 => \gen_decoder[2].axisc_decoder_0_n_24\,
      m_axis_tready(3 downto 0) => m_axis_tready(3 downto 0),
      m_axis_tready_1_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145\,
      m_axis_tready_2_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146\,
      m_axis_tready_3_sp_1 => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144\,
      m_axis_tuser(3 downto 0) => m_axis_tuser(3 downto 0),
      \m_axis_tuser[3]_0\ => \gen_decoder[0].axisc_decoder_0_n_11\,
      \m_axis_tuser[3]_1\ => \gen_decoder[1].axisc_decoder_0_n_7\,
      \m_axis_tuser[3]_2\ => \gen_decoder[3].axisc_decoder_0_n_15\,
      m_axis_tuser_3_sp_1 => \gen_decoder[2].axisc_decoder_0_n_7\,
      m_axis_tvalid(2 downto 0) => \^m_axis_tvalid\(2 downto 0),
      \m_axis_tvalid[0]_0\ => \gen_decoder[3].axisc_decoder_0_n_13\,
      \m_axis_tvalid[0]_1\ => \gen_decoder[2].axisc_decoder_0_n_4\,
      \m_axis_tvalid[1]_0\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_6\,
      \m_axis_tvalid[1]_1\ => \gen_decoder[0].axisc_decoder_0_n_5\,
      \m_axis_tvalid[2]_0\ => \gen_decoder[0].axisc_decoder_0_n_4\,
      \m_axis_tvalid[3]\ => \gen_decoder[3].axisc_decoder_0_n_11\,
      \m_axis_tvalid[3]_0\ => \gen_decoder[0].axisc_decoder_0_n_6\,
      \m_axis_tvalid[3]_1\ => \gen_decoder[1].axisc_decoder_0_n_3\,
      \m_axis_tvalid[3]_2\ => \gen_decoder[2].axisc_decoder_0_n_3\,
      m_axis_tvalid_0_sp_1 => \gen_decoder[1].axisc_decoder_0_n_5\,
      m_axis_tvalid_1_sp_1 => \gen_decoder[3].axisc_decoder_0_n_3\,
      m_axis_tvalid_2_sp_1 => \gen_decoder[3].axisc_decoder_0_n_5\
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux
     port map (
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_reg => \gen_decoder[2].axisc_decoder_0_n_33\,
      arb_sel_r0 => \gen_mi_arb[0].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      areset => areset,
      \busy_r_reg[3]\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_7\,
      \busy_r_reg[3]_0\(3 downto 0) => arb_gnt_i(3 downto 0),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\ => \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt0\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_37\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ => \gen_transfer_mux[0].axisc_transfer_mux_0_n_0\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r\(3 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tvalid(0) => \^m_axis_tvalid\(0)
    );
\gen_transfer_mux[1].axisc_transfer_mux_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0\
     port map (
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_reg => \gen_decoder[3].axisc_decoder_0_n_7\,
      arb_busy_r_reg_0 => \gen_decoder[0].axisc_decoder_0_n_7\,
      \arb_gnt_r_reg[1]\ => \gen_decoder[0].axisc_decoder_0_n_37\,
      arb_sel_r0 => \gen_mi_arb[1].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      areset => areset,
      \busy_r_reg[0]\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_2\,
      \busy_r_reg[2]\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_6\,
      \busy_r_reg[2]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_143\,
      \busy_r_reg[3]\(2 downto 1) => \gen_tdest_router.busy_r_0\(3 downto 2),
      \busy_r_reg[3]\(0) => \gen_tdest_router.busy_r_0\(0),
      \busy_r_reg[3]_0\(3 downto 0) => arb_gnt_i(7 downto 4),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_145\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_23\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ => \gen_transfer_mux[1].axisc_transfer_mux_0_n_1\,
      m_axis_tvalid(0) => \^m_axis_tvalid\(1)
    );
\gen_transfer_mux[2].axisc_transfer_mux_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized0_1\
     port map (
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_reg => \gen_decoder[0].axisc_decoder_0_n_8\,
      arb_busy_r_reg_0 => \gen_decoder[3].axisc_decoder_0_n_4\,
      \arb_gnt_r_reg[1]\ => \gen_decoder[3].axisc_decoder_0_n_41\,
      arb_sel_r0 => \gen_mi_arb[2].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_sel_r0\,
      areset => areset,
      \busy_r_reg[2]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_142\,
      \busy_r_reg[3]\(2) => arb_gnt_i(11),
      \busy_r_reg[3]\(1 downto 0) => arb_gnt_i(9 downto 8),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_146\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_35\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\ => \gen_transfer_mux[2].axisc_transfer_mux_0_n_1\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r_1\(3 downto 0),
      m_axis_tvalid(0) => \^m_axis_tvalid\(2)
    );
\gen_transfer_mux[3].axisc_transfer_mux_0\: entity work.\axis_switch_swifsaxis_switch_v1_1_29_axisc_transfer_mux__parameterized1\
     port map (
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[3].gen_arb_algorithm.gen_round_robin.inst_arb_rr_0/arb_busy_r\,
      arb_busy_r_reg => \gen_decoder[0].axisc_decoder_0_n_1\,
      areset => areset,
      \busy_r_reg[0]\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_7\,
      \busy_r_reg[0]_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_7\,
      \busy_r_reg[3]\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_12\,
      \busy_r_reg[3]_0\(3 downto 0) => arb_gnt_i(15 downto 12),
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_0\,
      \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg_0\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_144\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[10]\ => \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_29_axis_switch_arbiter_n_6\,
      \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\ => \gen_tdest_router.axisc_arb_responder/gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r\,
      \gen_tdest_router.busy_r\(3 downto 0) => \gen_tdest_router.busy_r_2\(3 downto 0),
      \gen_tdest_routing.busy_r_reg[3]\(0) => \gen_tdest_routing.busy_ns_5\(3),
      \gen_tdest_routing.busy_r_reg[3]_0\(0) => \gen_tdest_routing.busy_ns_4\(3),
      \gen_tdest_routing.busy_r_reg[3]_1\(0) => \gen_tdest_routing.busy_ns_3\(3),
      \gen_tdest_routing.busy_r_reg[3]_2\(0) => \gen_tdest_routing.busy_ns\(3),
      \gen_tdest_routing.busy_r_reg[3]_3\ => \gen_decoder[3].axisc_decoder_0_n_10\,
      \gen_tdest_routing.busy_r_reg[3]_4\ => \gen_decoder[2].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[3]_5\ => \gen_decoder[1].axisc_decoder_0_n_2\,
      \gen_tdest_routing.busy_r_reg[3]_6\ => \gen_decoder[0].axisc_decoder_0_n_2\,
      m_axis_tready(0) => m_axis_tready(3),
      \m_axis_tready[3]\ => \gen_transfer_mux[3].axisc_transfer_mux_0_n_13\,
      m_axis_tvalid(0) => \^m_axis_tvalid\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axis_switch_swifs is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axis_switch_swifs : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_switch_swifs : entity is "axis_switch_swifs,axis_switch_v1_1_29_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_switch_swifs : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_switch_swifs : entity is "axis_switch_v1_1_29_axis_switch,Vivado 2023.2";
end axis_switch_swifs;

architecture STRUCTURE of axis_switch_swifs is
  signal NLW_inst_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 5;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 1024;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 243;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 8;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 8;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : integer;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is 50462976;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "16'b1111100110011110";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : integer;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is 50462976;
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 4;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 4;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 0;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 40;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 1;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "16'b1111100110011110";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "4'b0000";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 26;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [7:0] [31:24]";
  attribute X_INTERFACE_INFO of m_axis_tdest : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [7:0] [31:24]";
  attribute X_INTERFACE_INFO of m_axis_tid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TID [7:0] [7:0], xilinx.com:interface:axis:1.0 M01_AXIS TID [7:0] [15:8], xilinx.com:interface:axis:1.0 M02_AXIS TID [7:0] [23:16], xilinx.com:interface:axis:1.0 M03_AXIS TID [7:0] [31:24]";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of m_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TUSER [0:0] [3:3]";
  attribute X_INTERFACE_PARAMETER of m_axis_tuser : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axis_tdest : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TID [7:0] [7:0], xilinx.com:interface:axis:1.0 S01_AXIS TID [7:0] [15:8], xilinx.com:interface:axis:1.0 S02_AXIS TID [7:0] [23:16], xilinx.com:interface:axis:1.0 S03_AXIS TID [7:0] [31:24]";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3]";
  attribute X_INTERFACE_INFO of s_axis_tuser : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TUSER [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TUSER [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TUSER [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TUSER [0:0] [3:3]";
  attribute X_INTERFACE_PARAMETER of s_axis_tuser : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S02_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 8, TID_WIDTH 8, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3]";
begin
inst: entity work.axis_switch_swifsaxis_switch_v1_1_29_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(127 downto 0) => NLW_inst_arb_dest_UNCONNECTED(127 downto 0),
      arb_done(3 downto 0) => NLW_inst_arb_done_UNCONNECTED(3 downto 0),
      arb_gnt(15 downto 0) => B"0000000000000000",
      arb_id(127 downto 0) => NLW_inst_arb_id_UNCONNECTED(127 downto 0),
      arb_last(15 downto 0) => NLW_inst_arb_last_UNCONNECTED(15 downto 0),
      arb_req(15 downto 0) => NLW_inst_arb_req_UNCONNECTED(15 downto 0),
      arb_sel(7 downto 0) => B"00000000",
      arb_user(15 downto 0) => NLW_inst_arb_user_UNCONNECTED(15 downto 0),
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(31 downto 0) => m_axis_tdest(31 downto 0),
      m_axis_tid(31 downto 0) => m_axis_tid(31 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast(3 downto 0) => m_axis_tlast(3 downto 0),
      m_axis_tready(3 downto 0) => m_axis_tready(3 downto 0),
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => m_axis_tuser(3 downto 0),
      m_axis_tvalid(3 downto 0) => m_axis_tvalid(3 downto 0),
      s_axi_ctrl_aclk => '0',
      s_axi_ctrl_araddr(6 downto 0) => B"0000000",
      s_axi_ctrl_aresetn => '0',
      s_axi_ctrl_arready => NLW_inst_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(6 downto 0) => B"0000000",
      s_axi_ctrl_awready => NLW_inst_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_inst_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_inst_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_inst_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_inst_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_inst_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_wready => NLW_inst_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tdest(31 downto 0) => s_axis_tdest(31 downto 0),
      s_axis_tid(31 downto 0) => s_axis_tid(31 downto 0),
      s_axis_tkeep(3 downto 0) => B"1111",
      s_axis_tlast(3 downto 0) => s_axis_tlast(3 downto 0),
      s_axis_tready(3 downto 0) => s_axis_tready(3 downto 0),
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tuser(3 downto 0) => s_axis_tuser(3 downto 0),
      s_axis_tvalid(3 downto 0) => s_axis_tvalid(3 downto 0),
      s_decode_err(3 downto 0) => s_decode_err(3 downto 0),
      s_req_suppress(3 downto 0) => B"0000"
    );
end STRUCTURE;
