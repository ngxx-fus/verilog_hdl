module FREQ_DIV(
   input I_CLK,
   input M,
   output reg O_CLK
);
    reg [31:0] COUNT;
    initial begin
       COUNT = 0;
       O_CLK = 0;
    end
    always @(negedge I_CLK) begin
        if( M == 1 ) begin
               if( COUNT == 12_000_000 ) begin
                   O_CLK = ~O_CLK;
                   COUNT = 0;
               end else
                   COUNT = COUNT + 1;
        end
        else begin
               if( COUNT > 10000 )
                   COUNT = 0;
               if( COUNT == 1000) begin
                   O_CLK = ~O_CLK;
                   COUNT = 0;
               end else
                   COUNT = COUNT + 1;
        end
    end
endmodule
