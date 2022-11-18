//-----------------------------------------------------------------------------
//
// Title       : No Title
// Design      : project_vlsi
// Author      : Waleed alsaaed
// Company     : ksu
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\project_vlsi\project_vlsi\compile\project_vlsi.v
// Generated   : Thu Mar 17 14:45:45 2022
// From        : c:\My_Designs\project_vlsi\project_vlsi\src\project_vlsi.bde
// By          : Bde2Verilog ver. 2.01
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`ifdef _VCP
`else
`define library(a,b)
`endif


// ---------- Design Unit Header ---------- //
`timescale 1ps / 1ps

module project_vlsi (c0,c1,hold,A,B,q,clk) ;

// ------------ Port declarations --------- //
input c0;
wire c0;
input c1;
wire c1;
input hold;
wire hold;
input [7:0] A;
wire [7:0] A;
input [7:0] B;
wire [7:0] B;
output [15:0] q;
wire [15:0] q;
input clk;
wire clk;

// ----------- Signal declarations -------- //
wire [15:0] BUS110;
wire [15:0] BUS114;
wire [15:0] BUS705;
wire [15:0] BUS83;

// -------- Component instantiations -------//

counter3 U13
(
	.clk(clk),
	.hold(hold),
	.counter2(BUS83)
);



mux4t01 U15
(
	.a(BUS705),
	.b(BUS83),
	.c(BUS110),
	.d(BUS114),
	.s0(c0),
	.s1(c1),
	.out(q)
);



even_parity U3
(
	.N(B),
	.O(BUS114)
);



inverter U4
(
	.a(A),
	.b(B),
	.q(BUS705)
);



shiftANDadd U5
(
	.product(BUS110),
	.multiplier(A),
	.multiplicand(B)
);



endmodule 
