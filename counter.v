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