// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
// Date        : Sun Sep 25 20:22:40 2016
// Host        : saurabh running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/saurabh/Desktop/project_final_dsp/project_final_dsp.srcs/sources_1/ip/xbip_dsp48_macro_1/xbip_dsp48_macro_1_funcsim.v
// Design      : xbip_dsp48_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2014.3.1" *) (* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_1,xbip_dsp48_macro_v3_0,{}" *) 
(* core_generation_info = "xbip_dsp48_macro_1,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=1,C_A_WIDTH=4,C_B_WIDTH=4,C_C_WIDTH=8,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=8,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000000000011010100000000,C_REG_CONFIG=00000000000011100011100011000100,C_TEST_CORE=0}" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_1
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  input [3:0]A;
  input [3:0]B;
  input [7:0]C;
  output [8:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire [7:0]C;
  wire CLK;
  wire [8:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

(* C_A_WIDTH = "4" *) 
   (* C_B_WIDTH = "4" *) 
   (* C_CONCAT_WIDTH = "48" *) 
   (* C_CONSTANT_1 = "1" *) 
   (* C_C_WIDTH = "8" *) 
   (* C_D_WIDTH = "18" *) 
   (* C_HAS_A = "1" *) 
   (* C_HAS_ACIN = "0" *) 
   (* C_HAS_ACOUT = "0" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_BCIN = "0" *) 
   (* C_HAS_BCOUT = "0" *) 
   (* C_HAS_C = "1" *) 
   (* C_HAS_CARRYCASCIN = "0" *) 
   (* C_HAS_CARRYCASCOUT = "0" *) 
   (* C_HAS_CARRYIN = "0" *) 
   (* C_HAS_CARRYOUT = "0" *) 
   (* C_HAS_CE = "0" *) 
   (* C_HAS_CEA = "0" *) 
   (* C_HAS_CEB = "0" *) 
   (* C_HAS_CEC = "0" *) 
   (* C_HAS_CECONCAT = "0" *) 
   (* C_HAS_CED = "0" *) 
   (* C_HAS_CEM = "0" *) 
   (* C_HAS_CEP = "0" *) 
   (* C_HAS_CESEL = "0" *) 
   (* C_HAS_CONCAT = "0" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_INDEP_CE = "0" *) 
   (* C_HAS_INDEP_SCLR = "0" *) 
   (* C_HAS_PCIN = "0" *) 
   (* C_HAS_PCOUT = "0" *) 
   (* C_HAS_SCLR = "0" *) 
   (* C_HAS_SCLRA = "0" *) 
   (* C_HAS_SCLRB = "0" *) 
   (* C_HAS_SCLRC = "0" *) 
   (* C_HAS_SCLRCONCAT = "0" *) 
   (* C_HAS_SCLRD = "0" *) 
   (* C_HAS_SCLRM = "0" *) 
   (* C_HAS_SCLRP = "0" *) 
   (* C_HAS_SCLRSEL = "0" *) 
   (* C_LATENCY = "128" *) 
   (* C_MODEL_TYPE = "0" *) 
   (* C_OPMODES = "000000000011010100000000" *) 
   (* C_P_LSB = "0" *) 
   (* C_P_MSB = "8" *) 
   (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
   (* C_SEL_WIDTH = "0" *) 
   (* C_TEST_CORE = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   xbip_dsp48_macro_1_xbip_dsp48_macro_v3_0__parameterized0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* C_VERBOSITY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* C_HAS_CE = "0" *) (* C_HAS_INDEP_CE = "0" *) 
(* C_HAS_CED = "0" *) (* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) 
(* C_HAS_CEC = "0" *) (* C_HAS_CECONCAT = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_INDEP_SCLR = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRA = "0" *) 
(* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRSEL = "0" *) 
(* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYIN = "0" *) (* C_HAS_ACIN = "0" *) 
(* C_HAS_BCIN = "0" *) (* C_HAS_PCIN = "0" *) (* C_HAS_A = "1" *) 
(* C_HAS_B = "1" *) (* C_HAS_D = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_C = "1" *) (* C_A_WIDTH = "4" *) (* C_B_WIDTH = "4" *) 
(* C_C_WIDTH = "8" *) (* C_D_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_P_MSB = "8" *) (* C_P_LSB = "0" *) (* C_SEL_WIDTH = "0" *) 
(* C_HAS_ACOUT = "0" *) (* C_HAS_BCOUT = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYOUT = "0" *) (* C_HAS_PCOUT = "0" *) (* C_CONSTANT_1 = "1" *) 
(* C_LATENCY = "128" *) (* C_OPMODES = "000000000011010100000000" *) (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
(* C_TEST_CORE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_1_xbip_dsp48_macro_v3_0__parameterized0
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [3:0]A;
  input [3:0]B;
  input [7:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [8:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [3:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [3:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [7:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [8:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

(* C_A_WIDTH = "4" *) 
   (* C_B_WIDTH = "4" *) 
   (* C_CONCAT_WIDTH = "48" *) 
   (* C_CONSTANT_1 = "1" *) 
   (* C_C_WIDTH = "8" *) 
   (* C_D_WIDTH = "18" *) 
   (* C_HAS_A = "1" *) 
   (* C_HAS_ACIN = "0" *) 
   (* C_HAS_ACOUT = "0" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_BCIN = "0" *) 
   (* C_HAS_BCOUT = "0" *) 
   (* C_HAS_C = "1" *) 
   (* C_HAS_CARRYCASCIN = "0" *) 
   (* C_HAS_CARRYCASCOUT = "0" *) 
   (* C_HAS_CARRYIN = "0" *) 
   (* C_HAS_CARRYOUT = "0" *) 
   (* C_HAS_CE = "0" *) 
   (* C_HAS_CEA = "0" *) 
   (* C_HAS_CEB = "0" *) 
   (* C_HAS_CEC = "0" *) 
   (* C_HAS_CECONCAT = "0" *) 
   (* C_HAS_CED = "0" *) 
   (* C_HAS_CEM = "0" *) 
   (* C_HAS_CEP = "0" *) 
   (* C_HAS_CESEL = "0" *) 
   (* C_HAS_CONCAT = "0" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_INDEP_CE = "0" *) 
   (* C_HAS_INDEP_SCLR = "0" *) 
   (* C_HAS_PCIN = "0" *) 
   (* C_HAS_PCOUT = "0" *) 
   (* C_HAS_SCLR = "0" *) 
   (* C_HAS_SCLRA = "0" *) 
   (* C_HAS_SCLRB = "0" *) 
   (* C_HAS_SCLRC = "0" *) 
   (* C_HAS_SCLRCONCAT = "0" *) 
   (* C_HAS_SCLRD = "0" *) 
   (* C_HAS_SCLRM = "0" *) 
   (* C_HAS_SCLRP = "0" *) 
   (* C_HAS_SCLRSEL = "0" *) 
   (* C_LATENCY = "128" *) 
   (* C_MODEL_TYPE = "0" *) 
   (* C_OPMODES = "000000000011010100000000" *) 
   (* C_P_LSB = "0" *) 
   (* C_P_MSB = "8" *) 
   (* C_REG_CONFIG = "00000000000011100011100011000100" *) 
   (* C_SEL_WIDTH = "0" *) 
   (* C_TEST_CORE = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   xbip_dsp48_macro_1_xbip_dsp48_macro_v3_0_viv__parameterized0 i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
ZT7+RCzMGpoBYSuObDu7GHIWP4wbG2z0+NZPy5ctMvSzcpDtYTeVa9Rt2jwWGft47o5EJP3ckUaz
ga/PA8jA7w==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
Nez6Bl347nb6+rwYEAGUgNCAGAzNmFU5MeAC9+3K2UzYt8qxPFrJ/SFJLhvmq05ak2WdPG0DC6DY
KQm2he2dsLt5QsRiFYmj2xAL1KdqCGiHsVFY+u/PuU8GEcfn2GTMt2pBI+06udHlKRy3Gt2+icT+
Rzwp56VKG96Z/MuGTf4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
bJ23shOZkE3PVggRHLeGJ2PbG8xrPMkBPZCJ8ZYfdCaWhZ4ZYd1C1zb43X+ojqULL2oHyUgAMgSj
ecIJtiACC+HQhYS9ZAedcNObDtyg4oslk+vfdk+TM2FZF2Etrw/yAEbq1f/PH0Kn+mbNEo33Zwe5
Rm8FZ1wDWOyOXh016tcp0RwCvdj2XR1Kw/zAigz9XUFsy0aJtcUXIJIlKcvvsjSATgFtlJhxEDo0
pnsWRjWP0UYdXkfmSQNXFz8qVRQRGSAtue/7tEuKBK7i+2io/Fn8ReAkkGJiWskeE9nOr9dx+4DE
9tfPWFjj0ZgyCy6JPKhTrEZyje87nH/0x9mcFA==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
dilSTjuujT5h2DrLDbS/v0rUBHgSqc1odhqH2k0dTfIZcb7N2jGBdTrXFekiehlmoGDjU9sGGdlh
yFg/bT9j8pTdVb3lIkuOyMiLP0CoFYVl1z2IegKN7b9yFR+7EZbxn0N/B1ycLjS4ssnQq+SGbWl2
k2N7LLrQtkLu5td7xjU=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
pVPXt9t5C8qS/9IP6M6Y37REfDMW0SGfG45oP1DNSuCggimX25Htte0JNMgNJo8ar+6qTjWsopD4
IXOQzxTzbzczkdAIs6+pl9RpNOeJpa0bvybm+uwfWb8+Rcnz3NLflVxnmjLM1ayKKYARNVh7gQb9
C4SQt1FdooQ2JWlTXbp3V2aZpvw5F49u06L9Z5ayEEDdOQE/HQgnVfIryQKYB8stQTSh++L7A6Hi
fnnwsPjJQ2SynIHMSopYLmrhF02KU9HJ3WVKZ+nUrhCKV9djJvyWE9gZFn3X/nfyIkmo23lpYTgC
rYvCI0W4K/uiiwV05xGsCFhMYz37LiZv5/YMUw==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
JmoKb6EWl6uXv2jo6qPTNUE/JeszSB/p4VHMQgpS4tKcazqLh4o8TAEB7CAtmWkY/3L2aTlsg84V
nz4vkwFBgLOyXBNkfKTAvu7cI4bcOoa4HcUT0YZ/YAzxxdJZDC1/BkjNKLy9j0XEAR+7nKTSWw5t
p7zalQloFkrhtF2Ml/veqUlDsHlG93winmliLuuOkhaJJhBS5N4xHyG00QsRyeWXiebGWQcm7pam
CKJ0HDoVg6aI63AH+eMJvGtLjj73sGis7vJTGYAO4RmTrIjs5OGyu2BpKEZUdBcPmn8GBkbOQmjT
fKouqvOMQhkKdafrq7YJ9m0OogSSTZng+MVc8A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
TG0Lhzc4sMKC8notV0W6muBNh9Ihc26o1bW5COnLL0nnHC7RdkR/CawA3NmykvXrYyI7+xV2IHR+
02v1sa5BY2gOQZFL2Dk0OLCH07cFRwgFg7vBs97oI6TRv/L1phSGSDcTIrHSEqib3U+kLa5dnu3i
1h71mt74e3ZUkmqttk6SHNBNVR3XYYFZGmHun/xAnUQdORRhp+Rd+wxLH9q6E0141TiqAzJDk2V6
p4sEtL+nlCsWExhN9vkb8hd5RsmgVaZSkwJ+rztBDxa0ij5JMMh8hH7y+40noLxDeOYuD1rgQJrS
gV1RRyqvejF4A1pSk+FgnejfVzLChJ3kd5kD4A==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10832)
`pragma protect data_block
G02A7yFgE7faIxAIc81iWQOg2BpavX5o9T6OxZ8ZZUo7NWkZetlwsN3REBgD1KDFIXfaVoDcdFt5
BUVoBHZ3UozYSXuFM+oJXNsSH151SdE+dCtur1ih8LQ485sbLyEmHPVVZre6JZEQnlzIRP0HIcIQ
i3VNkWCNvT8w4wsmC5YuszBqzD7YujVtkC4EcQZ9TsQA/XVGVmXWRi9NjRuzoiC4uc1nGdLysqvE
XnV2hrJgtzS0VAhvR//XPxfpB0P4c+UbBgeAu2RqqSu7mpfGY5Ym237a2sdBZqPP2URMHhFBVLjK
nYyMqkwGWLfLydJTWpqrtqkqN/XEeHhs61lfX4EXHDjPYpKaAjlpATko5XEPAfk8o9TZkWqZdt5v
qPP5kRWwTHjObZUvCuj7TI+xeaPlu79wOp8JtuPvrqbuh7Yti/eVHnq570GsJ7Gdg8HN1i4wVLVd
/cibXtT3+ycbdS2s2Bah1TvFcZdOX58u7WHgJXm7/zqa5n7W/vHcEf87sBfhfKZ+CCctOS4IIcQ5
6kjuXzya92tvkJjuL/Zp8vIR43gwPGQxygqyfsNRSWDJlZUPS3F0Zey4Djgfaq/tySWfeeDXvJFr
MlBKLeFshfNXP4jPOTdKisCagPRR3IvbldVpDzhtkqZrlEEwdTSbGDMtyhSLroBQyfJSQR+X/E2s
BgpqUuNQkHd5nV5nsXTWdXVXUiM+DwDUg9vT0dJhaEmj5zYAfcOHZLiIYX2g4Y+aNUNh5Z77PLHI
i0CE1VPn6Fp0DFBlZN/aHhjLUViaM8Y9P+LLqUx34Q1ePVubqMoPWVUsvKyACyEIfaIsI+P0kouy
YjihsTimMbRntZyr7dExmzK7e0xipBhVpu2Fvh8gWvCaDI0poa0SHIbJHy/I7Ooi3RplurkoalRE
ij2nAxuxmcm2K7SI+EGvxWnNAV8ayXqZX5gbhs9lvJBCNyaVbQfpWxUyNOfc++fqIs/7Pj2CATh/
Uo7M0Wv0Z2gaR3m8Q/P+JDaJ6yoM+XRrxQfxtPlzXG+WycVsM6f7ZGHzm9rdc6Wa2+SxvbhPuBxz
UUb1cLY+dTKb781bJWjsB5FlNg0xwVSwqZQjnV+blsqDTH9qA0mo0hbyFs2StU0Ts2OQSkKRwrTH
N2F4RtMEFaSfbluoJITn6t88mD2/MfWBtrWcgC3xVfPq6BZASUjvJFNgzShRBxYo8DlTQ8k8qzcM
wo8kwXyrwF51eEssakX73uWVirbi6mTkDwN8p25SlYaJzjQTVjmuNvBWpUa2hzoRETeH/nV7APhB
axZRTn5ZvXqcSOG93yQjY0fZXaVaRo8ey528OL4UCPnGEknIe+inW5fufeRKf35f2wFQeegomrEl
4zkqpOLb0O4P3JlnlTkrhsaWPUiliZe/za5AnnPZC/A9f+gUWe+qFMKafX/VyvL/SeK41RXdKM78
ExgcvR9PRKF+NfA3z3pIcAunvnl7WILeOs17M9y1a7/W3gecw6ntjxjjGFZvQuEKZZH6fhUpCBXp
8MJqkC5VQQDcRSODfCYpT5yhyCoCp9rvC4LHPZxNZlYe+o0Umhp/BseJ3pv2sHy1A1fezbYzR/Mv
jURMh9/hXCCQ3otXtvhyXEjRgJHrCTFW/W7ws/VUCS6bBSEDGcbwMAB3qA7Q9O+KsAtbteOiBKIV
So4PDrOHSuQVmsJWGYUWhPew0JEZ0uF38YQRahdUHMV9w6Y1VYVIvGdNyQlPMOYYZIw2bzIw82M6
KhJ2zvpWfcKcoVcT8e6QWTljYSxFvuiquNbPWkMU8dFij6agvTr+KBUGORHBF/lL25YjziZtoOWK
2aHary0KD0RmHkbaEiOKsr7u3aOl+rOdDw6PZnHrQwbkoGUU9uFkFCDoCIXYhxYuI4oZL0H36Gon
hQtizpIUlOUairxJPiRaKGXGFAI745+ZETcjfY2ezZpzSci6WtFLpj3TccUPES0aiH2QpgOtBsdd
r4tRil3sqg2rb84/nDpav8plOCEa0RrFZ0GamlC6cXfA3HSmGoalWh6xIWH1OrIUHuSxpo6Z73UY
SLJaA5k6oTd7t3bwM9Da2gbyTQVw9mshA2i9S5xnu0v/YVPZBcfTkLQ8gYIRGp7prOIz4IDeTfSG
O93qmnydDr6JKdLm2aYRoSeEHlRl5GKE4Pif7GolthCoPMQzN6nm9Zvt8GWrosZqDaNUSlgfr6Lv
cRh+D3fD15iPoY23j4ZcjaEznED+5gdFujW6SiaJutP0VK+9ekYSwMblf0jLDp0bL9JVVE9fpBwW
jNLCAuzWhUv1f4BSObD7IRo7egUq+5DQkFhfCdnBj1z/oqbKO13ZUoqTL5rFXMvML3HPtCjVPAYb
1+pTg+sQJn6YB41WAuwk9KkMX8pVB6Z2+lPlCWWirMWOYzp492ySAIOyn6VdGvj4lYDubZfnnf1g
6nSbX+W3ygEsSmk1pcsznlQ2EPS57XIpVLpaNjLxLHhoqyZwJybWzc7ROf4DlJkSZcu9G3B/zNAq
7IJBf4RSkJyM4/hG7Hwp8AjdYezHdxxqs7WcBDttbV0g57JYJcRCn33luQvNkgKdOFA0+8QE3S7g
bNkWHd/yO5cVUMhBdRwJntmgGlIQELLur7V5Rw3s0aKOCvDUyoYOL1YGhJ387lx54f3tH2hjfDzt
oyXKm5A9ZoEOI9/pK/k+VDXWrsY6VRwUNg8ZF/KGFM6yLq8vFs0B1LN+0YN/glyL43x79Sfr75CX
1LvepGbyHJHRIwvqJR/ede825gASPPv+t3DYHyhbOBZBr2BiqmlKaW9T6PMauJ87Xie+CVOlAqFy
6bZJlaUQEbvu9tx4OO+3W7b87bWcuSH3/sIhnZ1FqUQLLXIb6LfmSL4fPAcOQjSjGtbHt53w7pQf
gZsBHT67ad530Nxar4zBtUG/buCr7Tniz1c/lZgZTEbmm4Xa/NO7P9VVwQsIVSYAQq8YQD0eH0I2
5lnorvhx1ecmzrYz2HW1cprDOMs5PQMtDiQ5EaUmGsTbHnK7Zkd4rYuiRSNPNrlpd7GXM5WUUWis
z/RtCncHGN53MzmA7b6blHUWKyuPqrbviwGwfYAJZGm0cRpI6bjsVLUBMQo0CE2APbF359yAP8kk
7g0FGqx4Cxy8+bgxwscuk9L7jr+RFY1YD/K6UyaNQmdfFH3sHVfWfCVRc1D1R56QYTW/v7r0A2DT
haJMV4cDFN0MrSbbabfE1rTra9KJFARBI6v30x5ufj6NASxteI7qEksaOPzEn3yTBn1P6U3D2RyU
hRaBxLTa2QNDyWDnNVIyzV1Do74Jb3m4xdLH7+rvajjEVHji0tJy0B7pXhIchg6BlO3ue1PTNoLT
c/nVpa6Knpox8cOW8uFWNiSE7WjftuQG+L2/N+oFtKjl/mJGFI8p0sTQltGJIxxVOFATRnzpqJ+W
HIiUZqgH4Wz21JYp2hn7QhB/ZA7OWXea3sfeDLNcDdE5EsMbpaCWnOLIlQphuBqaNjBSyAfXYZRh
EKLZ2a/FZeDY5e0z07fZsviniv/Owzy2g73XdMW5v+pCY1rHdJv3Sfqccfb4hZsZ4Ez21OfIUv4+
gPnfEOazT2B4tx0B4pe/bc4YmEOfGNIdLITagwD5PfYo6DB6/OjCNMphc3lqtxQlEhZBvyUHvQxM
LY01HD8pqIxdYrXeavegZRvUzO++nR0Q/jWzA77x1W/G8zadVO+iQApbTvBebesru0o7nkBVSL8x
+6HcOeIkzAeQxYS0jvzUG6gvDws9dh5kktHLQIlnjrlP46bxFhdjtX6UJw5tS8mN0BPxBzuBewxp
ZXdiKpdncqQWtERzxXBB5NYqOZs53islFz76vOVxgoPc84uetzwAo4jhSm3WuJ6vpvk3uxyrt0+Q
I9qp9aGDLXkdaWcFlPBKKb6yYY+WAEr5QH9zI+no/iPZ/GLat1JXtWulDRYWdIjZQVKHftsvXGip
KANXy+Q/utnk+LRnKanBotWubYGz5p3BQrR90UI2spepryB8HQOjwIs/NxC9YIDPrfBA1AbOyrSb
GJ02jxwjW7SM6VHnf4NqMZbwPf6uPPgA2g57HsB+LtCiqqsiIhmj4wFw3lfRqWGxVxK+lZv2A8Hu
IP6nufpmeP2OsiCr/hKgFmjkBIIQwrjhJCp1pq6NDsof+2i2xnVEP+9c269IUDVf6SSlSEh4oQ4u
d8aCoRNO6InpqasEIerPLPe1NGCp5ik1nUh+V4iCF5NoKlU3KJ+Fbe88awMOp7zNGBe4FccgFzkM
3vBpfvN8N4vymJGcm/ycE8qp/59ua89VcjMh4sVApF4r1UkBJ946EJNm2JXOppuKfGSRZGhfOKBJ
xmAixMocwk2lSzAw/5dN8ix6chY489wY22Sgyhf+1QZBua7yBGntnzcBwHqzFcNv49o4GdvRAwT9
62eI2vkKocVvMlsldo3/FC53au4EPsTvzSrHKd3+ZVApROjWQ2hcf4/k04BAE4Ujsij2xhokcby1
DHBQ1PcVqjz2sUtO0XRjuD0BvHBXrdjmQxS2O6RgSyrppBgWmmRY9Q90kv+JsDfBifqSBc5LrkOE
f+1SPUnTtwQ5TZg+XcThH4JC7sO7MuSqZQNyOXYuJzyVjCkkrF8pWXy+lFF5x3OtFPfkEJQGduFI
TyEk/GLtbiE/BbGiBA/yK2LFpZl21hoNR7zl8IlZa3+gw+Br1AdVIfoyoE/bynX2qfao2HdSNbiO
+obYaGKKHftV/SALaz06tvQaRQIIeY63Llh/ep0sntaUvp+9PGShGkYlilSO+BENWSZq+iNLo6g5
RgA54ANLGFdreafnW89hIOM2rrABcFJXU68Sc/5Q2K90+MiZMHRyQyD5dmmnNPBOVFYlZtNa3+jg
hI+WXcFSPzj5jjq7pUNEnFpZW+hzllovflffFJwy3b1n2+r8SoEiTCdJ8etPe435wdYSA4gW1Q6r
KXvM8WA7mzoKrm/yGln20lY9cZiGX8JyNHllg8A9XX3yKHnSTkvUc/4gnJZnbtSPPd+WHckZNXt2
7FneS2th5vmoB3I3ZTuhRDaovgHy003IBFG3PAT6U7af5R2mdrqXcznYzKlcxce7Fax6ly+IKT9Y
nMdiqyGok573We2mRfn7vxDxQvHWcZUjCcPiXgOc+xPdv0q9bu1l8cal+j1Fel6agyMqThRouaz7
tzj3NvvZevNODFaze6qbOuvPsyTgfmb8K0GCjKEQdtXuHog+gHofGMk5nIHagn1FVKi+vxwFp2Ku
FF9b2mPPw8wxf+I0aT2J2NgEB0KvRDjd6AkmeopIiUwpJjhfcm0Cn/Jh16jwRcPf2MiJNgl+qEtL
vPNMb0IpZDdlq2AR0ZNPthKUzsfwVlHWE6UZ1P8eTLUfZ89m38q8sv1aU6DOwTlM1oXJR9QJGNJm
5hMtc8lLp3DK4XJPfUsjXsqgJ5YT9PEsMoQMq1ygatje3t1F4zb0qIFtdl6NEyRhpodiZ9xUu+vH
TASeQyHlaqRhesH1rL3Yxfu4UHIoLCR4tSqqZoiEHo81oNFi3W2Tu/InnATeuNk8JWvXhITk4KXX
CbJBd1xfR5eVw25hoi7rSDRdkkGh/VQyrUkiNlbDcScu1CNYpATMztw/4Hz05Y1xV0Rve2L8KAEt
CjkjtW1YNTcbQV19qSJRzs7MLrt0+DNHY+nj2xWarYYllCG5E5mLmsIqp+L9Z+LQ0XSXUvBmehdH
je2L+k/+zbb/ixO2V73wJa1xYHyIiJ8wQTvweb6UIhX76T7W5nIoDO7oO2RGzzzwx7N2FWcza49P
xR4YCNM106TDhECHqHBLiQQ89VN3E5MDsEpNQwQFllJNYW33Ei43JG6E/HAS1/+VHW/gwagYoBPq
FJsnHTOIi6Egk9erpYAkP5lHqE1RCx38gk5qR5uaWN4jyU//TFwpW8SmmrldTqdrHUXmhvnOgSO4
URK1EP5obbub65QNe2SDd7Ggb69dRIPxXCnR06GMlYTrS2mxvU1Pt0jZ2MT5SJgT10sV+b4/yBdg
aoYZf3gp4ANSyfXy7fdkYFh0wcXoGJqHVml/yvUvV9xDJL/VhUFzP5rXQlSZLvsEtkSSn2ZaCSOo
Tp8uRZ6t7zzTpGCcnH8UOuJ8BCLn09c+2GGxR2F4PZSpsLBgX4fBsmpNuXOCabVEDGEzRC+vaMut
PPd0rhe703Cc0umNMq1B9gZa+A++b39dRfrAjfsN1PP2Q3rIRQyAodHAiDQIvSmhEB2olh+OaUXs
d4Kgc4S2SGxjx343jroWXJP801cE/sSQOZOtb7jnW6gu73vg1+VdjfKGMa4ID0PR8NvOZzPxfc7p
zyiEu3JNJN9O1IdJHyGYhUBv1wk1TwDgwQErCnyPP+cp7Ir5Ev27pNvjdqUtfYZw2Ix83U3zVfSm
eeJhTLt0DlYg3uLiXt9oftXaFoxAv5eV1MYpsJSmKTcLIFKfc4lAIpuPaPYEWLZdV4LAD1HPB2Dh
W/3YeGoS/l/VcbJ61z8CMDi26rN1H3rbxmf6M15gI4sXqHsMtsW2Rg/YStwX0YIVBaAcTSJmvhNz
lp5j4xPQn+B6y3a3R3U1HrWXiyILK81J9IWVTWFB2meBmNlYHzzsSm+wbUMhuu7cKNTVFxus0aV/
LmdPAfpWyAlpnpat0+kxN+ThjLDdqPuE2OUoIgwF8rFCTHoRvxZCkHRnl0/fzS4InNGcj5Vi5PYt
I1J/8SVTcFFYyD+8KGSIDZw5MdXpbY3WD2insWZpz3+rP47kjv7eE4A1P1BTISt3pGj2FSV0gyNF
vKrBRijYh0iz67/wzWyLQF50o7ID2NH+hV2LGmKVFch9dROw2gimCB6Iwmxyjr9Nucq18EWGGEDU
x2HmHb/pw874COTw+v0r4Jd7hNPgkwwDLKSHQClcnHYgNGNDNsA2BMZeFf6KMF4EzqAjQ/7zCQki
59JpVmONetTHD5pd5gJ9pSqPrph/aN2N8KQOpkSkvDYqoCoB33sYoW2mgLKHwej0QLE5xhUv2ni+
xP+fP7ssI8E8+TRlKROmOPzprAt0VgTAezdhHzydF/Q9nm1x/njZkvtnP6C2dtJbsaPuOCh58dnG
YyH6bYdprRdEnjf5BbxVScbrxtipiIuzEBdgH2vXDSfhVdwJHA0hC+/YVaPa+LFPQOGSjl2KBJEo
Ax/Lv5pJrPqscsWA+fg9bHTING4fi5EkXWtXAgmfzbNei37ZOUMAoWmk7HTozrBJq70wV5hrn6Hy
vp1L2HhU5sbQh8sSkcrB2SLrnDWC1AGqFg9PexYIwBdWvN5q/AWyM17vOUyFTPby+wqiQSj5gbft
R7SF+OgMdJdwMTgvoRQVKiasC4IqMgbuSreTU4wWfySNDSvBN28IOXx7yD0gXf+yQNCVyG2+XO8p
1w8DZKsKpnsa816IJH7VmgWf+WNkXZDhnnjKHTt3UZZQrjm0w7gXcBAW3ZT9mT1Zji7iKC3H/X5u
UDyXwzLusxw8knyFiIsVcVk6fs47Rs+Tsk+1bFHkwgwl3Y0v+i0Nk+ISpvzt5Gu1zDzvPOf7TS31
yCeZENvd1fyd/oX3C2qSHBFaCh6pmXFTHm/m6s2QiPdDmxPSeE9uCovmRoZnwmqOmUUCcJD+khCA
XSFGf5xbESLVjsv8HF1w4cvbw4KrNiMyeXRXs1br9uIgJjk7T/N8jUaLeinEYg5fW5cyOp3lk78n
4mQuBRxrif+9o53f3BLX1Qy/MLbzp02/Gs6akI1zBfS7+W8EOEZMnfyjPye6tuc2/O1xy/I/drnX
7pQlVwMqzFUDmX/lF5UXXzgXou5H+twPmK6oKCPv+qu5tu5IenkYklN8czg818fRMQ8ESljwwNSf
+EF7Yo6zX0Qdg4G6lw0cvq14HpRwL86e4p5lQGoBTJbj16XoQnNGUcdN4R7yyx9/CVwGFjQhkjtc
ZbKvPW6whUmMU6ZQLYIDVxqM1qHV6t7uXvrjOlrEtyXjShH1lEmXoq9dKsKEUsFpjcdvecH9EDuD
a33MLLq1VScHNFtBFvFSFiATPs61ECrZpiiDyFs+F59WjMdqchiqU/oiaBwwfa7A9J8af7kj6ruO
OB/lG9FdcHCdhsy8LLLdJy79HDv2F0hfi6Th9R4aejzZ4LfrWyfdJwAw3kkvPRsNkjMdTjy8O626
XsPbRBEdFd3Teskgstih0aid66E9w93YuLupKhTRZYgnUCa9F908AdjFIu1Ry+2HMupkZc60fJOX
45sLb+AkjEIsrF4HHPE0lGe/7pv1Pga5+Kid8J0/avmeYFHOInjR6kE2qlXy9Fr2kon3EUVaR43p
umuliIzn+61mIv/IbkDPj7e3BTkkC3+FDZjorQS/2MklRAyUfvXJMeqC7rr3rWj6btZ3kj6BJXdP
DElQo8C1TqajiSVnMUsismARj2ykXfA/D6zPSvQpfvw72pphcalGS2avpaXg8dAROsqH5hDopwgZ
+5tw4zL6LoECHVICy8Il2zTNEZnQAVZ28woPLTUd/Pt3bte/65AJQp47zBVMKPHlI30d+FKVk/V8
VT3cfvy0Buvv79JopKUXidILptBbw4ZiomoaSVnXxPSheLnkz5+0EQ27AdMyxs19kndhGfJJdKDL
FC7rYKzhJVsBGrw5OJo6wBcl4hSaNW/rlMobDGKdNx0P0cdIYGlw3AMAzvhPPJzOnNvIpQUA2mIf
dmRERRth8LMr7NYG3dC0pcndqqOFVfF6QlGhiUYhYIHuDzmTK4hDRpoZBUNUSmX8PTRvYM0mHjQ5
rwH3KTeMSie+xuNBlFIGK+n4JxlSwD6ISGu51xusI/uvtQYN8R3CU8iROdnopioFpTcyuTD/oAtn
3rW+XRs+aspa0yw1KPNcTJmAeOBbeodLWWCYmqadzcwykTqhE3vK06FZ3hEMfiUbzQ9CE2BUQJ/B
JgdoWFWE8vGm2HRfOX8G/O8Euiz8KVJw1OvwGzqKhN1dr1erXgM9Bu2cTmKMUxID9T9vEm3zCHMd
yr2HMXSc5ZaqMO1upWoXRJNAv3vhcBJNCEIp1CUYi66lNLVf7mxWItn7afGH7VewX+O92NXc7ear
KukSbJsr1tGK316iJCVymFfVppeL6gZPCFiLBGQbYN0bKegMAUlupl5b5IM2+E76qSqIIL+aDFDx
fmKg+5OenGNS8EzXU7ZyeKxgt5bmtx2+94DAmgJSzQffrPh7s17ssdWzWzKMtwUjH998G8TiXHkp
bO8eF2Pce/EO+EqzPaVuPS4nFQrt5gD+w1bXFU7jyM//zBN0puguW970AoFaB9RNMB3LY9NwajHd
WHa1fQmziSxXWwMErMCS1CtA9sVPJxNiaARyUULQepXWHBuV0t0zKcNeljrHGT5IrNWHHiXxzJr5
ZyFTlgMKM0KtiLu8p5+v3FdQ00DZVIA6YR8xhfGDytYRTPgI3n2SbLfZV/HvjiXNP3vW/HY2cd42
4O7FH8XHzTx4DuIhZptptqaBWTAC2xlJXz+6J+OT3gMEwmdgUEdWwT/t0egbE/S4S3+iFTU71IfJ
2E50cDGlL2ZmSFrJZTnWUOvecBATxiofiftpIu946HaQ5Dw/6tPJ8eV2pWUTWzuoBKhLgB1TyfE/
+ZC4w06+3Xn+5Q7VFUdF4SFV/E1TVlL9JBwLgRR/CFGkbTwFsTnpvpfmHQjibi9JcV2Rii+u1kdq
dy3UHuOUf0+MUpCRSEcmkaA1qnsgEgFYYII9bUnJ0q6OP0W3uI1K87VX19jr8Q0KvqVU2g7hWFLa
FGLuD9lj/OewsqHGhn/MUj9ahmK8Jgoa4QqvrhQIZwWAXCiJsLWhIoRnZbKkNWgcVuljxdcbRo/2
O0w8WR/Esu/AGd6MGqpaQGRWWKuVMdx533JRn9DTJHiEXvf+8DmP2HP0ZM/Hn1BIe4Gt3mLyhUaJ
o3Todh7kASi9ydbNo6+BWuu17fZxwLH9jrtzMGmTPpFrsFwhXqnhWk6EhjsDZFwlbVUAGgtvPmJM
7wwg9JsmecTLwu2G7Ke3tRlW9U8GDvS9t66D2MjozzwMUAReIBvo9ySlYZh3cC2avkoMKgO4b70t
rpCXNoBg9iVElzkec7nhGZZKa5tCMSGER+CxJELa8nuPCwbjrPmdN7ZWki5+1PmQs+NbSIn6GNmn
+La6UshxCdKPqGbpJDKnvz1CexuN+/iZRA88NI/4ZL8zi+ShMKwJnzfiAS/zGgmTV9xYWul8Go2t
+q8DWfTa9pQH0jb5oHpDvMbXqov5cxHeLLuMcnOCOJ880pWVaOLpBW4IBaZEtKNx4S8pOiPFX8HD
p+0wcTN3IcdDoWThapAgYXQATBnHY/cS5EtVQbvkoXEss6IYkiuGqKl39f33JuuEX6vnhG8lslhZ
tUibNWh9Bb5e5nGG9Ds8GLYrcWLzzMTTu9wt+HPuhQn4xhL/8lLI8MYi6qU2WkM/ZALQeenAaQr/
SrXzCiqYhkSz4VRa3OvgW2plVP6mbmD87UABHJ6wzkx9m8V5QxYTiKRIWmJtVSy+4y8XSIYvyN5S
gEI1LDgg7xP6kka9uTpMY1BPY7FYMDTAOlqnr2M9kPkUhcUVPI8pwAhr518IyL9CZNOJL3H3p5jH
bldtGJ0S3ckC/OYHsM536EnmxDo0XNoST7yUlemOjTe87ytK3oDGOhMimMkqr4Coy8o43HMT0gLe
6VKgX+wybO2Kjt2TfwLOaIAuvbWRVcr96yjrAhEVmm+lJ6jlzXd4qz4YM+bkkrbBW3+D95IdMt0c
y49BEQ59BSiAb0WCexMtYgsrlsDFEQ72Ipf1rdvn0ug61Vcv/NorsV8R6bylqDiVNzIu8ki4Pp3R
f+YnRhb7YW1MPMMKhDWPAAhL2VKHbQ+qh9Jn2Af2z9HSkZtSFgQy4eaJCxupFa1XiWXVEvoAzmTx
wym2rthY95Q/jQN7LHP/nY79LHvazQUUKTKBbr/eUMmUE/CnGuF7Mqru/oaT6Z98dMJOmAy4DK20
bbHz5Asb7sMy7+aaJIjUZ58duUMGC92HSv9pL4zvSn1maWoHwuyKJL4hG6/zVT//XIJk+eByyr4H
qLiwQUzLZ13ly9hvTZatDxBjEZy4zJgfM0ENYEeNHkxN+vGoWnckWAWMiOTucTfu5afbEBCeyiWX
jLdmaf1avPbku5hHpBq+AUUL1a/Ux0lk2YaRmyoiBl4K7KN0m5RcXj0Y91/aaoD7h4Q1Os7bpSR5
S5INrY+xDuvxZC/7xOj97HdesYd2+1Opf/vI06KGbmqbPJSJCu+SsdmHE6+p3GBmdTcEbtxrTOve
/utzCOA4cvq6ahJpxenah61hnYuLb6c7/mfC5Pboy0eoj1ieK2/gwLoOhWOj4awhqX+JAYX86dZ1
9bHtheVefLwuwGCmxXqPDqNCwWZ/Fe62rcYIU/ulzUf9tsV0U7W+dpXHs/70XBsBHVwO+0yV++p3
DXiCPYlSHja4wKxjjEKaHLP4rP9Q0vMnbKvuaCoIcJIunUAUoxIKTVoaeXZl7OWaAJ9IKgL0+vOB
wUSMaiquaFXKfcCWt0S5xfXT3hVR1xy+7I3YyNzQSrKjapiqY9PszB0LAk/Zv6TAb9fOlfWmGXCU
NkfGhgpmUgR12Z7wY3ZbKsQ1iOrG2YpexKNGHqXf/umCwRyVRtziNvOyu++l+SrdNHb47D+t8FAm
ayx2Sq4y2KR5mCD6WyPX4fM8caComI2aVcpkFDbtXaAtIJ1cMf9lSRwq9s3qfUYM5Om78DkpCwQP
FvRsfDwwCsuNErT73gDnIZPP7BlZwUqJ36uMYuC1Nihzt3Hlu146ZWYtbSeBUjnJq7GlmUKNhkHC
KV8O6RLeT/iJ0MA6DNYNGsqOc9tSkoxktb1GXFSonEDn+m0YheWwaJgcOWzU0VHg0beotVSnoO9S
DUGS+Ol+uKqY7zngZJk2Hi46Yh0R1yyIyqfTnDDXxruUjSPxHqrlAdXm2YcRX4l0TrXJ5cQeDj9L
U+cyt6572A8wBwUKhtUzMPIxSvOcu3x2m85guBYUpq3Umb0zGd493tjAtVc9FPyW+pFxZ2Zdbyo4
2Ir/D0+39mv0ZbJO6QNyuo0D4rCj5TqJeU8kFP2BFV8uKmFbEdhA1LcmFFuIiQ0KBoMOmk/9sXv4
t64prGcWCZQeiQUXLAeONcNj+FY9I+PiNwWhajCLcC9qDqNMk0aej8oOtnD1VOLyHEEs6XX7PKGC
/11k0Hi1/k6BnqbQBrTc1P1qKTOuW+ZTaVjMj9pPzc6Ej5EeaJNCG0rqMqFMkUEMNDzBNY5idprs
D/stYbRE8l8awaUo8jLYRRttNGyU+8T2m6vPZ+ybFmfHtwsmkPJCcgfuK5yKccN0cEPTwI6F0/oa
lVKPxQFZ1VA2o3i+a6QbTOdlcHQlGu7hyMxu4FSAnU0hXxZ4Wp4zcNDL0PESamWk1Ya6HhwOlPV3
KcbR/kzXkPvC1IoodAId3O8gikiesYrXo6H99yoJayviFxBMpNngWFLQL5RdYksq4vuPztQIfBRS
VqqrpfvGffgGKfv1t7eaNVpJX2AUEVLO0Wkw3RnZfrIoPsUcykfYJJ0wcx1S9eQC3nE7Xyv3NJQH
GOT5EVxFKJYfOSxOgOLYUp9f/KhTlCGqpJ10ebs+p8fO1YGUSsCjUJyt1r0x8AR8yCt3ump/WEAy
2zE5Z8mgaIew1j9/La5R9YtQVsZr3e081h1zhosxnPfcuKk32SkZwK9xH1oAi28gnlDn2kP7xHtq
PzcOwqWqXfbdnHnuyVdMEMam1B8YrwM9XfpSKz1IXqQe8ziCVq4AEOoaYf2B2mdj1w/nSs7OemAl
mTc80f0BfAAecLEJ7Bg1H+KA3QWDX8DIrrfwbOlR0wI/HgKcfbN9T/dyw+esaHjE6U8xA9NpKVpU
pe5pgW1E0pWcqlmeO4ffyWB79XO28yr5SOdFewOzgfulyEU3en8t2cYN4FdVwztgCpPZugPJ5Z+F
4I0UndiyTcpHA7jK0S2LLsGqntq7oPhYe35dPCqook47eNYT8n1+OZgWlxJEc9hQw3LRELSNq9b/
DXTYMXQbdf/YqwRTs+xVYbVNep2d4qZ1WL3jMbv6i6dQj0cDSrDMggRgsFwSj8Bqo3/XUZ6lGgz/
i+qm9RLBPHFgh9H29g83HQb8n8s5ZwjtwGGG/A9h0TYYu/VGUqDiysRsEsLYIKOScJbD05lu4Lcx
94VtFQHUIarZLgEafgJFVpZ0N6THjLJh37PG0jnhPQGWnRIHfQo8G29PWb84wO7KMDkjpQzkAl8l
53GPFDkq3ZUC6lPv5kI97rtZu8QiGhomzGlhANIsm2SeJHeUxEmTnTDZmQ8xAABbRzLAYmL2cq7u
ZpBfzbVzFHa3+uOmP8E+hsXttJ430P3H8djSAkGZ6mjlGeSyCMX9I2jU3ZLxIum0g+AcUjGhzKB/
wSaCirVCFiS3dG0vZ6et9jylVK7KJ7+Ca7JG5feJTpmv7//xH7Pbs3p+wVi/qSV5uRbyXFKoG2u1
GIWtgxVe/YPoiLgGyFU//rr8MMrVAFZh302S8Kn78mk0vWN0eSNXN/0fpPK5hlkh+1CF1ZjnJSs9
kQH4sFAffGBvg0KfJOV3dnrMbD3Rzhp8kXSO1/0Cz1wAabM/BJXniqoSeaZoWkqadb400KUaDE3x
c6epGI9wYB6fXyyUaHlRtLsig520uaSFy/10U3DeluABm/2mPVnhaaaufulW9ydL01EPW/25yzWy
F9PwVYFTvGTdtDD/9tVje3yXhG70Ld7HL+55xysykKbTMrDUo0E2mCScxjJ8TPlGfihQAD1mjnfF
4k8DcaVsTl1TRZu5BdCaGxLa5E1aP7WtxYbTCxi6JHZPX01LmLsp8zqzbiiFnRt5ZDoFqXGWFeCV
PqEHCIhAYiO3bZGePF7TeQlGuxK/mrzITrhU68hxXMiWS9M7ut/SE2GdaoBaiGh0oVAsmEwn1B4y
p1J3bXg/8AkrXLtyPoiFWvALsIYnEnGoOWHO1NtN7D++VdWYxOd3qv2LehUKrbmkPzIypCnKF7bZ
n7kuL/maKiwBRQIQiqKoysEhP+HECrOGMbV+Di5lLwYqmZiZnfSDY/wV4pNnLwqhPR6HiK4TtFTO
Azkkiwiksg/a/TFMU6f/XRG0QAMiZnYcwgUYcwc+2/4Vo3XNxyGiiE6Aqg2sBaFixl0xqqpuJ0sa
lUMcOFDZdy8JZzleod6RYmIfYvwTGIR16IUhqE51d1GRba89xsgakkMYiyy9YcXSQP0s4pkyxmcT
wIgig+aJLKlVS8mP540Y48o7oYblTD1JDs5XEHkp44ze7K7ispQPega0RTmsyr7FdXQKdB5Q8Cs5
TNs7Ixk/3GQKd6tJ4tN2+xxI5sbGIXSdZm3PqhCOXkzKBHp8+Ms+lCPygU/6gXpyiIxsVd3f6pt3
CXQcqCkEwxQCV6SGaf4mA06N/4xAkLwfMCJNdSgtRu4CLroC4Cyv+FXlu1FY0GMeHnAPg2YX/5Xm
5RQ=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
ZT7+RCzMGpoBYSuObDu7GHIWP4wbG2z0+NZPy5ctMvSzcpDtYTeVa9Rt2jwWGft47o5EJP3ckUaz
ga/PA8jA7w==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
Nez6Bl347nb6+rwYEAGUgNCAGAzNmFU5MeAC9+3K2UzYt8qxPFrJ/SFJLhvmq05ak2WdPG0DC6DY
KQm2he2dsLt5QsRiFYmj2xAL1KdqCGiHsVFY+u/PuU8GEcfn2GTMt2pBI+06udHlKRy3Gt2+icT+
Rzwp56VKG96Z/MuGTf4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
bJ23shOZkE3PVggRHLeGJ2PbG8xrPMkBPZCJ8ZYfdCaWhZ4ZYd1C1zb43X+ojqULL2oHyUgAMgSj
ecIJtiACC+HQhYS9ZAedcNObDtyg4oslk+vfdk+TM2FZF2Etrw/yAEbq1f/PH0Kn+mbNEo33Zwe5
Rm8FZ1wDWOyOXh016tcp0RwCvdj2XR1Kw/zAigz9XUFsy0aJtcUXIJIlKcvvsjSATgFtlJhxEDo0
pnsWRjWP0UYdXkfmSQNXFz8qVRQRGSAtue/7tEuKBK7i+2io/Fn8ReAkkGJiWskeE9nOr9dx+4DE
9tfPWFjj0ZgyCy6JPKhTrEZyje87nH/0x9mcFA==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
dilSTjuujT5h2DrLDbS/v0rUBHgSqc1odhqH2k0dTfIZcb7N2jGBdTrXFekiehlmoGDjU9sGGdlh
yFg/bT9j8pTdVb3lIkuOyMiLP0CoFYVl1z2IegKN7b9yFR+7EZbxn0N/B1ycLjS4ssnQq+SGbWl2
k2N7LLrQtkLu5td7xjU=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
pVPXt9t5C8qS/9IP6M6Y37REfDMW0SGfG45oP1DNSuCggimX25Htte0JNMgNJo8ar+6qTjWsopD4
IXOQzxTzbzczkdAIs6+pl9RpNOeJpa0bvybm+uwfWb8+Rcnz3NLflVxnmjLM1ayKKYARNVh7gQb9
C4SQt1FdooQ2JWlTXbp3V2aZpvw5F49u06L9Z5ayEEDdOQE/HQgnVfIryQKYB8stQTSh++L7A6Hi
fnnwsPjJQ2SynIHMSopYLmrhF02KU9HJ3WVKZ+nUrhCKV9djJvyWE9gZFn3X/nfyIkmo23lpYTgC
rYvCI0W4K/uiiwV05xGsCFhMYz37LiZv5/YMUw==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
JmoKb6EWl6uXv2jo6qPTNUE/JeszSB/p4VHMQgpS4tKcazqLh4o8TAEB7CAtmWkY/3L2aTlsg84V
nz4vkwFBgLOyXBNkfKTAvu7cI4bcOoa4HcUT0YZ/YAzxxdJZDC1/BkjNKLy9j0XEAR+7nKTSWw5t
p7zalQloFkrhtF2Ml/veqUlDsHlG93winmliLuuOkhaJJhBS5N4xHyG00QsRyeWXiebGWQcm7pam
CKJ0HDoVg6aI63AH+eMJvGtLjj73sGis7vJTGYAO4RmTrIjs5OGyu2BpKEZUdBcPmn8GBkbOQmjT
fKouqvOMQhkKdafrq7YJ9m0OogSSTZng+MVc8A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
TG0Lhzc4sMKC8notV0W6muBNh9Ihc26o1bW5COnLL0nnHC7RdkR/CawA3NmykvXrYyI7+xV2IHR+
02v1sa5BY2gOQZFL2Dk0OLCH07cFRwgFg7vBs97oI6TRv/L1phSGSDcTIrHSEqib3U+kLa5dnu3i
1h71mt74e3ZUkmqttk6SHNBNVR3XYYFZGmHun/xAnUQdORRhp+Rd+wxLH9q6E0141TiqAzJDk2V6
p4sEtL+nlCsWExhN9vkb8hd5RsmgVaZSkwJ+rztBDxa0ij5JMMh8hH7y+40noLxDeOYuD1rgQJrS
gV1RRyqvejF4A1pSk+FgnejfVzLChJ3kd5kD4A==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5264)
`pragma protect data_block
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
zqrUOhe4SzgzMLKs8FXkOHNO5Dc=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
ZT7+RCzMGpoBYSuObDu7GHIWP4wbG2z0+NZPy5ctMvSzcpDtYTeVa9Rt2jwWGft47o5EJP3ckUaz
ga/PA8jA7w==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
Nez6Bl347nb6+rwYEAGUgNCAGAzNmFU5MeAC9+3K2UzYt8qxPFrJ/SFJLhvmq05ak2WdPG0DC6DY
KQm2he2dsLt5QsRiFYmj2xAL1KdqCGiHsVFY+u/PuU8GEcfn2GTMt2pBI+06udHlKRy3Gt2+icT+
Rzwp56VKG96Z/MuGTf4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
bJ23shOZkE3PVggRHLeGJ2PbG8xrPMkBPZCJ8ZYfdCaWhZ4ZYd1C1zb43X+ojqULL2oHyUgAMgSj
ecIJtiACC+HQhYS9ZAedcNObDtyg4oslk+vfdk+TM2FZF2Etrw/yAEbq1f/PH0Kn+mbNEo33Zwe5
Rm8FZ1wDWOyOXh016tcp0RwCvdj2XR1Kw/zAigz9XUFsy0aJtcUXIJIlKcvvsjSATgFtlJhxEDo0
pnsWRjWP0UYdXkfmSQNXFz8qVRQRGSAtue/7tEuKBK7i+2io/Fn8ReAkkGJiWskeE9nOr9dx+4DE
9tfPWFjj0ZgyCy6JPKhTrEZyje87nH/0x9mcFA==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
dilSTjuujT5h2DrLDbS/v0rUBHgSqc1odhqH2k0dTfIZcb7N2jGBdTrXFekiehlmoGDjU9sGGdlh
yFg/bT9j8pTdVb3lIkuOyMiLP0CoFYVl1z2IegKN7b9yFR+7EZbxn0N/B1ycLjS4ssnQq+SGbWl2
k2N7LLrQtkLu5td7xjU=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
pVPXt9t5C8qS/9IP6M6Y37REfDMW0SGfG45oP1DNSuCggimX25Htte0JNMgNJo8ar+6qTjWsopD4
IXOQzxTzbzczkdAIs6+pl9RpNOeJpa0bvybm+uwfWb8+Rcnz3NLflVxnmjLM1ayKKYARNVh7gQb9
C4SQt1FdooQ2JWlTXbp3V2aZpvw5F49u06L9Z5ayEEDdOQE/HQgnVfIryQKYB8stQTSh++L7A6Hi
fnnwsPjJQ2SynIHMSopYLmrhF02KU9HJ3WVKZ+nUrhCKV9djJvyWE9gZFn3X/nfyIkmo23lpYTgC
rYvCI0W4K/uiiwV05xGsCFhMYz37LiZv5/YMUw==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
JmoKb6EWl6uXv2jo6qPTNUE/JeszSB/p4VHMQgpS4tKcazqLh4o8TAEB7CAtmWkY/3L2aTlsg84V
nz4vkwFBgLOyXBNkfKTAvu7cI4bcOoa4HcUT0YZ/YAzxxdJZDC1/BkjNKLy9j0XEAR+7nKTSWw5t
p7zalQloFkrhtF2Ml/veqUlDsHlG93winmliLuuOkhaJJhBS5N4xHyG00QsRyeWXiebGWQcm7pam
CKJ0HDoVg6aI63AH+eMJvGtLjj73sGis7vJTGYAO4RmTrIjs5OGyu2BpKEZUdBcPmn8GBkbOQmjT
fKouqvOMQhkKdafrq7YJ9m0OogSSTZng+MVc8A==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
TG0Lhzc4sMKC8notV0W6muBNh9Ihc26o1bW5COnLL0nnHC7RdkR/CawA3NmykvXrYyI7+xV2IHR+
02v1sa5BY2gOQZFL2Dk0OLCH07cFRwgFg7vBs97oI6TRv/L1phSGSDcTIrHSEqib3U+kLa5dnu3i
1h71mt74e3ZUkmqttk6SHNBNVR3XYYFZGmHun/xAnUQdORRhp+Rd+wxLH9q6E0141TiqAzJDk2V6
p4sEtL+nlCsWExhN9vkb8hd5RsmgVaZSkwJ+rztBDxa0ij5JMMh8hH7y+40noLxDeOYuD1rgQJrS
gV1RRyqvejF4A1pSk+FgnejfVzLChJ3kd5kD4A==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5904)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
