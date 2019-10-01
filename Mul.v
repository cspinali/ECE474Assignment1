`timescale 1ns / 1ps
//Test Multiplier
module testMul(a_1,b_1,prod_1);
	input [63:0] a_1;
	input [63:0] b_1;
	output [63:0] prod_1;
	
	Mul #(.WIDTH(64)) Mul_1(a_1,b_1,prod_1);
endmodule


//Multiplier Module
module Mul #(parameter WIDTH = 64) (a,b,prod);

input [WIDTH - 1:0] a;
input [WIDTH - 1:0] b;
output [WIDTH - 1:0] prod;

	assign prod = a * b;

endmodule //End Multiplier Module
