
//Tuy chinh de ngan hon :v
module updown_CNT4b_mod(
    clk,//clock
    rst,//reset
    SS,//Stop-Start 0-1
    MODE, //Down-Up 0-1
    MIN,//inital
    MAX,//final
    OUT//output
);
    input clk, rst, SS, MODE;
    input [3:0] MIN, MAX;
    output reg [3:0] OUT;

    always @(posedge clk, rst) 
            if( rst == 1) 
                if(MODE == 1)
                    OUT = MIN;
                else 
                    OUT = MAX;
            else
                    if(SS ==1)
                        OUT = (MODE==1)?((OUT==MAX)?(MIN):(OUT+1)):(OUT==MIN)?(MAX):(OUT-1);

endmodule