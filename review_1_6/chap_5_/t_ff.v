module t_ff(
    input clk,
    output reg q
);
    initial begin
        q = 1;
    end
    always @(posedge clk)
        begin
            q <= ~q;
        end
endmodule