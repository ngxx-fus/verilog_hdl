`timescale 1ns / 1ps

module DOWNCOUNTER_4BIT(
	input CLK, 
	input RST,
	output [3:0] OUT
);
	reg [3:0] TEMP; 
	always @(posedge CLK)begin
		if( RST == 0 )
			TEMP = 15;
		else
			if( TEMP == 0)
				TEMP = 15;
			else
				TEMP = (TEMP - 1 );
	end
	assign OUT = TEMP;
endmodule
