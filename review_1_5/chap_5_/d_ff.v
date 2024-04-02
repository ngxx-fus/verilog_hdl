module d_ff(output reg q, input d, input Clock);
    always @(posedge Clock)
        begin
                q <= d;
        end
endmodule