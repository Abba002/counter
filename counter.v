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
    input reset button,
    output reg[3:0] count
);
always @(posedge clk) begin
    if(reset_button)
        count=0;
    else if (inc_button) begin
        if (count==9)
            count ==0; //wrap to 0 after 9
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
        4'b0001: seg = 7'b1000000;//1
        4'b0010: seg = 7'b1000000;//2
        4'b0011: seg = 7'b1000000;//3
        4'b0100: seg = 7'b1000000;//4
        4'b0101: seg = 7'b1000000;//5
        4'b0110: seg = 7'b1000000;//6
        4'b0111: seg = 7'b1000000;//7
        4'b1000: seg = 7'b1000000;//8
        4'b1001: seg = 7'b1000000;//9
        default: seg = 7b'1111111;//off
    endcase
end
endmodule
