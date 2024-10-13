`timescale 1ns / 1ps

module TRAFFIC_LIGHT_CTL(
    input CLK,
    input RST,
    output reg [6:0] TIMER0,//MAX: 110_0011B
	output reg [2:0] TF0,
    output reg [6:0] TIMER1,//MAX: 110_0011B
	output reg [2:0] TF1
);

    wire [6:0] TIMER0_RST_VAL, TIMER1_RST_VAL;
    

    initial begin
        TIMER0 = TIMER0_RST_VAL;
        TF0 = 3'B001;//R Y G
        TIMER1 = TIMER1_RST_VAL;
        TF1 = 3'B100;//R Y G
    end

    always @(posedge CLK) begin
        //Reset
        if(RST == 1) begin
            TIMER0 = TIMER0_RST_VAL;
            TF0 = 3'B001;//R Y G
            TIMER1 = TIMER1_RST_VAL;
            TF1 = 3'B100;//R Y G
        end else 
        //-------------------------------------------
        begin
            if(TIMER1 > TIMER0 && TIMER0 > 0)begin
                //Count down
                //0: 0 0 1
                //1: 1 0 0
                TF0 = 3'B001;
                TF1 = 3'B100;
                TIMER0 = TIMER0 - 1;
                TIMER1 = TIMER1 - 1;
            end else 
            if(TIMER1 > TIMER0 && TIMER0 == 0)begin
                //TF0 -> YELLOW; Count down
                //0: 0 1 0
                //1: 1 0 0 
                TF0 = 3'B010;
                TF1 = 3'B100;
                TIMER1 = TIMER1 - 1;
                TIMER0 = TIMER1;
            end else 
            if(TIMER1 == TIMER0 && TIMER0 > 0
                && TF0 == 3'B010 && TF1 == 3'B100)begin
                //Countdown
                //0: 0 1 0
                //1: 1 0 0 
                TF0 = 3'B010;
                TF1 = 3'B100;
                TIMER0 = TIMER0 - 1;
                TIMER1 = TIMER1 - 1;
            end else 
            if(TIMER1 == TIMER0 && TIMER0 == 0 
                && TF0 == 3'B010 && TF1 == 3'B100)begin
                //TF0 -> RED; Count down
                //TF1 -> GREEN; Count down
                //0: 1 0 0
                //1: 0 0 1
                TF0 = 3'B100;
                TF1 = 3'B001;
                TIMER0 = TIMER1_RST_VAL;
                TIMER1 = TIMER0_RST_VAL;
            end else 
            //-------------------------------------------
            if(TIMER1 < TIMER0 && TIMER1 > 0)begin
                //Count down
                //0: 1 0 0
                //1: 0 0 1
                TF0 = 3'B100;
                TF1 = 3'B001;
                TIMER0 = TIMER0 - 6'D1;
                TIMER1 = TIMER1 - 6'D1;
            end else 
            if(TIMER1 < TIMER0 && TIMER1 == 0)begin
                //TF1 -> YELLOW; Count down
                //0: 1 0 0
                //1: 0 1 0
                TF0 = 3'B100;
                TF1 = 3'B010;
                TIMER0 = TIMER0 - 1;
                TIMER1 = TIMER0;
            end else 
            if(TIMER1 == TIMER0 && TIMER1 > 0
               && TF0 == 3'B100 && TF1 == 3'B010)begin
                //Count down
                //0: 1 0 0
                //1: 0 1 0
                TF0 = 3'B100;
                TF1 = 3'B010;
                TIMER0 = TIMER0 - 6'D1;
                TIMER1 = TIMER1 - 6'D1;
            end else 
            if(TIMER1 == TIMER0 && TIMER1 == 0 
               && TF0 == 3'B100 && TF1 == 3'B010)begin
                //TF0 -> GREEN; Count down
                //TF1 -> RED; Count down
                //0: 0 0 1
                //1: 1 0 0
                TF0 = 3'B001;
                TF1 = 3'B100;
                TIMER0 = TIMER0_RST_VAL;
                TIMER1 = TIMER1_RST_VAL;
            end else 
            begin
                // :v
                TIMER0 = TIMER0_RST_VAL;
                TIMER1 = TIMER1_RST_VAL;
            end
        end
    end

    assign TIMER0_RST_VAL = 6'D9;
    assign TIMER1_RST_VAL = 6'D12;

endmodule