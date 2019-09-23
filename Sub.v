`timescale 1ns / 1ps

module Sub #(parameter WIDTH = 8) (a,b,clk,diff);

input [WIDTH - 1: 0] a;
input [WIDTH - 1: 0] b;
input clk;
output reg [WIDTH - 1: 0] diff;


	always @ (posedge clk)
	begin
			diff <= a - b;
	end

endmodule
