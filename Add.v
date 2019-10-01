`timescale 1ns / 1ps
//Test Full-Adder
module testAdd(a_1,b_1,sum_1);
	input [63:0] a_1;
	input [63:0] b_1;
	output [63:0] sum_1;
	
	Add #(.WIDTH(64)) Add_1(a_1,b_1,sum_1);
	
endmodule
//Full-Adder Module
module Add #(parameter WIDTH = 64)(a,b,sum);
input [WIDTH-1:0] a;
input [WIDTH-1:0] b;
//input [WIDTH-1:0] cin;
//output [WIDTH-1:0] cout;
output [WIDTH-1:0] sum;


assign{sum} = b + a;


endmodule //End Full-Adder Module
