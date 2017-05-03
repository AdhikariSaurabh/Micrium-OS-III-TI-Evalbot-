// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
// Date        : Sun Sep 25 20:22:06 2016
// Host        : saurabh running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/saurabh/Desktop/project_final_dsp/project_final_dsp.srcs/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_funcsim.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2014.3.1" *) (* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0,{}" *) 
(* core_generation_info = "xbip_dsp48_macro_0,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=4,C_B_WIDTH=4,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=7,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000011000011000000000000,C_TEST_CORE=0}" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  input [3:0]A;
  input [3:0]B;
  output [7:0]P;

  wire [3:0]A;
  wire [3:0]B;
  wire CLK;
  wire [7:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

(* C_A_WIDTH = "4" *) 
   (* C_B_WIDTH = "4" *) 
   (* C_CONCAT_WIDTH = "48" *) 
   (* C_CONSTANT_1 = "1" *) 
   (* C_C_WIDTH = "48" *) 
   (* C_D_WIDTH = "18" *) 
   (* C_HAS_A = "1" *) 
   (* C_HAS_ACIN = "0" *) 
   (* C_HAS_ACOUT = "0" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_BCIN = "0" *) 
   (* C_HAS_BCOUT = "0" *) 
   (* C_HAS_C = "0" *) 
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
   (* C_OPMODES = "000100100000010100000000" *) 
   (* C_P_LSB = "0" *) 
   (* C_P_MSB = "7" *) 
   (* C_REG_CONFIG = "00000000000011000011000000000000" *) 
   (* C_SEL_WIDTH = "0" *) 
   (* C_TEST_CORE = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0__parameterized0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_HAS_C = "0" *) (* C_A_WIDTH = "4" *) (* C_B_WIDTH = "4" *) 
(* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_P_MSB = "7" *) (* C_P_LSB = "0" *) (* C_SEL_WIDTH = "0" *) 
(* C_HAS_ACOUT = "0" *) (* C_HAS_BCOUT = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYOUT = "0" *) (* C_HAS_PCOUT = "0" *) (* C_CONSTANT_1 = "1" *) 
(* C_LATENCY = "128" *) (* C_OPMODES = "000100100000010100000000" *) (* C_REG_CONFIG = "00000000000011000011000000000000" *) 
(* C_TEST_CORE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0__parameterized0
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
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [7:0]P;
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
  wire [47:0]C;
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
  wire [7:0]P;
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
   (* C_C_WIDTH = "48" *) 
   (* C_D_WIDTH = "18" *) 
   (* C_HAS_A = "1" *) 
   (* C_HAS_ACIN = "0" *) 
   (* C_HAS_ACOUT = "0" *) 
   (* C_HAS_B = "1" *) 
   (* C_HAS_BCIN = "0" *) 
   (* C_HAS_BCOUT = "0" *) 
   (* C_HAS_C = "0" *) 
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
   (* C_OPMODES = "000100100000010100000000" *) 
   (* C_P_LSB = "0" *) 
   (* C_P_MSB = "7" *) 
   (* C_REG_CONFIG = "00000000000011000011000000000000" *) 
   (* C_SEL_WIDTH = "0" *) 
   (* C_TEST_CORE = "0" *) 
   (* C_VERBOSITY = "0" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   xbip_dsp48_macro_0_xbip_dsp48_macro_v3_0_viv__parameterized0 i_synth
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
crsuNbGKr2+HGjsnrWAO3ApjaENLE5lmTkmDpqy6wXOqFQIJnrktoh4R9l/TVlY/BEwSOhFtvEbq
RKvf5np1ZQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
JfoL36fNI5DjzIQX15YYPTK98uQI+Z0aMjl+hiAVWq0lzClrfpDjXWaPyQGiPvnYkkUnnCNmSyGP
qGrNm7GOsjezCGzMgQVr0792OKktWuV2kt0zVP1RUZuHk/37eznwh8N2o5rw+1YzW4dGzl1QbJom
tmB1UpBcp868gDBGaIo=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
nZKDyxkYA9uy2Xb3FwpEri9edMFM6SqsP4Aed0tRsVeeX445M1QANBu8GOl8sJ4QNxr6T3VU33/s
FK93SNbe96iXZq7rd0ZTftDGFn/wlb+m7r0WSjfp5pkNrLXaYMROFr5Y+cSF68dabG3s3COIhufS
z6LjxtxffkVZFl10/p5NYIyhVlCgj28/qTLowb5EYe1tZ0WPUAxBFuTyFKtX6X8Ha+x+nETiYK6i
PAhbV564AhzWOG1ohxDJJcn/sq1JfdeuDFdYSbNKycH1TqhYGY4rODz7EB10q4+UCVziUOr4Tv4R
NCotWnw5vu+fF2mIxu+vVyyYTSX+rhEfPs2iXA==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
cZ2XWhB75BM0Dt/9VMCHTjvBqUtECoyfIkFt8UyDN1IrerieLUkQavGMJnAyOgfgB2F9GkPnzVQV
7H9tsdZ87Y+A3ybRmsawN7gt2tqx/GGsvZlikuuSepi3sHN1vWxch8VpcI/SFn7CnlCh0jupM6VR
707+yLDj5AJkQVyH1LA=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
S4eCKuneguafnmn96ntdnponlGVTmyJu6zrxyF34ICbqsowM9Vhvgm6poU8XDQ/BrjS+RNPc37Fg
G4CZX64FNy0IB8M93ARmuOVvrGN2bYMf3jNRnVO/z1hOqr23u4iXXLcNjJcX+q+ntygTqDn+dkJa
tNf5JDJd7KcZbafDC5iOu1RcjafQnwlpqyaxuvNRdQkJM7f5tDyB/fmqWMaeSiYSf6cbwC2Jk6x0
7wUP2rAkEzcYQjkJqSGT74QQ9ZxpJuO1xNUbfsJDlmWbSmEyg55J46Q3XRBw9O4UV1TNB2XnSxvt
0rRnDIzS8sn75CDPR31VCmG8K+PwSCayofA3ZA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Ra+dhwbjk+YbIFdqZb8ZqUGy1cP7QALijuXSm01uksO3cyUk0ieWCY2HcoA5sxHHgoFZ7SiSEFN9
GXRNYFrVEzcmmrZk+fgLRtnpNtC3T760joXHmLTgzjTjaeSplO2G1Os+1meZnQ0OqFMI1gIP9Ooi
7j0VqpXmvGZijb/BrvP2+S+n3PqSK3hJYYxplgUzlT21r8PDyfPCsTZSg3bAqYDQWjIndM5o5Gzj
6xAKNz5BYrpdJMv9/WFRbxjlyIdoHb86Zii/pr77nAUonp8ou/m7zCJ/odhjhcHFH4bTXKj2aXYE
eS9KziA3DFTDC1XBeQi1tahWqVCt0qxm8pWOjQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
qkTFv5Lgi3C/OltSTWvEHaalk48LAs0arJiqO50Q1cxy0lsSdmKTDXZSYa/YbL6sFVvFPfTinQRL
paO2MiAYk9IUjYHvOC0pnLz1Okn81yejYvgT33iJuv7prvLXeEVbmnyy1r7e4p/aYy3bDZxPZack
bFnIfdsQ3TcYEIdR1YlKqbl8U0MVU9sO3hgPKxyheLmkOs0NTED7EgP5fm1ie5bkhPW90PNp6Xe5
UM+BH201JJ3yI393YHxCXWN8GUtxqtzwTFVLNWY+uRWe92zbvdDAIrmSnfEApN9RYYR0vWpdMUBQ
pniVGbODEZGGiquJjZTvmI+A0rwE1+N11xFndA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5504)
`pragma protect data_block
vuiRcg6iGsYwZn6Pa+L71rvHML9PZsDacDqkBj74hMwrTcbCy+kIcmKYvrW81OtW7P43dbjSPNH8
hMwNmQ5Bv7Diy4WcTBEcHmXUqOo+E8A7oFYoxjJbz0sQhQQl1TBFGsuHTQiobailLj3tfXa6mvDp
pWasX26dJ3zvnmlTkRG9putxH+UQ2YklUFqRcNQ4jsExn8zr4tcemfo7HcEm2oEmqDXlH5HgZyYy
I2D8QU+wX+5CmJZ+JUu/3yzDIjwG9qmnwehwxLaut5hKxVmeREXwfv3teEcVhXlDnkQ721XrGuK+
yjPeHYmfsvuYd4qrG70htfSesHcFhoZSBppFoTeTFu9vqbJOzoZFGrOLs4t/C2B+6bauSybBbAdZ
771uMV6tBUz8uTOVdHq+JCK34ysDpSJ1JgGfuKbCmPruSnYpPIzLWJb7kTI/ve8Yaqsd4DOanpES
lQbzWfDKjB8OciNG8NiOPXs0mcM9+nDfQH5qKGS4erObHnxQ9mbATgNdavEpD3ghaLiCckrWY+Xh
x9xVU3MqU7VF2OHGIg80KNR6rJ0LTEhs+8tb19HQRlxzJVCVGFcL7HSJkNfLzAF0euQ04YnFOO7r
2IjCBr9NGx5xZx4LxT/v6XXGbbJFHGXazU/nKxLegwaCuJZPzdex7eicj0qVp8awRowKalqygr+n
NgkcxCC0kFFWF+YTb/PG2M0dWoAjUxMq4HzmMGAxnhKpj3wNCPdDxwDiaUnF7OTCrzYOzp/appMi
KxMaNWNJkpi7ml/9KMa11lXvvqgH08/il0s2Ug9EbU4766sG9vlyJs7YCIyJQ4r0cZzdz2p+QbKs
4rbvmgVXuxqnFcaZBFydJYX3qAnnDKU3Rznv+dVVvH3sNvgXNXS3Wa1uc3ZvGyPMia3n1nWBFCsn
6zzLguA1HFvTY2SnDyOAkAfaO2ymZmpM7vYl5SGxJxYBIxR1Q3v0mq9kPLxo1ZBcsMn8iZM+di1g
dz+b+vEbP1/hSLP4ntMapGKFYYbYg4MyAHXKQ6s2/CAeGqRaBmE3fzKJfFKG+SjOUZZ+8JhtVlf5
KnKLmqo37zz92Z+Sp40GzFPRFtnn9MC/St0K7a1Ra6Kcm1cMiMFnoEgwB+WXLUZv7GOxX5miGpaL
GBttUqWZy0yCgaW7kHliBg6WUORRjPWdRsWh/aiqVS0j5mCgxLcXZmkAgR22bM/00u+4+WclqZXx
J2j0s3vwBs0uTwYdFsgMHO9HsFQqwwiZ90JqPD0oOl6iSPn8whWnzvvADidwe94qDlDWBcjrYZbF
zhDmmsgcnXVbcbaPzkQy6hLmCXFc/Gy0NA1EtiMzOHIswbJ1DZ85vOGtbcDZc+hahnkK0Ozr3NWD
yXF9MiJkNWThlcxSYVp7WcmF0fD8rH1Rtjh3/U7pJ8IF16tp6vckXaD0tR+LW3hvt5jP2zOmEfvw
K9QPHM0nb7yV1UrtLnjZ8Mlq3rNHMF7D1lJ+gJvABXP/dCuiXt/zNLdodKQG3gLIzqTll2Pv+pi/
493qsurkGoNyx0Hk4lWqImptZZKAkSP6D7ucrfl8ThwWdt9YVWs17rppd4ichcGOQtGa1AEFJdr9
DQfOkwAxqP7xZqBSZWaU13B3N6JtmFSmTQOf++U2HlIpBkukDvV28vNbkZzBkhLJFHxVvNLQRvNj
4P1riXSG1bEGVMKGdwzyH1eET+CvI/9Kt6J/Xt7kHXv6eCWfocAWW1tiWlYGOBIfsJyA3grInDc/
cMW+4mx47cFZZsGJ/dOWmtkDtDnDozcD+SnTxufBIstIFJUmMslN+Gr9hsJDM5nsDt6u0Zu1wRL9
Q7N2uYVmwB0LCd0D4BPbeMsIKZbYJRhBDbiI/QkSFIJIk52mlqVGmNCHcvJtnXweNyWTKUswckU7
FRLb0byDSkAdxOAoOE12X/9GIiu2et43P+HHAG/U6Hc2nZOJpmp0jpNeO5CRH7WL7o4w3/gfnSPv
vSrDBodG/Sp04y/P0867agKq5JfZv8xhUuqgqno9CfHW8FhkxMlnGlfg6AIZ+/dNQWQv1B+rf9BK
ss65tn5ntFuNpcBLjBDmS9AutN5Sl+LRkNVgUORjJ8ahMXVWBw5/sPYtgd+t+FMmYtb29xWWoL7C
gw+oUsg3wwJ6Lh4gG7xs+XXgDwuX3xKGR6+YLEE/tXFADm5T747FkzuUpBXNFnBGnDlAutCDKs4q
0MIHy0kAn34wwJnA8jmq5dazdvBUXMarm2Wgu+tle6SSLzY6wBJSDVL/Vmk6b1AKjfzZoXDXHhIG
5NpPhgyhHkb5OYyz9zFVGYFrWomWh6DPH9KPzXrKqJzId0f6x397mjerEemDaXXjkCzLJq1YF48S
AN9NZooXjKkqqfPCg8G3bih2IJ2jZEwCp+1oucIDsR2Nf/QbwHog062QyZR45wivIkM2hBCHsmHq
jkwJMxpgJex9a1MPmUPuwZNkLyi+Ed7BGjDaJwbl8AaHvYhDr24RBAyh6/fq6mApivNJEcoz0HHL
C3T86RwL4Qor+j8F3EO38zxSB2p5ZDDITJTul42HiS4HD29mcplBSz682a0dXtTrCoPDryCrRw49
RUx/609t6gWew6Nwtu7sKn8+GJ7h1pk5aJQV01tFDk9hIaUf3UsjABZ1ojY8tW6T9wf2G3oN+p5T
tLE8OYa4wmc3qveTfzeAfWuQcf/ZEy98ixDYmchsgU9hmc7yoFYaNZudukNg01qxtegVk2aYwkqG
tRCcbw0GH1wy8oeN8ir0F5TBiUzHsOZveXCIrBu10xNWM4f18SWxV7D51C6szIs7wzGMnmaXWfbP
Cy3+PAcgVehyO5q/b2FVw9ER/q+OSwV7E6w9SKW0snpGq3Fj742+VQL1T/EWd5K+OVwMs2DzFcUZ
nbRY4AYpICB2FRgH4oG9ignIHIfHVegWLzgeEpseIIQ71jAs7DA/jwquvolT3k3TTIIrhwqQ1cvl
NgzhFnyRlsizt2HBWbs+Cw5/bTgBBNyxt7897eIVQiNtbVHuj/y+9q+u+SVGU4SUvJy+oRshxp+y
rOTTJWzG4c0xVfxIwLXOYZPhjcND8fU5XWkVPOwo02Vu38Flg43njgkDB4hQYoksKM2R6FaSmuUS
aeu1TrcWTgrW/BgiZtrru43vIkc3LD11XYxbbneWuY57sRROtrPbrxfclj1IZlTVrkNSztvKCOI1
TCr8kywwFSZt/k5ZASzpMLrMBtIpm07cPlu7DaDFUhGENv/sLaLVQp5DXrOAyx3TYTpSWvdMHrHb
jGKNhv4qiezdJpjeS3rPP1QqLuBWNpv7FZqbkC/LUdZ42HaIrwgeeSvInkeQ0AbauEJmGBr2uzdg
iTkdP8zS1BsYki/ir0VJ5ZZPIEEwfU+SNMbxUUscoIqo2a5DpVtmcpU3jOBXWEslaU+MzzjdLROX
/qUGu5HjvN5QRIMqLBShWI9m5BiHC3pUtLNApFx4uvrgb4NII07RGHBYiGnuGf/SWLOMzYIR29Ps
7z8+c8QKes0X1SUfedmEVLva4/CjbI4raBCDrXjPAgekEs8Kj7Zundu12v/CEpQV+rAMe+yW09OQ
h55z6zvD91R5F0g4lAv5FnPqWbObSxVF79bxOGVRm4ye+OlQawaZnMM32SYnZJOBO6dJce8GHGHf
4ijIto8vUKqgkgPWpiTSSvOEnG3U3u3XIgW8OS0g9NmYYhDA8ojR9ENoMSHj+qbyORmXyz5PoQvD
wRQcBx3utiqqqD6Hw/NlBc/RLyPwttDQwh0W37HZWtz+3U8svx6s2KRUN/LDryniREGtlCdTrRNp
sJJlLCY4BWMqZw0U4Ai/JTxpvaaqA1U5LYotuhDoar+Q125G0Fj2izdNzR0RDP/CwDtLJ//1GjNr
d96oBzKc14bTfCURjJU4wx5IH0aWTgBjNA7K35US6sREYOK0eB+8bIOizOQRfJ5EkYcT1IpgZEgk
GnRJc0Ye6W9FwUqTKFHi1owpuNzHWFcfYrWbCnk0XfNbaSSti2FfEVZwWYvFCHh3KRKF1pIn3DoW
p1WRWOIon23Xumca578r0ZcHJe4GiNL/8xy3EBXwgYA1Mi3GHM6igePGgMq8VOHYi4vLwQ8JcFZj
Xt/fs82pNnucRIwkqFQh/pov1aIyk7YV11iVDha4PfSmuA72vcN3dG/Lmi3exbQKcPVBAW0pkHsM
gA0AzMw02SIm2EKRXj5gEzdl3N0SJbsJa8S1T6Vp2Xj/5wByshBhZ32c2cLAllh3dg+bcHrQyI3R
JgqSLj1cVLwvfA/9Pvv+jTHH7briG5xZeBq1Qkne2ymlX2tsoh0SXKd9OlHznmKxg2MNu3xYxSSn
u8TaWs4DW3Fiq/PuQEgh79C5Co9zWjVChjR3WeEPNUaAY6Fiq5+YulxuhFAk01y2VhkxCSq0ZUop
sNMs+75aBYrCix0qfscCJzS8gEL5+6roVPYY2O9b2dvPp1jqwWdM25WBwFGoQzUzLNIirSgMhUoW
VG4VAE/63gt3cCJLmbLx5p1q57L6z0kHaabf/oTILUlVYDUCRUoCix6EgEtJoznzsDBIxctvLx1x
XCeLvdz7JEE3ilT/FZ69W8mOyZq1ZJ0us2CjfrBMSQW/lvxySlMp7+mpJmkA166iRMzmjZnpE921
iVj5aze9yAnxCFl3WYQ+Ra3lclmWLQZDWVQXWAYHJbOnxllv3Gf/EWYEmGfu9Z5ba0Z10kQ4w+lH
oI216bMFJE3BN3OWokNBugLG9pn0t1GhpED3iOzsW+IC8TUPMCwOjgGqieAp95GPSDMEIvkPtxGH
MxEShA3HRs50p4MOqLa+U/myu7znw30NtnpE4veu0lMh9S88hXIpFSJR0DuvP+DSmZIcEvMrgXTd
wzzYmdSCyDbVy9tDhCf1De9kbghfc3VYQRiZysTyRzmRlHaJCjZgTlGGrEggEGMVdtISJ3FE11fd
zYVYWxcbtTQdMz8pM/0MtZ0ZBzVEU5A9uu4Hik4qenQw7oX70sR9+iQCxR72phs8/fDrx26UfQHu
8x2W9s6x8ca/mreB/swiKADOYp/ULhgqeOg51tp/og1HMRurELSW2Vntnro/AVW68crOlbUXi1p0
D3yDAnHQ/KU6+VFgsohk8fxOxoCdc1o+8MGDDOE0TIcx7l9TezQ7MkvSAy5JDkRR1jaomXlcgKjW
AUnrdq8pbVIr1Hr6cV7bLEP8NAvu0owTsxhGDSozw/Z0H8CC5h6MxuWZL09tMSmH7zqtw2DiLXSA
phn/8u8Nz4XK1T/5jSLHMrxs6NvHQnKCenYQj07x4ygZoWqClZ6NPj+dOP1Am+0e1xahhECG5ehw
izv38CWzf8e6isoss4mIBB/It5k77xXDeRCTYPGo31YN3kyi5W9+Ig16TsyVpUJ/xNDM3H+82yw+
KqjVXzYvy/gWTDru6KcxIIeapSNN9YHsqkZf85Urrtpq9Xy5y5sdTeRfBq8mZxqDjZHdbCzEXd/9
6AYKr323d31SlF4Xzoae2Ra9rl+8zcSTVIvUUVcsiL4M4xGuqbUVXkzwjDGxhgbu+29AL+i1P6ku
PGV+N06ewc2jobRCtLQMJb11gKkKiVaw3/bkgK8J1eXfZ3KtjoHnAsLK67BfxWI7lAJjWTL910dW
h0z4Oy2a3SOSU9qwCRVtpug+UU+W4bu3K7hZQZXjWVprVwjObEWkkowfCqUf7WiaMVwg1SZrFczB
EfNWg4nCmFyWFMhKplnwO7YRCSk1Y7EmdcXiCslN/ekjj0A/azSuDby3kiBwx3Q11LtnU/P+GVOI
GzEKwVJpOsrgIbl75yxoxY7fSWgdxamY0bjeYtrAqW6T8qK569Wfw+W34dO3PEbA48hSmbvnDp3l
9UISaZp2H0H2etI97dm39M/q7YMnPlrt+KCeD1W7U/XQxRe1K9pj+Q80MSUhLpfoZP2MgeK75tTe
jQdnUKwx66YPr16zHu75wmWh8LvpjqtxLoPYwBWI8Hm634jl4LATjvFY5uslcewBzyAewXGgNJwB
BRDYDZbpz475cl7jaAvWD7BwRacc9Z2i2gFhi+9GmM+ktNrbLEdmgrULu5azUxm4U8Tkey0P4Jgn
rwA07YZogJFqrEoBHsiUlDLd5nV8H6MwFOYYfcegt8NxtnQy7Vqeb6c8od1EvhKjxL4nb326M4Ug
7mqAUXVeTLAChGpqqvVvhC8op9csANmQXb1o9X/DgWS+nFzRPAeLsQBunksOP7drPtIBMVwN1hHC
rSNv+aQhZ0kcwwXfUSY2mhqWzwRUUGvhLhZzYGa6Fi+DtXXDcMjagHULshDiVJQt7ffgqYrGlR+L
FZ40Zoce3gCy1qjyDGkPgtrp9a5F4Hf2VcMfW0Uciq4lPH8GXyLS9KBjJ/I6tjyllSatwxgHXXut
au48iiySATlePeYue/7orYc6TTLdrBGq/+6wh7PcKulyRs2BbXnsZBI7JVV9PZxVbudCzn0uoEUN
7wATFJcfxSVNEkMQ0B/QV9e130RZClmTlgsZOWSoIN9is9PJkyH/3mHJI3WjqdgUwJEPY5S6meme
bRWiYanKF1F466YTlxtatmbP/9Xd1geY1LT+h4zvx5N12fKkRTkks6tmwHt8sS2TEXo7tGUieyp4
oeDp0JRk0O/gqFZ4rGV+K+q8J+eLiNhj7YUrkaheJqONNuAdLKax62ARv5f8nQmUSdBL6T5vMb/i
KMil4Tuhj8L5gD+6894lUzQnJ6uWFk1i7BvIKm4ibWTlGkanuJdxWNHEIdkOSgUU243Mt8pLpKe4
bV8pR39p6P/aTm42IMUpp5sv5RJPN8jgKVA45RPn8NPqdiJAkGCR/pR9h/CElhg95+b/Umnur1Qr
YvQaA383MNK3tIQ0e9t/m8iW1Yo6YT9gbykpXEqyvaTCIbsM8bRCOqidQUJRj8qSPW+y1+m0mjlW
cYwJVqu3Hojr+0UQYZa0Ha7KplswU+T9a4jEKqQD/GT3CuvoNzjQRGLmSwMwGwOswR97a6sBxjqz
L9Xr0v43DY2ufW7+o5IpDeIUhYB3C4nR+It75QX/1IucdcgYU1+YhqlzSpvdnhbEVal/PQMYXCAy
Q+cZX42y8ZWd7slIb/qqO9r21UMU/OiIhiD4fvT/boDUVZVu/ha6bWOlLmwHH1icqSp37JvNrQKu
Hqx6MQiqVMUpDBq06WEnBTrLUU5Z2HjbEzEPDtzfWqbnRL4AifIqAA/exicAmivFQaKaGyuMcGjI
2rLaNZoMSf0GjMyArntEMpptftdGm7RE3q/mzXgJUaafSygUEnLnViBZRW5WliT+Bx/3bh9H0rqq
QEWPvwgJ/M0h/YGLPVhYilrcdkJqtP9KSet/Uc+F7BU=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
crsuNbGKr2+HGjsnrWAO3ApjaENLE5lmTkmDpqy6wXOqFQIJnrktoh4R9l/TVlY/BEwSOhFtvEbq
RKvf5np1ZQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
JfoL36fNI5DjzIQX15YYPTK98uQI+Z0aMjl+hiAVWq0lzClrfpDjXWaPyQGiPvnYkkUnnCNmSyGP
qGrNm7GOsjezCGzMgQVr0792OKktWuV2kt0zVP1RUZuHk/37eznwh8N2o5rw+1YzW4dGzl1QbJom
tmB1UpBcp868gDBGaIo=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
nZKDyxkYA9uy2Xb3FwpEri9edMFM6SqsP4Aed0tRsVeeX445M1QANBu8GOl8sJ4QNxr6T3VU33/s
FK93SNbe96iXZq7rd0ZTftDGFn/wlb+m7r0WSjfp5pkNrLXaYMROFr5Y+cSF68dabG3s3COIhufS
z6LjxtxffkVZFl10/p5NYIyhVlCgj28/qTLowb5EYe1tZ0WPUAxBFuTyFKtX6X8Ha+x+nETiYK6i
PAhbV564AhzWOG1ohxDJJcn/sq1JfdeuDFdYSbNKycH1TqhYGY4rODz7EB10q4+UCVziUOr4Tv4R
NCotWnw5vu+fF2mIxu+vVyyYTSX+rhEfPs2iXA==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
cZ2XWhB75BM0Dt/9VMCHTjvBqUtECoyfIkFt8UyDN1IrerieLUkQavGMJnAyOgfgB2F9GkPnzVQV
7H9tsdZ87Y+A3ybRmsawN7gt2tqx/GGsvZlikuuSepi3sHN1vWxch8VpcI/SFn7CnlCh0jupM6VR
707+yLDj5AJkQVyH1LA=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
S4eCKuneguafnmn96ntdnponlGVTmyJu6zrxyF34ICbqsowM9Vhvgm6poU8XDQ/BrjS+RNPc37Fg
G4CZX64FNy0IB8M93ARmuOVvrGN2bYMf3jNRnVO/z1hOqr23u4iXXLcNjJcX+q+ntygTqDn+dkJa
tNf5JDJd7KcZbafDC5iOu1RcjafQnwlpqyaxuvNRdQkJM7f5tDyB/fmqWMaeSiYSf6cbwC2Jk6x0
7wUP2rAkEzcYQjkJqSGT74QQ9ZxpJuO1xNUbfsJDlmWbSmEyg55J46Q3XRBw9O4UV1TNB2XnSxvt
0rRnDIzS8sn75CDPR31VCmG8K+PwSCayofA3ZA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Ra+dhwbjk+YbIFdqZb8ZqUGy1cP7QALijuXSm01uksO3cyUk0ieWCY2HcoA5sxHHgoFZ7SiSEFN9
GXRNYFrVEzcmmrZk+fgLRtnpNtC3T760joXHmLTgzjTjaeSplO2G1Os+1meZnQ0OqFMI1gIP9Ooi
7j0VqpXmvGZijb/BrvP2+S+n3PqSK3hJYYxplgUzlT21r8PDyfPCsTZSg3bAqYDQWjIndM5o5Gzj
6xAKNz5BYrpdJMv9/WFRbxjlyIdoHb86Zii/pr77nAUonp8ou/m7zCJ/odhjhcHFH4bTXKj2aXYE
eS9KziA3DFTDC1XBeQi1tahWqVCt0qxm8pWOjQ==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
qkTFv5Lgi3C/OltSTWvEHaalk48LAs0arJiqO50Q1cxy0lsSdmKTDXZSYa/YbL6sFVvFPfTinQRL
paO2MiAYk9IUjYHvOC0pnLz1Okn81yejYvgT33iJuv7prvLXeEVbmnyy1r7e4p/aYy3bDZxPZack
bFnIfdsQ3TcYEIdR1YlKqbl8U0MVU9sO3hgPKxyheLmkOs0NTED7EgP5fm1ie5bkhPW90PNp6Xe5
UM+BH201JJ3yI393YHxCXWN8GUtxqtzwTFVLNWY+uRWe92zbvdDAIrmSnfEApN9RYYR0vWpdMUBQ
pniVGbODEZGGiquJjZTvmI+A0rwE1+N11xFndA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5552)
`pragma protect data_block
vuiRcg6iGsYwZn6Pa+L71rvHML9PZsDacDqkBj74hMx+kwvyGaUXOTnhz3X2zQ7EGvG/EUwPZkQn
7gIwAyZaAI93F3r9GAlBwOqD6V3qcjjZcS43iHcUcCnsoj+scEpaTAjvb+WfmAvzLY+xgwC7L+2P
DDZeNctkBCHTBKFajnmpzVZWlYEPe6rB2udAw0o7PBiEOPCQZTlolB6mMuLdRkborFRM4+DdsS74
R1XQDajDl1Sb/J13EFFiQJoC4oK6AJUd9BiSc5kN5J/MLDDdkh+DNoVHZa/5SbXFHDQJ3vKHxLrS
/d6boDQFP/auz3asueK1Iw1y+3SuqXXyMOpwjG3WHpVEI0p4SoxL2doUNiPZu0/3R0SInxVmx8VA
2R9IWEABj2YsfVoKwlB/q0G8dLGAEwtfKd82A2eixhk17PU7DRxWbnnWnD2ntb3mjTjxvpL0jV95
w1ZJmSDcUSvF/z0WEpmZKV/mHFLU8QL8oaQ0fvkH3qS4bJD54Z8ASoOLVhQk8FTaVqL2orWpP/+S
FJe0z/jLoc9DFL0fJlb/pvyMWyIxydtZwRIPomvsaAZxVY/R+1qcnAXmcbYoPRPjCeDv+4UdnxWN
Mvpmvo5yuI4WoiAaljNcSs/QAgvRQT1OvpNGVd4hiTDzZXyjIuvVc/VSiy6rvFCMJaU861zsw+N2
d7ic0GR58t1uBWCYFrzMWsiqeQNJAzYkNkDeZ14z2/4Piz5CE4jIpqNBPsMShgE5OT0KyWj20Dzh
9KoopvnjaNOkikF/Ukqdnd6Bl8K6vPX4zv1pseTlgMF/V+bMy5oA634TujMtwNLEnZ/jPgM0rZ6w
3HVPbV/PgBrMxnqo186MjDamv+/FkWlGAIPAaSyBXI71KKGoadsrGawIWR3sWXqT4R/Y7rY0ECH8
9WixYK1lRrDb78HjnIP7gt7JXPJMNmT195XLo4rbiU0DR6oSlSJqx/IWBHORcTrxjy3zxsufWcgX
KFOOAWkHzhoevCROOIzLb97KNNlI+EwRVu19qbsSf5MkNPI+QiUHxjBR+F38UpPTZOq2F2gO2vOe
45NtR5919PeDNuHHE4eCIEGuNsH08Qas01kWUKrzeD9B9xp7UwPqCTivUVGbzshpzFZ/ySSWiEpO
4ulZy1JMGx8O0yP2gRd6awJIPZjN6yRbLMiWqmsEuq4vgCdAfe3KbOEEBFm/SWR+uHBbOM+R2LF9
8jI7Kcp2Wn0bXtN9K1fgdpWNMLehqNUi8g6XD6rWMAvr4TBDsM1FKDtR8qa1NUUCb0j0S4yiPfyM
Li7mooQSdSTqPDWIDVhcFfdRXK9H6mP+6PobfntKF+Fq0BsOJyzV7sDRhxIVrw6Z95jx+UGCrHAi
CUwxxENpY19gu2/uM33gAB2a7GJ+o43Yy3iLOtD+4rh9yrMGkDx9TkqildmMxTao9dpzh3tIuezX
J/2o+urTEGdJSjDLt61+yz1klJKGK49Wa3qyXJPQBuAE+ZvDWtsfZ6RR8+/+oOOLSXL6VSBnqYYj
34PXSDwu+649M50ZLNuqyroxlO1Ct9z2+4FWkGdVJVJOwGxq5CRVswK8yAhsCmypdw2JprS+BywV
N0dO3y04C9TN64Tytg0QujLRM+FCw34D0dRXuj1kxbAI6uB4M8Exyx/4tLFRcJSUuARl3bM0wwCr
peLLyY6IsfWtajylHNM3fCMZyIylmC0Ud+SIEX7Dnhdu2piyw/Z8EQEELnZjqW/3nLCrnResCCgO
K2TF6bEI3QLM2tPws7EILxCwxQVWyt+rhSZ0aHpB07VPRi745auaXly8pRisaNMvG7SY4opIenZM
kjzMSqoaxSSd6XcPOgJTXWTkx1qyQNpbvY4HG83JVqWy/NtP4l09+jQGU4QLzdUbrhqH5rrA/XGu
lEsM6JPpUafhdVkxYLb2q4qtsi46+YG8y382a5TjqPVg9hPXkuHdRxGSkDzjalU0V7l1kqEIW2eq
qEyNddmJfCCx1wtLxYhPcELkCSoCDuKHdIVx4cB8r87C9b/FRdsh8CeeIzGbXC27cSdNlkohSHLs
0JT33LDG000fdKrlrwe/x1dBC0gCLUYKCi+fWWvHFpXoDzY6kBF7rgCpn4FUhdvf72KSFuvlW15B
3TMj0mlcJQy+t2wz8wnwlx5Pg3hN2d8HhLDfT3EZ6vNNNn6DvJjOknfxMv23wb9cDLDGH7PllnWu
zughvTkeOXhXY5oa2MpX6ziNkJn1TCeSwTmAoASMW/BJhbH1KirJynE7AiT1WHXMwkpprWD7i98b
PKfkH8IY5HmtY47L3jLolx6JDhsKglZBJ2NuFqzJ86EaJ361Usz5JqOp3XUJOW8hko4dMGnFvgXN
zo9yPjLkE11hz1HwZ0QJ4fvuXYFFsFZGsYqOR6p725U6gYoEequT7Kpd+6mfRHLKvp5PdFON8L/Z
7lUdFbQBahWS3apeeimBv0IPGCAVrBw02hdNu+Q9xa4ss4hCyCYdzRfoY69a3hW7BfgjdisxAPOy
Nd7GR5g/Q1Nxc2dyDQzjyHbTJ4QqNPeWNRl16O8iZaxz5v7meQyt1y8hUS3s4Zg/0onRezUL7TDP
WmjWf0JNvirXgBKaewizZsRRrhDjA0gBbPoB0fFMPe+c1LzaWzhZZCeCEBxbf9cCSGJlW3UJ6kzT
0DRfMpDXpCKbuDahVkjHgS+n8q0m1sJfE97fAXBIhXBbEYKqk6UvMCFwtHyFqRgB+stzk7CPoH+o
t5gX7E8kvdjCy9fhEnskCdrKZFWivB4gquAhJAiND/dl6HMsXsRgjDDacL5T+ZdwpPKzhAQjWiaO
bY3GOqmmQW0a5PzPyrtrAxBeyiu0wF/U7JzFV3IjTt4SwJ7Pdrhil+Q+34h9RSoyL9HDgypRovaq
HlEQ5MPpMXGAa6UEUnz7XnbdDVuSqfyrXM/HjMxsuJvVdYGq/7/rR+qYDAxanAIzGfpnucPE5qsz
aLNAnq4is6mm3DkiYV7ilf2trkW0ZsBmSHcpxo8HgQndO1zdef5UCBXuKR14bq2YM4jSwz6jQ+B/
zQLHcNshLXp0Y1bOKNRDyl4KjcrNNzT3Zb3t/+uiUQtMadDbveJK0SJs4jvbS7qb+WzJnIkjpFpF
y7DfCTKoWMm7cWRlZFcNYUp0FtXv52uQDlheZtTNaMqbo7cT5PjkzmrNlKkN68lldzf3cQNXTCUC
RzlxUcOXcIseX6RxYi6/F3fVZHmx6LeNd8DfeqSeQKhTSCZXuraFDBZrzoi/X6YMtudG+zKDpJU4
Ijds6qc7pssL8iDI++PbcYU+nUUMBhydqWupro61cB4YA6YEGufLOnnRAHgmyRb+junuW/7tASnH
aqXOtLG/rnWNPcUt1c/7BpIm3EOgSIknqebatFCyWidJ4U+00mM3B7x/pTqbhajZT5SpSVD2f9Mf
VH/L2OjaYSP9EH43N//6I+yQyn4vtL2oNli91b0ww/m5yCC7AtZDSQf1vUBrIo9T6OdAmbjYm/M7
Yny1KHRafFDySLVS9siGLLDr5G0K41ydgqFzmEqo3e69PLwMTsBaDjMJ/CwrUYYamUtHnH/LXhNw
gc2Edb7OKaz/X22lajIJS3es86ksJ1TJO1clCfA6hO4MA/+2+hssxzVKliWy3p0HXsNLXd5OtwBw
e26tQ/K78eoeVNz7VDUshXMbVvrODgrDWBt2tg44boms60WfSZltINvPYfFhGD/D5GQg57Y05iRI
t9nUVkpv1BoPJ2NdvYy6q0GCzQLMkVlbjsLlLqWzDA6dI0JXSxX6/4Cps8yKSNnqZ8BBmQ8hRV3L
XQ97As41wvGpa068CniAGsGpPgGqp69Q+quNc3fFnErCtUMJvhfMbFVM8+KxSTyA1FdsbaljVcfZ
udZ2xEyD9dbYSd4Gt8HRgNXxiqB+eJjqnM8KsaBZLlsMnw3ppFFLyCSJf2otZ2eTGm34tkfO3cs0
vCCU5e+dGyivngbfq3O6ifEQaFsbTcBFXRzzmmTP14jvEibXN4xuBdn/3EgQrbkqmXUGgUd8fkDN
VTgoHQcYtiMaWzHgHodnpi0ZUSZiMcjmEpNVt8NB35/cetRKCYJD/ZGfBko7sv7oOqcT4lt6MCEg
2L685jzpq4DlioEnLs9g0k40cBt/wHaQPo/JYPMVXyN5aOJ86pqMPRgQtZLr57vRe+bXQMFVyB+r
EGhzdWFXtC1gBkVTyFuqVlHyHgamcogfFmwBNeatuU+7eZJvr5gZItXk0f8Lh2+qKXukvC3a7lVz
D4uuh/vIsbyOCMAha8DPBFBln3xvfY3wbjkTb4jOJ9wrKm4FsTm5pUld94rIqFlSMdWpO0NWhjue
TSEXq7a6L1cc/NWd8/kgs5XUEkASn5auifLl6+UKVlylYPOr/OB6Ji9ejT2hPiAqIdHtDtDCejBT
dHly3t/QSdmmf0LhPW/+iTcSLKQdhqpgQKMqoYAMDegDPEHOq9E5GMoDTLnVkxsMKyoNFjlbJzSa
lTop0NZ/nutMrri7CRd1aNIL+7JwAYF4UeKrMTJiQgT2n3BPERUHfRaFuQttcIx1ycs5AwX7uD3h
lRMRyM4xQucw19i7N4aoovp7Ekh3sQqI5F19AeIV98BM5tU+QP+BgGD+tjLQWz7HPCHnzr8AJmtE
mrn3mYcMkqBqTIbnKkcnQIkVD/AQb3tKzUW1XIVsNIPP6krZVQWl62mL3QUCEr+UT5TaGKOm1O0M
Ltw/YfM5D07LlcbFfPdw0KiyrVTEZJXd9jcgH069k2WFASkZkpVD+7ZGoXLohF+sYo5a5WLwugr6
vRYTLcJffYVqcRrd80P3TwvsSp8KmtRbwGTQuXWsElbI5YvKiDTj0kHh9R6u7yXYf36hXUgAtaeY
R9q7Y0NqjvSm6/QhjD2vxUCaLGeUqOZs3rL+qwTHzaJt1rgx5k8XJyjAj0axLXUaYl4P3cLU7vIX
pto30sruYlBsnLPQIHLYc/bsyrSNCk5+VywoncZQu/At0CwiDnqyMK7xT8Hvd55BxdXLgCbRBqNH
mO8epVdcgRJJXGOKJERGvQKdHBUKSoVYzSJAkxtjn10jDQW6fFwidNlah9eqtcVAp/EY/Y/ZwEmN
SXS21Pk6Ewzcfp6+aRVQdDKS2oQJQAh5InfLjFlsYbEB9wTM5eVbHMaP5LuGQv1JFi4BcgaoTycd
TTraZ/B6pDsg6g3i28+pfuvwlMmLbOLqE0A5h3ycPywqrCcdgKA2y9O1HkUL7f8UKl7QganqWjrd
gRrJZI6O7bs1SiFeyrqYuAFOKlxXHW0OuQmvmYUXI3B2nIBrtxT7gIbAgDTLayAzbzHodwuLPCIi
HDOr+lsTgDL4TdS56CeLT1Nc26uf5tMZ+pSRivRU58ypJqIL9OgLLYHA6R9NGTnIiFSgcFPdTab4
UiCIN+2VRNzlf790JImA0cT+ZjQMZ+ifO58LnYW89ZwSOoIVh4h4RuWlWdelLeSyLnQIkgIgkvcc
g6/srj7oDJrEVgEzkRjoe728D02l+fs1b1E20euIsR097PXDePNDtSc6BJuEwEgXoegQh+52pboq
aXTGEFBtRc2/f+SCYvghB8tpcQWvuZDiFoC2yhHZFPghBaID5O1t3FvlsBKoQ31zMW/WowYVX7aY
NsE78fwQ9AiW7muBjoliKDJIodgZryTceTlvl07ja91J6PB8NJ+oT258qB/ft6HuzXTvVkMa25Mj
rJKxSX6S92Q1glQvbwmSk4uN54beFf3y8vMU+ep6BvOHxxOig9M6nRPwM8dcP3kZmdybkCuhZRGm
X7mzAJi/wMT4pC5jivOZM2bIHzNh0+MGwC9esTNkQQabClRstcp+F6f4SGTTyWKZ0Kysd+kVxnwB
oHfhu8KzHsSyxh7UPrNeKLRh5tlilIWvH2047e3YF5+jsvFQ3w2bgZ44co2WvBqSaf/Kgi/eYx45
VZO3F6VhXR7ebENTD+Xike5pRMnfYBXVnp8xy4oEshzO1htBdeSaJIroTPjC+c5sWyblhHxhVDgy
8bupVUgsULmmcdO814LTdWPhhbjzTpb13g1KMhyui5xu+jncCTQ1senT+tUZDrIuXnataO6Z3Vk/
rL72uXJ3fyqp9oVHelp71BR78xYU11yPSRHQ38+UgZDcb73pcxjBstB1i6YstuUMRLI4+D1EuRZm
Yh4Je30J3iW+KRLXaUUU8f9w/jJhnkgcyBO714pERo0U3JYfU6bm4eqnA9pPtec4wwHp0/Mpx8ED
h9Fx28hNrretsV7tNHuKsGAGfsOgxM+m4/LPN5c/fSlRN7uXOz95hlRSs+C3YKxwlTwkL6Z4J+Dr
oElwjEUr9HiDDogT7+PRPZouObz26pYOLQ+ha2LBS6fkKCbe8XJy4QBKvX0WJUaZzTvq8WirfMES
WDbFtdtKZIYOqnjjle/mpxGea3MAPzTGmd9bxnuVrGaf5hWVB2QqH3rNLdocIHEWUutX2cukJRX0
UAjGkmngRcnIhIPwViTpzkCRtHPcTQgHFhu2HROX1V/UHBr9yergxawomlrJx7mBgW1u943yh1So
ioI7qzF/o8KFvK6ifX/c8lUceua93+qL+KfQPoCAoP6ziB0ggs+3RXeRn9IAcOXtiEWIm+nUw1dx
kMUdoeQerpjgkZ/ev6upeEbxL/WIyIdnBoGZaBJePTLQiLUf38I7EMjJlJ6/F1NWhcuP/ggZgwwm
LHmNnaUgrbHfuBLZ4e4lyPJd8JsjcpevuRuxMjFfh/XGiVtozMwZ59npk5DzVjSEAApseORh1Srw
gloOi9MEiOoaz4GLrdt73fojltiGVcbLSQ+ptYqUCqJRYsfBegOJ60hSpYhQKkOaSSjQUi1g+YuO
FXJ4Cj5sRMJWackxdhXfclUYzhQ1pfp809tya5jhojDUBCU5Z9Uxhi7cWu182DEMKexnMMP5afg0
f3QyLQ20aNBBWRxS5AhReG9sT90DODTBdz3N2dyrjEMCsB/68zwVWgBt/9bIeFpoJuKJUMC8hIXi
Ni5edqRLAVsXlPD/9IVsute2ilKUnyhwRsrE+V4jt8gFIK0810P+/5xHfDj4mA/0260GUIB5+844
lKGxmPwQ5Iv7dIMjP6Pw+tmw8LD2g/pcpyUoMoLo7xn6jD5v7wNeimKuALCB77E/8tVTPlwa81Ra
yir5Q0ozKPsjjLYmYnwqeKdYrNmiZHKYc1y2zYTNzjmZgnHKL33WyOsLl/QZIfQJvWVj5CL71g+p
N/j+Ko7tBlXm2NjjD5aBDBA/7R7HGD0h6grFxRX7eO5nQKvIIF7v7JEdfjaSSqk2qWPiZsfw7T4r
1iHA9IUl6Pnk5lusSBgFFiy9Asrg9vOAEoM97nMtLoHl8k1FbGMPKZc2kROh59vyWKWNlnLq3Vxt
K5UmzD+QsAxpi2MV63fTOcHNkAbcr1g=
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
