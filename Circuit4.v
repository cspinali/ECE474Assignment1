`timescale 1ns / 1ps


module CircuitTest (a,b,c,z,x,clk,rst);
input [63:0] a, b, c;
input clk,rst;
output [31:0] z, x;

wire [63:0] d, e, f, g, h;			
wire dLTe, dEQe, dGTe; 
wire [63:0] xrin, zrin;
wire [63:0] greg, hreg;

//d = a + b
//e = a + c
//f = a - b  
//dEQe = d == e
//dLTe = d < e
//g = dLTe ? d : e 
//h = dEQe ? g : f 
//greg = g
//hreg = h
//xrin = hreg << dLTe
//zrin = greg >> dEQe
//x = xrin
//z = zrin

Add #(.WIDTH(64)) Add_1(a,b,d);
Add #(.WIDTH(64)) Add_2(a,c,e);
Sub #(.WIDTH(64)) Sub_1(a,b,f);
Comp #(.WIDTH(64)) Comp_1(d,e,dEQe,dLTe,dGTe);
Comp #(.WIDTH(64)) Comp_2(d,e,dEQe,dLTe,dGTe);
Mux2x1 #(.WIDTH(64)) Mux2x1_1(d,e,dLTe,g);
Mux2x1 #(.WIDTH(64)) Mux2x1_2(g,f,dEQe,h);
Reg #(.WIDTH(64)) Reg_1(g,clk,rst,greg);
Reg #(.WIDTH(64)) Reg_2(h,clk,rst,hreg);
SHL #(.WIDTH(64)) SHL_1(hreg,dLTe,xrin);
SHR #(.WIDTH(64)) SHR_1(greg,dEQe,zrin);
Reg #(.WIDTH(64)) Reg_3(xrin[31:0],clk,rst,x);
Reg #(.WIDTH(64)) Reg_4(zrin[31:0],clk,rst,z);
endmodule

 



