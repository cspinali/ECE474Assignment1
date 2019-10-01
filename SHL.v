`timescale 1ns / 1ps
//Test Shift-Left
module testSHL(a_1,sh_amt_1,d_1);
	input [1:0] a_1;
	input [1:0] sh_amt_1;
	output [1:0] d_1;
	
	SHL #(.WIDTH(2)) SHL_1(a_1,sh_amt_1,d_1);
endmodule


//Shift-Left Module
module SHL #(parameter WIDTH = 2) (a,sh_amt,d);

input [WIDTH-1 : 0] a;
input [WIDTH-1 : 0] sh_amt;
output [WIDTH-1 : 0] d;

    assign d = {a<<sh_amt};
	
	endmodule //End Shift-Left Module
