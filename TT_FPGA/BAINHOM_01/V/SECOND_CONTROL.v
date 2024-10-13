`timescale 1ns / 1ps

module SECOND_CONTROL(
	input SEC_CLK, //  1 pos-edge = +1second
	input SEC_INCR,// 1 pos-edge = +1second 
	input SEC_SET, // LOW: (Count CLK) -  HIGH: Set-up (Count INCR)
	output reg CARRY,
	output reg[7:0] SECOND // BCD display <SECOND/10><SECOND%10>
);
	initial begin
		SECOND = 8'H30; 
		CARRY = 0;
	end

	wire __triger;
	assign __triger = (SEC_CLK & ~SEC_SET) | (SEC_INCR & SEC_SET);

	always @( posedge __triger ) begin
		// reset CARRY
		CARRY = 0;
		// do nothin'
		if(SECOND[3:0] == 9) begin
			// reset x1
			SECOND[3:0] = 0;
			if(SECOND[7:4] == 5)begin
				// reset x10
				SECOND[7:4] = 0;
				// reset\set CARRY flag
				CARRY = (SEC_SET==1)?(0):(1);
			end
			else begin
				// inscrease x10
				SECOND[7:4] = SECOND[7:4] + 1;
			end
		end
		else begin
			// increase x1
			SECOND[3:0] = SECOND[3:0] + 1;
		end 
	end

endmodule
