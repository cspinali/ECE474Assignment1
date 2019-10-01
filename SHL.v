`timescale 1ns / 1ps

//Shift-Left Module
module SHL #(parameter WIDTH = 8) (a,sh_amt,d);

reg [WIDTH-1 : 0] a;
input [WIDTH-1 : 0] sh_amt;
output [WIDTH-1 : 0] d;

    assign d = {a<<sh_amt};
	
	endmodule //End Shift-Left Module
	
//test
