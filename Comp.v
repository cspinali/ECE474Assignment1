`timescale 1ns / 1ps
//Test Comparator
module testComp(a_1,b_1,eq_1,lt_1,gt_1);
	input [7:0] a_1;
	input [7:0] b_1;
	//Not sure if these are reg or not
	output reg [7:0] eq_1;
	output reg [7:0] lt_1;
	output reg [7:0] gt_1;
	
	Comp #(.WIDTH(8)) Comp_1(a_1,b_1,eq_1,lt_1,gt_1);

//Comparator Module
module Comp #(parameter WIDTH = 8) (a, b, eq, lt, gt);
input wire [WIDTH - 1:0] a;
input wire [WIDTH - 1:0] b;
output reg [WIDTH - 1:0] eq;
output reg  [WIDTH - 1:0] lt;
output reg  [WIDTH - 1:0] gt;

    always @* begin
      if (a<b) begin
        eq = 0;
        lt = 1;
        gt = 0;
      end
      else if (a==b) begin
        eq = 1;
        lt = 0;
        gt = 0;
      end
      else begin
        eq = 0;
        lt = 0;
        gt = 1;
      end
    end
endmodule //End Comparator Module
//test