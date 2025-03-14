module debouncer(
    input clk,
    input button,
    output reg clean_button
);
reg [19:0] count =0;
reg button_state =0;

always @(posedge clk) begin
    if(button == button_state)
        count = 0;
    else begin
        count = count+1;
        if (count==1000000) begin 
            button_state = button;
            clean_button = button;
        end
    end
end
endmodule


module counter(
    input clk,
    input inc_button,
    input reset_button,
    output reg[3:0] count
);
always @(posedge clk) begin
    if(reset_button)
        count=0;
    else if (inc_button) begin
        if (count==9)
            count =0; //wrap to 0 after 9
        else
            count = count+1;
    end
end
endmodule

module seven_seg_decoder(
    input [3:0] digit,
    output reg [6:0] seg 
);
always @(*) begin
    case(digit)
        4'b0000: seg = 7'b1000000; //0
        4'b0001: seg = 7'b1111001;//1
        4'b0010: seg = 7'b0100100;//2
        4'b0011: seg = 7'b0011001;//3
        4'b0100: seg = 7'b0011001;//4
        4'b0101: seg = 7'b0010010;//5
        4'b0110: seg = 7'b0000010;//6
        4'b0111: seg = 7'b1111000;//7
        4'b1000: seg = 7'b0000000;//8
        4'b1001: seg = 7'b0010000;//9
        default: seg = 7'b1111111;//off
    endcase
end
endmodule

module button_counter(
    input clk,
    input btn_inc,//inclement button
    input btn_rst, // reset button
    output [6:0] seg, // 7 seg display 
    output [3:0] an // anode selector

);
wire clean_inc, clean_rst;
wire[3:0] count;

//debounce both buttons
debouncer debounce_inc(.clk(clk), .button(btn_inc), .clean_button(clean_inc));
debouncer debounce_rst(.clk(clk), .button(btn_rst), .clean_button(clean_rst));

//counter logic
counter count_mod(.clk(clk), .inc_button(clean_inc), .reset_button(clean_rst), .count(count));

//seven segment decoder
seven_seg_decoder seg_dec(.digit(count), .seg(seg));

//enable one display
assign an = 4'b1110; 

endmodule