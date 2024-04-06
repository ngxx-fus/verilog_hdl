`timescale 1ns/1ns
module clk_gen(
    output reg clk
);
always begin
    clk = 1; #5; clk = 0; #5;
end
endmodule