`include "FREQ_DIV.v"
`include "TM1638.v"
`include "TIME_CONTROL.v"
module TIME(
    input _50MHz_CLK,
    input RST,
    output clk, 
    output stb, 
    output dio 
);

    wire [3:0] LED7SEG_0, LED7SEG_1, LED7SEG_2,
               LED7SEG_3, LED7SEG4_, LED7SEG_5,
               LED7SEG_6, LED7SEG_7;
    wire [7:0] LED;
	 
    wire [8:0] SEC;
    wire [8:0] MIN;
    wire [8:0] HOUR;
    
	 wire _TRANSFER_FREQ;
    wire _COUNTER_FREQ;

    FREQ_DIV freq_div_TRANSFER(
        .I_CLK(_50MHz_CLK), 
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
	 
    FREQ_DIV freq_div_COUNTER(
        .I_CLK(_50MHz_CLK), 
        .M(1), 
        .O_CLK(_COUNTER_FREQ)
    );
	 TIME_CONTROL time_control(
			.CLK(_COUNTER_FREQ),
			.RST(RST),
			.HOUR(HOUR),
			.MIN(MIN),
			.SEC(SEC)
	 );

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