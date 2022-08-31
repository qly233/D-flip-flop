`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:05 11/28/2021 
// Design Name: 
// Module Name:    D 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D(q,qn,d,clk,pre,clr);
	input d,clk,pre,clr;
	output q,qn;
	reg q;
	assign qn=~q;
	always@(negedge pre or negedge clr or posedge clk)	
	begin
		if(pre==0)
			q <= 1'b1;
		else if(clr==0)
			q <= 1'b0;
		else
			q <= d;
	end


endmodule
