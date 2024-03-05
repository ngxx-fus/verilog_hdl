module d_ff(output Q, input D, input CLK);
    
    wire CLK, D;
    reg Q;

    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    always @(posedge CLK)
        begin
                #2
                Q = D;
        end
endmodule