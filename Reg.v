`timescale 1ns / 1ps

//Test Comparator
module testReg(d_1,Clk,Rst,q_1);
	input Clk;
	input Rst;
	input [31:0] d_1;
	output [31:0] q_1;
	
	
	Reg #(.WIDTH(32)) Reg_1(d_1,Clk,Rst,q_1);
endmodule

//Register Module
module Reg #(parameter WIDTH = 32)(d,Clk,Rst,q);
input Clk;
input Rst;
input [WIDTH-1:0] d;
output reg [WIDTH-1:0] q;

 always @(posedge Clk) begin
 if(Rst == 0)begin
 q <= d;
end
end
endmodule //End Register Module

