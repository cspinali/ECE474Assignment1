`timescale 1ns / 1ps

 module Mux2x1 #(parameter WIDTH = 8) (a, b, sel, d);

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

 endmodule
//test