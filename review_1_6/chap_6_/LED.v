
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
                LED8 = 8'h80; 
        else 
            if( SS == 1)
		LED8 = LED8>>1;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch từ trái sang phải và lặp lại
module LED_SANG_DICH_TSP_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h80;
        else 
            if( SS == 1)
                if( LED8 == 8'h00 )
                        LED8 = 8'h80;//1000_0000b
                else
                        LED8 = (LED8>>1);
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
                LED8 = 8'h01;
        else 
            if( SS == 1)
		LED8 = LED8<<1;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch phải sang trái sau đó tắt và lặp lại
module LED_SANG_DICH_PST_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h01;
        else 
            if( SS == 1)
                if( LED8 == 8'h00 )
                        LED8 = 8'h01;
                else
                        LED8 = (LED8<<1);
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch có điều kiển trừ trái sang phải hoặc phải sang trái qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : PST|TSP 

module LED_SANG_DICH_repeat(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00
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

//-------------------------------------------------------------------------

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
                LED8 = 8'h00; 
        else 
            if( SS == 1)
		LED8 = (LED8>>1)+8'h80;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ trái sang phải, tắt và lặp lại
module LED_SANG_DAN_TSP_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = (LED8 == 8'hFF)?(0):((LED8>>1)+8'h80);
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ phải sang trái
module LED_SANG_DAN_PST(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
		        LED8 = (LED8<<1)+8'h01;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần phải sang trái sau đó tắt và lặp lại
module LED_SANG_DAN_PST_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                        LED8 = (LED8==8'hFF)?(0):(LED8<<1)+8'h01;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần có điều kiển trừ trái sang phải hoặc phải sang trái qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : PST|TSP 
//Sau khi sáng hết thì tắt và lặp lại.

module LED_SANG_DAN_MODE_repeat(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1 )
		if(MODE == 1)
		    LED8 = (LED8==8'hFF)?(8'h80):((LED8>>1)+8'h80);
		else
		    LED8 = (LED8==8'hFF)?(8'h80):((LED8<<1)+8'h01);
            else 
                LED8 = LED8;
    end

endmodule


//LED sáng dịch từ trong ra ngoài
module LED_SANG_DICH_TRN(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'b00011000;
        else 
            if( SS == 1)
                LED8 = {LED8[7:4]<<1, LED8[3:0]>>1};
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch từ trong ra ngoài và lặp lại
module LED_SANG_DICH_TRN_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = (LED8==8'h00)?(8'h18):({LED8[7:4]<<1, LED8[3:0]>>1});
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ trong ra ngoài
module LED_DAN_DICH_TRN(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = {LED8[7:4]<<1, LED8[3:0]>>1}+8'h18;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ trong ra ngoài, tắt và lặp lại
module LED_DAN_DICH_TRN_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = (LED8==8'hFF)?(0):({LED8[7:4]<<1, LED8[3:0]>>1}+8'b00011000);
            else 
                LED8 = LED8;
    end

endmodule


//--------------------------------------------------------------------------------
//LED sáng dịch từ  ngoài vào trong
module LED_SANG_DICH_NVT(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h81;
        else 
            if( SS == 1)
                LED8 = {LED8[7:4]>>1, LED8[3:0]>>1};
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dịch từ ngoài vào trong và lặp lại
module LED_SANG_DICH_NVT_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = (LED8==8'h00)?(8'h81):({LED8[7:4]>>1, LED8[3:0]<<1});
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ ngoài vào trong
module LED_DAN_DICH_NVT(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = {LED8[7:4]>>1, LED8[3:0]<<1}+8'h81;
            else 
                LED8 = LED8;
    end

endmodule

//LED sáng dần từ ngoài vào trong, tắt và lặp lại
module LED_DAN_DICH_NVT_repeat(
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1)
                LED8 = (LED8==8'hFF)?(0):({LED8[7:4]>>1, LED8[3:0]<<1}+8'h81);
            else 
                LED8 = LED8;
    end

endmodule


//------------------------------------------------------------------
//LED sáng dịch có điều kiển trừ trong ra ngoài hoặc ngoài vào trong qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : NVT|TRN

module LED_SANG_DICH_TRN_NVT_repeat(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h01;
        else 
            if( SS == 1 )
		if(MODE == 1)
		    LED8 = (LED8==8'h00)?(8'h18):({LED8[7:4]<<1, LED8[3:0]>>1});
		else
		    LED8 = (LED8==8'h00)?(8'h81):({LED8[7:4]>>1, LED8[3:0]<<1});
            else 
                LED8 = LED8;
    end

endmodule


//LED sáng dần có điều kiển trừ trong ra ngoài hoặc ngoài vào trong qua chân MODE, và có tạm dừng qua chân SS.
// SS 0|1 : dừng|đếm
// MODE 0|1 : NVT|TRN

module LED_SANG_DAN_TRN_NVT_repeat(
    input MODE,
    input clk,
    input reset,
    input SS,
    output reg [7:0] LED8
);
    always @(posedge clk, reset) 
    begin
        if( reset == 1 )
                LED8 = 8'h00;
        else 
            if( SS == 1 )
		if(MODE == 1)
		    LED8 = (LED8==8'h00)?(8'h18):({LED8[7:4]<<1, LED8[3:0]>>1}+8'h18);
		else
		    LED8 = (LED8==8'h00)?(8'h81):({LED8[7:4]>>1, LED8[3:0]<<1}+8'h18);
            else 
                LED8 = LED8;
    end

endmodule
