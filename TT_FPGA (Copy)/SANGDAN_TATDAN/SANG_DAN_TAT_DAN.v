`timescale 1ns/1ps

module SANGDAN_TATDAN(
    input CLK,
    input RST,
    output reg [7:0] Q
);
    reg SANG_TAT;
    initial begin
        SANG_TAT <= 1; // H: sang L: Tat
    end
    always @( posedge CLK ) begin
        if( RST )begin
            Q <= 0;
            SANG_TAT <= 1;
        end
        else
            if( SANG_TAT == 1 )
                if(Q == 8'b1111_1111) begin
                    Q <= 8'b0111_1111;
                    SANG_TAT <= 0;
                end else begin
                    Q <= (Q<<1) | 1;
                end
            else
                if(Q == 8'b0000_0000) begin
                    Q <= 8'b0000_0001;
                    SANG_TAT <= 1;
                end else begin
                    Q <= (Q>>1);
                end

    end
endmodule