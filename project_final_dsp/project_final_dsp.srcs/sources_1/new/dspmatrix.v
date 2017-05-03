
`timescale 1ns / 1ps
module dspmatrix(
a1,
a2,
a3,
b1,
b2,
b3,
result,
clk
);


input [3:0] a1,a2,a3,b1,b2,b3;
output [9:0] result;
input clk;
wire [8:0] res;
wire [7:0] ab;

xbip_dsp48_macro_0  a1b1 (
  .CLK(clk), // input clk
  .A(a1), // input [3 : 0] a
  .B(b1), // input [3 : 0] b
  .P(ab) // output [7 : 0] p
);


xbip_dsp48_macro_1  a2b2plusab (
  .CLK(clk), // input clk
  .A(a2), // input [3 : 0] a
  .B(b2), // input [3 : 0] b
  .C(ab), // input [7 : 0] c
  .P(res) // output [8 : 0] p
);

xbip_dsp48_macro_2  a3b3plusres (
  .CLK(clk), // input clk
  .A(a3), // input [3 : 0] a
  .B(b3), // input [3 : 0] b
  .C(res), // input [8 : 0] c
  .P(result) // output [9 : 0] p
);

endmodule