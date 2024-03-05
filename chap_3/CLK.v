//while(condi) statement;
//repeat(times) statement;
module CLK(out);

    output out;

    reg out, clk;

    initial
        begin
            clk = 1;
            forever 
                begin
                    #10 
                    clk =~clk;
                    out = clk;
                end
        end
endmodule