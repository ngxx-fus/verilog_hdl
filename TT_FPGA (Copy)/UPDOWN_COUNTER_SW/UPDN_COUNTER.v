`timescale 1ns / 1ps
module UPDN_COUNTER(
	input CLK, 
	input RST,//Active-low
	input M,
	output reg [3:0] OUT
);
    initial begin
        OUT <= 0;
    end

	always @(posedge CLK)begin
		if( RST == 0 )begin
			OUT <= 0;
        end else begin
            if(M == 1)begin
                //UP COUNTIN
                if(OUT == 15) 
                    OUT <= 0;
                else
                    OUT <= OUT + 1;
            end else begin
                if(OUT == 0) 
                    OUT <= 15;
                else
                    OUT <= OUT - 1;
            end
        end
	end
endmodule