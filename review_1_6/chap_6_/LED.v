
//LED sáng dịch từ trái sang phải rồi tắt
module LED_SANG_DICH_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b80; 
        else 
            if( SS == 1)
		LED8 = LED8>>1;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch từ trái sang phải và lặp lại
module LED_SANG_DICH_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b80;
        else 
            if( SS == 1)
                if( LED8 == 8'h00 )
                        LED8 = 8'h80;//1000_0000b
                else
                        LED8 = ((LED8>>1);
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch từ phải sang trái rồi tắt
module LED_SANG_DICH_PST(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b01;
        else 
            if( SS == 1)
		LED8 = LED8<<1;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch phải sang trái sau đó tắt và lặp lại
module LED_SANG_DICH_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b01;
        else 
            if( SS == 1)
                if( LED8 == 8'h00 )
                        LED8 = 8'b01;
                else
                        LED8 = (LED8<<1);
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch có điều kiển trừ trái sang phải hoặc phải sang trái qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : PST|TSP 

module LED_SANG_DICH(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b01;
        else 
            if( SS == 1 )
		if(MODE == 1)
		    LED8 = (LED8==8'h00)?(8'h80):(LED8>>1);
		else
		    LED8 = (LED8==8'h00)?(8'h01):(LED8<<1);
            else 
                LED8 = LED8;
    end

endmodule


//LED sáng dần từ trái sang phải
module LED_SANG_DAN_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00; 
        else 
            if( SS == 1)
		LED8 = (LED8>>1)+8'h80;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ trái sang phải, tắt và lặp lại
module LED_SANG_DAN_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00;
        else 
            if( SS == 1)
                if( LED8 == 8'hFF || LED8 == 8'h00)
                        LED8 = (LED8 == 8h'FF)?(8'h00):(8'h80);
                else
                        LED8 = (LED8>>1)+8'h80;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ phải sang trái
module LED_SANG_DICH_PST(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00;
        else 
            if( SS == 1)
		LED8 = (LED8<<1)+8'h01;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần phải sang trái sau đó tắt và lặp lại
module LED_SANG_DICH_TSP(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00;
        else 
            if( SS == 1)
                if( LED8 == 8'hFF || LED8 == 8'h00)
                        LED8 = (LED8 == 8h'FF)?(8'h00):(8'h01);
                else
                        LED8 = (LED8<<1)+8'h01;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần có điều kiển trừ trái sang phải hoặc phải sang trái qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : PST|TSP 
//Sau khi sáng hết thì tắt và lặp lại.

module LED_SANG_DICH(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00;
        else 
            if( SS == 1 )
		if(MODE == 1)
		    LED8 = (LED8==8'hFF)?(8'h80):((LED8==7'h00)?(8'h01):((LED8>>1)+8'h80);
		else
		    LED8 = (LED8==8'hFF)?(8'h80):((LED8==7'h00)?(8'h01):((LED8<<1)+8'h01);
            else 
                LED8 = LED8;
    end

endmodule






