`timescale 1ns / 1ps

module TIME_CONTROL(
	input RST,
	input CLK,
	output reg[7:0] HOUR,
	output reg[7:0] MIN,
	output reg[7:0] SEC

);
    initial begin
        SEC = 8'B0001_0101;
        MIN = 8'B0011_0000;
        HOUR = 8'B0001_0100;
    end

    always @(posedge CLK) 
    begin
        if(RST == 1)begin
            SEC = 0;
            MIN = 0;
            HOUR = 0;
        end else 
            if( SEC[3:0] == 9 ) begin
                SEC[3:0] = 0;
                if( SEC[7:4] == 5 )begin
                    SEC[7:4] = 0;
                    if(MIN[3:0] == 9)begin
                        MIN[3:0] = 0;
                        if( MIN[7:4] == 5)begin
                            MIN[7:4] = 0;
                            if(HOUR[3:0] == 3 && HOUR[7:4] == 2)
                            begin
                                HOUR[3:0] = 0;
                                if(HOUR[7:4] == 2)
                                    HOUR[7:4] = 0;
                                else
                                    HOUR[7:4] = HOUR[7:4] + 1;
                            end else 
                                if(HOUR[3:0] == 9)
                                    HOUR[3:0] = 0;
                                else 
                                    HOUR[3:0] = HOUR[3:0] + 1;
                        end else
                            MIN[7:4] = MIN[7:4] + 1;
                    end else begin
                        MIN[3:0] = MIN[3:0] + 1;
                    end
                end else
                    SEC[7:4] = SEC[7:4] + 1;
            end else begin
                SEC[3:0] = SEC[3:0] + 1;
            end
        
    end

endmodule
