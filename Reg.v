`timescale 1ns / 1ps


//Register Module
module Reg #(parameter WIDTH = 8)(Clk,Rst,d,q);
input Clk;
input Rst;
input [WIDTH-1:0] d;
output [WIDTH-1:0] q;
reg [WIDTH-1:0] q;
 
 always @(posedge Clk)
 if(Rst)
 q = 0;
 else
 q = d;

endmodule //End Register Module
//test

