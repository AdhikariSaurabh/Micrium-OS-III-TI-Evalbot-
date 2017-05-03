// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (lin64) Build 1056140 Thu Oct 30 16:32:04 MDT 2014
// Date        : Sun Sep 25 20:22:40 2016
// Host        : saurabh running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/saurabh/Desktop/project_final_dsp/project_final_dsp.srcs/sources_1/ip/xbip_dsp48_macro_1/xbip_dsp48_macro_1_stub.v
// Design      : xbip_dsp48_macro_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2014.3.1" *)
module xbip_dsp48_macro_1(CLK, A, B, C, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[3:0],B[3:0],C[7:0],P[8:0]" */;
  input CLK;
  input [3:0]A;
  input [3:0]B;
  input [7:0]C;
  output [8:0]P;
endmodule
