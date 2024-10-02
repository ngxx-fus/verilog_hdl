`timescale 1ns / 1ps

module MOD8_UPCOUNTER(
   input I,
	input CLK, 
	input RST,
	output reg [2:0] Q,
   output reg LED
);
	always @(negedge CLK)begin
		if( RST == 0 ) begin
			Q = 0;
         LED = 0;
        end 
        else
            if(I == 1) begin
                if( Q == 7)
                    Q = 0;
                else
                    Q = (Q + 1);
                    LED = (Q == 7)?(1):(0);
            end
    end
endmodule
