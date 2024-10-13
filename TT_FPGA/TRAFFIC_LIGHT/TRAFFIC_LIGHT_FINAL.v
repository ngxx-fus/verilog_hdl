`timescale 1ns / 1ps
`include "TRAFFIC_LIGHT_CTL.v"
`include "BIN2BCD.v"
`include "FREQ_DIV.v"
`include "TM1638.v"

module TRAFFIC_LIGHT_FINAL(
	 input _50MHz_CLK,
	 input RST,
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

	wire [6:0] TIMER0, TIMER1;
	wire [2:0] TF0, TF1;
	wire [7:0] BCD_TIMER0, BCD_TIMER1;

    FREQ_DIV _transfer_fd(.I_CLK(_50MHz_CLK),.M(GND),.O_CLK(_transfer_freq_0));
    FREQ_DIV _counter_fd1(.I_CLK(_50MHz_CLK),.M(VCC),.O_CLK(_counter_freq_1));

	TRAFFIC_LIGHT_CTL tl_ctl(
		.CLK(_counter_freq_1),
		.RST(RST),
		.TIMER0(TIMER0),//MAX: 110_0011B
		.TF0(LED[2:1]),
		.TIMER1(TIMER1),//MAX: 110_0011B
		.TF1(LED[7:5])
	);
	
	BIN2BCD bin2bcd_timer0(
		.BIN(TIMER0),
		.BCD(BCD_TIMER0)
	);
	
	BIN2BCD bin2bcd_timer1(
		.BIN(TIMER1),
		.BCD(BCD_TIMER1)
	);

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

    assign LED[4] = 0;
    assign LED[3] = 0;
    assign LED7SEG_0 = BCD_TIMER1[7:4];
    assign LED7SEG_1 = BCD_TIMER1[3:0];
    assign LED7SEG_2 = 4'H0F;
    assign LED7SEG_3 = 4'H0F;
    assign LED7SEG_4 = 4'H0F;
    assign LED7SEG_5 = 4'h0F;
    assign LED7SEG_6 = BCD_TIMER0[7:4];
    assign LED7SEG_7 = BCD_TIMER0[3:0];
	 
    assign VCC = 1;
    assign GND = 0;

endmodule
