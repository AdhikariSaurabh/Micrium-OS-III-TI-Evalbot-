`timescale 1ns / 1ps


module test_dsp;

	reg [3:0] a1,a2,a3,b1,b2,b3;
	reg clk;
	// Outputs
	wire [9:0] result;

	// Instantiate the Unit Under Test (UUT)
	dspmatrix dut (
		.a1(a1),
		.a2(a2),
		.a3(a3),
		.b1(b1), 
		.b2(b2),
	    .b3(b3), 
		.result(result), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		a1 = 0;
		a2 = 0;
		a3 = 0;
		b1  = 0;
		b2  = 0;
		b3  = 0;
		
	    #105;     // necessary delay after the global reset 
		a1 = 1;   /* First set of input */
		b1 = 2;
		#10;        
		a1 = 2;   /* Second set of input */
        b1 = 2;
        #10;      // 20 ns delay so as to inject the next set of the inputs for the first set of input    
		a2 = 2;      
		b2 = 4;
		a1 = 3;   /* Third set of input */
        b1 = 2;
		#10;     // 20 ns delay so as to inject the next set of the inputs for the second set of input
    	a2 = 3;
		b2 = 4;
		#10;    // 20 ns delay so as to inject the next set of the inputs for the third set of input
		a2 = 1;		
        b2 = 4;
        
        #20;
        a3 = 3; // 40 ns delay so as to inject the last set of the inputs for the first set of input
        b3 = 5;
		#10;
	    a3 = 1; // 40 ns delay so as to inject the last set of the inputs for the second set of input
		b3 = 5;
		#10;
		a3 = 2; // 40 ns delay so as to inject the last set of the inputs for the third set of input
        b3 = 5;
		#100;
   
       $finish;
	end
	
	always 
		#5 clk = ~clk;
     
endmodule
