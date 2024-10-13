`timescale 1ns / 1ps

module CHOOSE(
    input I, // 1 pos-edge = shift-left x1
    input RST,
    output reg [2:0] O // Initial state O = 0; 
);
    initial begin
        O = 0;
    end
    always @(posedge I) begin
        if(RST == 1) begin
            O = 0;
        end 
        else begin
            if(O == 0)
                O = 1;
            else 
                O = O << 1;
        end
    end
    
endmodule 