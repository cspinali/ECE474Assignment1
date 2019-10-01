`timescale 1ns / 1ps
//Test Subtractor
module testSub(a_1,b_1,clk,diff_1);
	input [1:0] a_1;
	input [1:0] b_1;
	input clk;
	output [1:0] diff_1;
	
	
	Sub #(.WIDTH(2)) Sub_1(a_1,b_1,clk,diff_1);
	endmodule
//Subtractor Module
module Sub #(parameter WIDTH = 2) (a,b,clk,diff);

input [WIDTH - 1: 0] a;
input [WIDTH - 1: 0] b;
input clk;
output reg [WIDTH - 1: 0] diff;


	always @ (posedge clk)
	begin
			diff <= a - b;
	end

endmodule //End Subtractor Module
