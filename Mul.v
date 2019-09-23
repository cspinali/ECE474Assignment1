`timescale 1ns / 1ps

//Multiplier Module
module Mul #(parameter WIDTH = 8) (a,b,prod);

input [WIDTH - 1:0] a;
input [WIDTH - 1:0] b;
output [WIDTH - 1:0] prod;

	assign prod = a * b;

endmodule //End Multiplier Module
