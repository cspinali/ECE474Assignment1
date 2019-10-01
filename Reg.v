`timescale 1ns / 1ps

//Test Comparator
module testReg(Clk,Rst,d_1,q_1);
	input Clk;
	input Rst;
	output [63:0] d_1;
	output [63:0] q_1;
	
	
	Reg #(.WIDTH(64)) Reg_1(Clk,Rst,d_1,q_1);
endmodule

//Register Module
module Reg #(parameter WIDTH = 64)(Clk,Rst,d,q);
input Clk;
input Rst;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;
reg [WIDTH-1:0] q;
 
 always @(posedge Clk)
 if(Rst)
 q = 0;
 else
 q = d;

endmodule //End Register Module

