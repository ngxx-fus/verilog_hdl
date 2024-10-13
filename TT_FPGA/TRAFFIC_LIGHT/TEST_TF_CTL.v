`timescale 1ns / 1ps

module TEST_TF_CTL;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire [6:0] TIMER0;
	wire [2:0] TF0;
	wire [6:0] TIMER1;
	wire [2:0] TF1;

	// Instantiate the Unit Under Test (UUT)
	TRAFFIC_LIGHT_CTL uut (
		.CLK(CLK), 
		.RST(RST), 
		.TIMER0(TIMER0), 
		.TF0(TF0), 
		.TIMER1(TIMER1), 
		.TF1(TF1)
	);

	initial begin
		CLK = 0;
		RST = 0;
	end
	initial begin
		forever #5 CLK = ~ CLK;
	end
	initial begin
		#30 RST = 1;
		#15 RST = 0;
	end
endmodule

