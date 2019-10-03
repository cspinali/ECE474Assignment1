`timescale 1ns / 1ps


module CircuitTest (clk,rst,a,b,c,z,x);
input [31:0] a, b, c;
input clk,rst;
output [31:0] z, x;

wire [31:0] d, e, f, g, h;
wire dLTe, dEQe, dGTe; 
wire [31:0] zwire, xwire;

//d = a + b
//e = a + c
//f = a - b  
//dEQe = d == e
//dLTe = d < e
//g = dLTe ? d : e 
//h = dEQe ? g : f 
//xwire = g << dLTe
//zwire = h >> dEQe
//x = xwire
//z = zwire


Add #(.WIDTH(32)) Add_1(a,b,d);
Add #(.WIDTH(32)) Add_2(a,c,e);
Sub #(.WIDTH(32)) Sub_1(a,b,f);
Comp #(.WIDTH(32)) Comp_1(d,e,dEQe,dLTe,dGTe);
Comp #(.WIDTH(32)) Comp_2(d,e,dEQe,dLTe,dGTe);
Mux2x1 #(.WIDTH(32)) Mux2x1_1(d,e,dLTe,g);
Mux2x1 #(.WIDTH(32)) Mux2x1_2(g,f,dEQe,h);
SHL #(.WIDTH(32)) SHL_1(g,dLTe,xwire);
SHR #(.WIDTH(32)) SHR_1(h,dEQe,zwire);
Reg #(.WIDTH(32)) Reg_1(xwire,clk,rst,x);
Reg #(.WIDTH(32)) Reg_2(zwire,clk,rst,z);
endmodule

 



