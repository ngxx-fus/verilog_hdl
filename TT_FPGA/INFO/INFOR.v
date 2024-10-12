`include "FREQ_DIV.v"
`include "TM1638.v"

module INFOR(
    input _50MHz_CLK,
    output clk, 
    output stb, 
    output dio 
);
		//8buses
    wire [3:0] LED7SEG_0, LED7SEG_1, LED7SEG_2,
               LED7SEG_3, LED7SEG4_, LED7SEG_5,
               LED7SEG_6, LED7SEG_7;
		//
    wire [7:0] LED;

    wire _LOWER_FREQ;
    FREQ_DIV freq_div(
        .I_CLK(_50MHz_CLK), 
        .M(0), 
        .O_CLK(_LOWER_FREQ)
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
        .clkinput(_LOWER_FREQ),
        .clk(clk),
        .stb(stb),
        .dio(dio)
    );

    assign led = 4'B0000;
    assign LED7SEG_0 = 4'B0010;
    assign LED7SEG_1 = 4'B0010;
    assign LED7SEG_2 = 4'B0001;
    assign LED7SEG_3 = 4'B0001;
    assign LED7SEG_4 = 4'B1001;
    assign LED7SEG_5 = 4'B0010;
    assign LED7SEG_6 = 4'B0001;
    assign LED7SEG_7 = 4'B0001;

endmodule