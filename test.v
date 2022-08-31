`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:49 11/28/2021
// Design Name:   D
// Module Name:   D:/szdl/D/test.v
// Project Name:  D
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg d;
	reg clk;
	reg pre;
	reg clr;

	// Outputs
	wire q;
	wire qn;

	// Instantiate the Unit Under Test (UUT)
	D uut (
		.q(q), 
		.qn(qn), 
		.d(d), 
		.clk(clk), 
		.pre(pre), 
		.clr(clr)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;
		pre = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
      d = 0;
		pre = 1;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 0;
		pre = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 1;
		pre = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 0;
		pre = 0;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 0;
		pre = 1;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		d = 0;
		pre = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		d = 1;
		pre = 1;
		clr = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
   always #30 clk = ~clk;
endmodule

