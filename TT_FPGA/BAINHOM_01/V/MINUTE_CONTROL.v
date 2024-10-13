`timescale 1ns / 1ps

module MINUTE_CONTROL(
	input MIN_CLK, //  1 pos-edge = +1min
	input MIN_INCR,// 1 pos-edge = +1min
	input MIN_SET, // LOW: (Count CLK) -  HIGH: Set-up (Count INCR)
	output reg CARRY,
	output reg[7:0] MINUTE // BCD display <MINUTE/10><MINUTE%10>
);
	initial begin
		MINUTE = 8'H30;
		CARRY = 0;
	end

	wire __triger;
	assign __triger = (MIN_CLK & ~MIN_SET) | (MIN_INCR & MIN_SET);

	always @( posedge __triger ) begin
		// reset CARRY
		CARRY = 0;
		// do nothin'
		if(MINUTE[3:0] == 9) begin
			// reset x1
			MINUTE[3:0] = 0;
			if(MINUTE[7:4] == 5)begin
				// reset x10
				MINUTE[7:4] = 0;
				// reset\set CARRY flag
				if(MIN_SET == 0) 
					CARRY = 1;
				else
					CARRY = 0;
			end
			else begin
				// inscrease x10
				MINUTE[7:4] = MINUTE[7:4] + 1;
			end
		end
		else begin
			// increase x1
			MINUTE[3:0] = MINUTE[3:0] + 1;
		end 
	end

endmodule
