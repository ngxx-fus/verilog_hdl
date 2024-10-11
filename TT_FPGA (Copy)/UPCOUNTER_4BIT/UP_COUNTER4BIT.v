`timescale 1ns / 1ps

module UP_COUNTER4BIT(
	input CLK, 
	input RST,
	output [3:0] OUT
);
	reg [3:0] TEMP; 
	always @(posedge CLK)begin
		if( RST == 1 )
			TEMP = 0;
		else
			if( TEMP == 15)
				TEMP = 0;
			else
				TEMP = (TEMP + 1 );
	end
	assign OUT = TEMP;
endmodule
