`timescale 1ns / 1ps
module UPDN_COUNTER(
	input CLK, 
	input RST,//Active-low
	output reg [3:0] OUT
);
    reg UP_DOWN; //UP <= 0, DOWN <= 1

    initial begin
        OUT <= 0;
        UP_DOWN <= 0;
    end

	always @(posedge CLK)begin
		if( RST == 0 )begin
			OUT <= 0;
         UP_DOWN <= 0;
        end else begin
            if(UP_DOWN == 0)begin
                //UP COUNTIN
                if(OUT == 15) 
                    UP_DOWN <= 1;
                else
                    OUT <= OUT + 1;
            end else begin
                if(OUT == 0) 
                    UP_DOWN <= 0;
                else
                    OUT <= OUT - 1;
            end
        end
	end
endmodule