`timescale 1ns / 1ps
//Test Comparator
module testComp(a_1,b_1,eq_1,lt_1,gt_1);
	input [63:0] a_1;
	input [63:0] b_1;
	
	output  /*[1:0]*/ eq_1;
	output  /*[1:0]*/ lt_1;
	output  /*[1:0]*/ gt_1;
	
	Comp #(.WIDTH(64)) Comp_1(a_1,b_1,eq_1,lt_1,gt_1);
endmodule

//Comparator Module
module Comp #(parameter WIDTH = 64) (a, b, eq, lt, gt);
input [WIDTH - 1:0] a;
input [WIDTH - 1:0] b;
output reg /*[WIDTH - 1:0]*/ eq;
output reg /*[WIDTH - 1:0]*/ lt;
output reg /*[WIDTH - 1:0]*/ gt;

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