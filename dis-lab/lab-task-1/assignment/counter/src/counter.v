module counter (clk, rst, mode,limit,  cnt);

    input  wire clk;
    input  wire rst;
    input  wire mode;
    output wire limit = 0; 
    output reg signed [9:0] cnt = -10'sd50;

    reg signed [9:0] summand;

    always @* begin
        summand = 10'sd0;
        if (mode) begin
            if (cnt != -10'sd16) begin
                if (cnt <= 10'sd230) begin
                    summand = 10'sd5;
                end
            end else if (cnt <= 10'sd225) begin
                summand = 10'sd10;
            end
        // mode = 0
        end else begin
            if (cnt != -10'sd2) begin
                if (cnt >= -10'sd221 ) begin
                    summand = -10'sd9;
                end
            end else if (cnt >= -10'sd212) begin
                summand = -10'sd18;
            end
        end
    end

    always @(posedge clk) begin
        if (rst)
            cnt <= -10'sd50;
        else begin
            cnt <= cnt + summand;
            if (summand == 10'sd0) begin
                limit <= 1;
            end else begin
                limit <= 0;
            end
        end
    end
endmodule

