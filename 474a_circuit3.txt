`timescale 1ns / 1ps


module CircuitTest (clk,rst,a,b,c,d,e,f,g,h,,sa,avg);
input clk,rst;
input [15:0] a, b, c, d, e, f, g, h;
input [7:0] sa;

output [15:0] avg;

wire [31:0] l00, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;

//l00 = a + b
//l01 = c + d
//l02 = e + f
//l03 = g + h
//l10 = l00 + l01
//l11 = l02 + l03
//l2 = l10 + l11
//l2div2 = l2 >> sa
//l2div4 = l2div2 >> sa 
//l2div8 = l2div4 >> sa
//avg = l2div8

Add #(.WIDTH(32)) Add_1({32'b0,a},{32'b0,b},l00);
Add #(.WIDTH(32)) Add_2({32'b0,c},{32'b0,d},l01);
Add #(.WIDTH(32)) Add_3({32'b0,e},{32'b0,f},l02);
Add #(.WIDTH(32)) Add_4({32'b0,g},{32'b0,h},l03);
Add #(.WIDTH(32)) Add_5(l00,l11,l2);
Add #(.WIDTH(32)) Add_6(l02,l03,l11);
Add #(.WIDTH(32)) Add_7(l10,l11,l2);
SHR #(.WIDTH(32)) SHR_1(l2,{32'b0,sa},l2div2);
SHR #(.WIDTH(32)) SHR_2(l2div2,{32'b0,sa},l2div4);
SHR #(.WIDTH(32)) SHR_3(l2div4,{32'b0,sa},l2div8);
Reg #(.WIDTH(16)) Reg_1(l2div8,clk,rst,avg);
endmodule

 



