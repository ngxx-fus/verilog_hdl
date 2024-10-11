<<<<<<< HEAD
`timescale 1ns / 1ps
`include "UPDOWN_COUNTER.v"

module test_module_updn;

	// Inputs
	reg CLK;
	reg RST;
	reg P_C;
	reg U_D;

	// Outputs
	wire [4:0] Q;
	reg [32:0] i;
	// Instantiate the Unit Under Test (UUT)
	UPDOWN_COUNTER uut (
		.CLK(CLK), 
		.RST(RST), 
		.P_C(P_C), 
		.U_D(U_D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;P_C = 0;U_D = 0;
		// Wait 100 ns for global reset to finish
		#100;
		RST = 0;P_C = 0;U_D = 0;
		for(i = 0; i <35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 0;U_D = 0;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 0;U_D = 1;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 0;P_C = 0;U_D = 0;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 0;P_C = 1;U_D = 1;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 0;P_C = 1;U_D = 1;
		for(i = 0; i < 55; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		
	end
      
endmodule

=======
`timescale 1ns / 1ps
`include "UPDOWN_COUNTER.v"

module test_module_updn;

	// Inputs
	reg CLK;
	reg RST;
	reg P_C;
	reg U_D;

	// Outputs
	wire [4:0] Q;
	reg [32:0] i;
	// Instantiate the Unit Under Test (UUT)
	UPDOWN_COUNTER uut (
		.CLK(CLK), 
		.RST(RST), 
		.P_C(P_C), 
		.U_D(U_D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;P_C = 0;U_D = 0;
		// Wait 100 ns for global reset to finish
		#100;
		RST = 0;P_C = 0;U_D = 0;
		for(i = 0; i <35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 0;U_D = 0;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 0;U_D = 1;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 0;U_D = 0;
		for(i = 0; i < 35; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 1;U_D = 1;
		for(i = 0; i < 5; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		RST = 1;P_C = 1;U_D = 0;
		for(i = 0; i < 5; i = i + 1)begin
			 CLK = ~CLK; #5;  CLK = ~ CLK; #5;
		end
		
	end
      
endmodule

>>>>>>> 5d5427b5e3d7d0ff635a19a952f7d5c8c188b2e9
