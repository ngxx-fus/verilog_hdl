`include "sender_receiver.v"

module SPI_Interface(
	input CLK,
	input S_CLK,
	input MISO,
	input [7:0] P_DATA_IN,
	input MS_MODE, //MASTER or SLAVE
	output MOSI,
	output SS, //slave select 
	output [7:0] P_DATA_OUT,
);
	wire LOW, HIGH;

	reg [7:0] temp;
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
	
	assign SENDER_CLK = CLK;
	assign SENDER_CLR = GPIO[1];
	assign SENDER_WRITE = GPIO[2];
	assign TE = GPIO[3];
	assign GPIO[4] = SENDER_REG_FULL;
	assign GPIO[5] = SENDER_REG_EMPTY;
	
	assign RECEIVER_CLK = CLK;
	assign RECEIVER_CLR = GPIO[7];
	assign RECEIVER_READ = GPIO[8];
	assign RE = GPIO[9];
	assign GPIO[10] = RECEIVER_REG_FULL;
	assign GPIO[11] = RECEIVER_REG_EMPTY;

	assign LOW = 1'b0;
	assign HIGH = 1'b1;
endmodule
