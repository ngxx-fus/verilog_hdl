module CONTROL_COMBINATION(
    //from wishbone:
    input CLK,
    input CLR,
	input [7:0] CONTROL,
    input WRITE,
    input READ,
	input [7:0] STATUS,

    //form BUFFER
    inout  SENDER_BUFFER_FULL_STATE,
    output SENDER_BUFFER_SH_LD,
    inout  reg RECEIVER_BUFFER_FULL_STATE,
    output reg RECEIVER_BUFFER_SH_LD,

    //sender:
    input  SENDER_EMPTY_STATE,
    output SENDER_CLK,
    output SENDER_CLR,
    output reg SENDER_WRITE,
    output reg TE,

    //receiver:
    input  RECEIVER_FULL_STATE,
    output RECEIVER_CLK,
    output RECEIVER_CLR,
    output RE,
    output reg RECEIVER_READ
);
    wire HIGH, LOw;

    initial begin
        TE = LOW;
    end

    //sender - sender buffer
    always @(posedge SENDER_CLK) 
    begin
        if( WRITE == HIGH || SENDER_EMPTY_STATE == HIGH)
        begin
            SENDER_WRITE = HIGH;
            SENDER_BUFFER_FULL_STATE = LOW;
        end
        else
        begin
            SENDER_WRITE = LOW;
            SENDER_BUFFER_FULL_STATE = SENDER_BUFFER_FULL_STATE;
        end
    end

    always @(CLK, WRITE, STATUS[3],STATUS[7]) begin
        if( CONTROL[1] == 1 || CONTROL[5] == 1)
            TE = LOW;
        else
            if(CLK) 
                TE = ~WRITE;
            else 
                TE = TE;
    end

    //receiver
    always @(posedge RECEIVER_CLK) 
    begin
        if( READ == HIGH || RECEIVER_FULL_STATE == HIGH)
        begin
            if(READ == HIGH)
            begin
                RECEIVER_READ = HIGH;
                RECEIVER_BUFFER_SH_LD = LOW;
                RECEIVER_BUFFER_FULL_STATE = LOW;
            end
            else
            begin
                RECEIVER_READ = HIGH;
                RECEIVER_BUFFER_FULL_STATE = HIGH;
                RECEIVER_BUFFER_SH_LD = HIGH;
            end
        end
        else
        begin
            RECEIVER_READ = LOW;
            RECEIVER_BUFFER_FULL_STATE = RECEIVER_BUFFER_FULL_STATE;
        end
    end

    always @(CLK, WRITE, STATUS[3],STATUS[7]) begin
        if( CONTROL[1] == 1 || CONTROL[5] == 1)
            TE = LOW;
        else
            if(CLK) 
                TE = ~WRITE;
            else 
                TE = TE;
    end

    //other (included both sender and receiver :v)

    assign SENDER_CLK = CLK;
    assign SENDER_CLR = CLR;

    assign RECEIVER_CLK = CLK;
    assign RECEIVER_CLR = CLR;

    assign SENDER_BUFFER_SH_LD = WRITE;

	assign LOW = 1'b0;
	assign HIGH = 1'b1;
endmodule