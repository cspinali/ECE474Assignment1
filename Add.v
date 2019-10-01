`timescale 1ns / 1ps
//Test Full-Adder
module testAdd(a_1,b_1,cin_1,cout_1,z_1);
	input [7:0] a_1;
	input [7:0] b_1;
	input [7:0] cin_1;
	output [7:0] cout_1;
	output [7:0] z_1;
	
	Add #(.WIDTH(8)) Add_1(a_1,b_1,cin_1,cout_1,z_1);
	
endmodule
//Full-Adder Module
module Add #(parameter WIDTH = 8)(a,b,cin,cout,z);
input [WIDTH-1:0] a;
input [WIDTH-1:0] b;
input [WIDTH-1:0] cin;
output [WIDTH-1:0] cout;
output [WIDTH-1:0] z;

assign{cout,z} = cin + b + a;

endmodule //End Full-Adder Module
//test