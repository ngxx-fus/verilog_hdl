`include "FREQ_DIV.v"
`include "TM1638.v"

module MOD60(
    input CLK,
    input RST,
    output clk, 
    output stb, 
    output dio 
);

    wire [3:0] LED7SEG_0, LED7SEG_1, LED7SEG_2,
               LED7SEG_3, LED7SEG4_, LED7SEG_5,
               LED7SEG_6, LED7SEG_7;
    
    wire [7:0] LED;
    reg [8:0] SEC;
    reg [8:0] MIN;
    reg [8:0] HOUR;
    wire _TRANSFER_FREQ;
    wire _COUNTER_FREQ;

    FREQ_DIV freq_div_COUNTER(
        .I_CLK(CLK), 
        .M(1), 
        .O_CLK(_COUNTER_FREQ)
    );
    FREQ_DIV freq_div_TRANSFER(
        .I_CLK(CLK), 
        .M(0), 
        .O_CLK(_TRANSFER_FREQ)
    );
    TM1638   tm1638(
        .led(led),
        .seg0(LED7SEG_0),
        .seg1(LED7SEG_1),
        .seg2(LED7SEG_2),
        .seg3(LED7SEG_3),
        .seg4(LED7SEG_4),
        .seg5(LED7SEG_5),
        .seg6(LED7SEG_6),
        .seg7(LED7SEG_7),
        .clkinput(_TRANSFER_FREQ),
        .clk(clk),
        .stb(stb),
        .dio(dio)
    );

    initial begin
        SEC = 8'B0001_0101;
        MIN = 8'B0011_0000;
        HOUR = 8'B0001_0100;
    end

    always @(posedge _COUNTER_FREQ) 
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
                            if(HOUR[3:0] == 3 && HOUR[7:4] == 2)begin
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

    assign led = 8'B1010_1010;
    assign LED7SEG_0 = HOUR[7:4] ;
    assign LED7SEG_1 = HOUR[3:0] ;
    assign LED7SEG_2 = 4'HE;
    assign LED7SEG_3 = MIN[7:4];
    assign LED7SEG_4 = MIN[3:0];
    assign LED7SEG_5 = 4'hE;
    assign LED7SEG_6 = SEC[7:4];
    assign LED7SEG_7 = SEC[3:0];

endmodule