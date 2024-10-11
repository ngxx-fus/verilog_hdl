<<<<<<< HEAD
`timescale 1ns / 1ps
`include "FINAL_EXAM.v"


module testbench;
	reg CLK50MHz;
	reg RST;
	reg S0;
	reg S1;
	reg S2;
	wire [4:0] Q;
	reg [31:0] i;
	reg [31:0] j;
	FINAL_EXAM uut (
		.CLK50MHz(CLK50MHz), 
		.RST(RST), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.Q(Q)
	);
	//Period = (1/50000000)*1000*1000*1000 = 20 (ns)
	initial begin
		// Initialize Inputs
		CLK50MHz = 0;
		RST = 0; S0 = 0; S1 = 1; S2 = 1;
			for(i = 0; i < 50_000_000; i = i + 1) begin
				CLK50MHz = ~CLK50MHz; #10;  CLK50MHz = ~CLK50MHz; #10; 
			end


	end
      
endmodule

=======
`timescale 1ns / 1ps
`include "FINAL_EXAM.v"


module testbench;
	reg CLK50MHz;
	reg RST;
	reg S0;
	reg S1;
	reg S2;
	wire [4:0] Q;
	reg [31:0] i;
	reg [31:0] j;
	FINAL_EXAM uut (
		.CLK50MHz(CLK50MHz), 
		.RST(RST), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.Q(Q)
	);
	//Period = (1/50000000)*1000*1000*1000 = 20 (ns)
	initial begin
		// Initialize Inputs
		CLK50MHz = 0;
		RST = 0; S0 = 0; S1 = 1; S2 = 1;
			for(i = 0; i < 50_000_000; i = i + 1) begin
				CLK50MHz = ~CLK50MHz; #10;  CLK50MHz = ~CLK50MHz; #10; 
			end


	end
      
endmodule

>>>>>>> 5d5427b5e3d7d0ff635a19a952f7d5c8c188b2e9
