`timescale 1ns / 1ps


module Circuit1 (a,b,c,z,x,clk,rst);
input [7:0] a, b, c;
input clk,rst;
output [7:0] z;
output [15:0] x;
wire  [7:0] d, e;
wire [15:0] f, g;
wire [15:0] xwire;

//d = a + b
//e = a + c
//g = d > e
//z = g ? d : e
//f = a * c
//xwire = f - d  
//x = xwire


Add #(.WIDTH(8)) Add_1(a,b,d);
Add #(.WIDTH(8)) Add_2(a,c,e);
Comp #(.WIDTH(16)) Comp_1({16'b0,d},{16'b0,e},0,g,0);
Mux2x1 #(.WIDTH(16)) Mux2x1_1({16'b0,d},{16'b0,e},g,{16'b0,z});
Mul #(.WIDTH(16)) Mul_1({16'b0,a},{16'b0,c},f);
Sub #(.WIDTH(16)) Sub_1(f,{16'b0,d},xwire);
Reg #(.WIDTH(16)) Reg_1(xwire,clk,rst,x);

endmodule

 



