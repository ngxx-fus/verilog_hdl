`timescale 1ps / 1ps
`include "CLOCK_FPGA.v"
`include "FREQ_DIV.v"
`include "TM1638.v"

module CLOCK_FINAL(
    input _50MHz_CLK, CLOCK_SET, CLOCK_INCR,
    output clk, 
    output stb, 
    output dio 
);
	wire VCC, GND;

    wire _transfer_freq_0;
    wire _counter_freq_1;

    wire [3:0] LED7SEG_0, LED7SEG_1, LED7SEG_2,
               LED7SEG_3, LED7SEG_4, LED7SEG_5,
               LED7SEG_6, LED7SEG_7;
    wire [7:0] LED;
    wire [7:0] __minute, __second, __hour;

    FREQ_DIV _transfer_fd(.I_CLK(_50MHz_CLK),.M(GND),.O_CLK(_transfer_freq_0));
    FREQ_DIV _counter_fd1(.I_CLK(_50MHz_CLK),.M(VCC),.O_CLK(_counter_freq_1));

    TM1638  tm1638(
        .led(LED),
        .seg0(LED7SEG_0),
        .seg1(LED7SEG_1),
        .seg2(LED7SEG_2),
        .seg3(LED7SEG_3),
        .seg4(LED7SEG_4),
        .seg5(LED7SEG_5),
        .seg6(LED7SEG_6),
        .seg7(LED7SEG_7),
        .clkinput(_transfer_freq_0),
        .clk(clk),
        .stb(stb),
        .dio(dio)
    );

    CLOCK_FPGA clock_fpga(
        .CLOCK_CLK(_counter_freq_1),
        .CLOCK_SET(CLOCK_SET),
        .CLOCK_INCR(CLOCK_INCR),
        .SECOND(__second),
        .MINUTE(__minute),
        .HOUR(__hour)
    );

    assign LED = 8'B1010_1010;
    assign LED7SEG_0 = __hour[7:4] ;
    assign LED7SEG_1 = __hour[3:0] ;
    assign LED7SEG_2 = 4'H0E;
    assign LED7SEG_3 = __minute[7:4];
    assign LED7SEG_4 = __minute[3:0];
    assign LED7SEG_5 = 4'h0E;
    assign LED7SEG_6 = __second[7:4];
    assign LED7SEG_7 = __second[3:0];
	 
    assign VCC = 1;
    assign GND = 0;
endmodule