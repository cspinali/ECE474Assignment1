`timescale 1ns / 1ps
//Test Mux 2x1
module testMux2x1(a_1,b_1,sel_1,d_1);
	input [63:0] a_1;
	input [63:0] b_1;
	input [63:0] sel_1;
	output [63:0] d_1;
	
	
	
	Mux2x1 #(.WIDTH(64)) Mux2x1_1(a_1,b_1,sel_1,d_1);
endmodule

//Mux2x1 Module
 module Mux2x1 #(parameter WIDTH = 64) (a, b, sel, d);

 input [WIDTH - 1: 0] a; 
 input [WIDTH - 1: 0] b;
 input [WIDTH - 1: 0] sel;
 output [WIDTH - 1: 0] d;
 reg [WIDTH - 1: 0] d;

 always @(a or b or sel)
 if (sel == 1'b0)
 d = a;
 else
 d = b;

 endmodule //End Mux2x1 Module
