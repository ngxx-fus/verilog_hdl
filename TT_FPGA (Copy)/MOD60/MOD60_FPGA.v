`include "FREQ_DIV.v"
`include "TM1638.v"
`include "MOD60.v"
module MOD60_FPGA(
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
	 
    wire [8:0] NUM;
    
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
	MOD60 mod60(
			.CLK(_COUNTER_FREQ),
			.RST(RST),
			.NUM(NUM)
	 );

    assign led = 0;
    assign LED7SEG_0 = 0 ;
    assign LED7SEG_1 = 0 ;
    assign LED7SEG_2 = 0;
    assign LED7SEG_3 = 0;
    assign LED7SEG_4 = 0;
    assign LED7SEG_5 = 0;
    assign LED7SEG_6 = NUM[7:4];
    assign LED7SEG_7 = NUM[3:0];

endmodule