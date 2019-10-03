`timescale 1ns / 1ps
//Test Subtractor
module testSub(a_1,b_1,diff_1);
	input [31:0] a_1;
	input [31:0] b_1;
	output [31:0] diff_1;
	
	
	Sub #(.WIDTH(32)) Sub_1(a_1,b_1,diff_1);
	endmodule
//Subtractor Module
module Sub #(parameter WIDTH = 32) (a,b,diff);

input [WIDTH - 1: 0] a;
input [WIDTH - 1: 0] b;
output [WIDTH - 1: 0] diff;


	
	assign{diff} = a - b;
	
endmodule //End Subtractor Module
