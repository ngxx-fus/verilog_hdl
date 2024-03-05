module not_gate (input in, output out);
    wire in;
    reg out;
    // assign notA = ~A;
    always @(in) begin
        out = ~in;
    end
endmodule
