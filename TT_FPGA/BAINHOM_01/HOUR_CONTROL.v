`timescale 1ns / 1ps

module HOUR_CONTROL(
	input HOUR_CLK, //  1 pos-edge = +1hour
	input HOUR_INCR,// 1 pos-edge = +1hour
	input HOUR_SET, // LOW: (Count CLK) -  HIGH: Set-up (Count INCR)
	output reg CARRY,
	output reg[7:0] HOUR // BCD display <HOUR/10><HOUR%10>
);
	initial begin
		HOUR = 8'H07;
		CARRY = 0;
	end

	wire __triger;
	assign __triger = (HOUR_CLK & ~HOUR_SET) | (HOUR_INCR & HOUR_SET);

	always @( posedge __triger ) begin
		// reset CARRY
		CARRY = 0;
		// do nothin'
		if ( HOUR[7:4] == 2) begin 
			if(HOUR[3:0] == 3) begin
				CARRY = 1;
				HOUR[3:0] = 0;
				HOUR[7:4] = 0;
			end
			else begin
				HOUR[3:0] = HOUR[3:0] + 1;
			end
		end
		else begin
			if(HOUR[3:0] == 9) begin
				// CARRY = 1;
				HOUR[3:0] = 0;
				HOUR[7:4] = HOUR[7:4] + 1;
			end
			else begin
				HOUR[3:0] = HOUR[3:0] + 1;
			end
		end
	end

endmodule
