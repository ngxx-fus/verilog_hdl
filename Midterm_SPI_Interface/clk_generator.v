`timescale 1ns/1ns
module clk_gen(
    output clk
);
    reg [7:0] c;
    initial begin
        c = 0;
        #5;
        for( c = 0; c < 8'b11111111; c=c+1)
            #5;
    end

    assign clk = c[0];
endmodule