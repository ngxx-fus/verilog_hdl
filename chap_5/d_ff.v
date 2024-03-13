module d_ff(output reg q, input d, input Clock);
    //posedge for "low-to-high edge"
    //negedge for "high-to-low edge"
    always @(posedge Clock)
        begin
                q = d;
        end
endmodule