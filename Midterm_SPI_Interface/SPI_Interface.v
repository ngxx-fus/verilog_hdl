`include "sender_receiver.v"
`include "control.v"
`include "status.v"

module SPI_INTERFACE(
	input MS,
	input CLK,
	input PRESET,//*
	input MISO,
	input [7:0] P_DATA_IN,//*
	input MS_MODE, //MASTER or SLAVE    //*
	inout S_CLK,
	input [7:0] CONTROL,
	output MOSI,
	output SS, //slave select     //*
	output [7:0] P_DATA_OUT,    //*
	output CS
);
	wire LOW, HIGH;

	reg [7:0] temp;
	wire SENDER_BUFFER;

	wire SENDER_CLK;
	wire SENDER_CLR;
	wire SENDER_WRITE;
	wire TE;
	wire SENDER_REG_FULL;
	wire SENDER_REG_EMPTY;
	
	wire RECEIVER_CLK;
	wire RECEIVER_CLR;
	wire RECEIVER_READ;
	wire RE;
	wire RECEIVER_REG_FULL;
	wire RECEIVER_REG_EMPTY;

	
	SENDER sender(
		.CLK(SENDER_CLK),
		.CLR(SENDER_CLR),
		.WRITE(SENDER_WRITE),
		.TE(TE),
		.FULL_STATE(SENDER_REG_FULL),
		.EMPTY_STATE(SENDER_REG_EMPTY),
		.DATA(P_DATA_IN),
		.MOSI(MOSI)
	);
	RECEIVER receiver(
		.CLK(RECEIVER_CLK),
		.CLR(RECEIVER_CLR),
		.READ(RECEIVER_READ),
		.RE(RE),
		.FULL_STATE(RECEIVER_REG_FULL),
		.EMPTY_STATE(RECEIVER_REG_EMPTY),
		.DATA(P_DATA_OUT),
		.MISO(MISO)
	);
	

	assign LOW = 1'b0;
	assign HIGH = 1'b1;
endmodule
