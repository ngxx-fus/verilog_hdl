module d_ff(output reg q, input d, input Clock);
    initial begin
        q <= 0;
    end
    always @(posedge Clock)
        begin
                q <= d;
        end
endmodule