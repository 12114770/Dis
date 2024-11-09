module counter (clk, rst, mode, cnt);

    input  wire clk;
    input  wire rst;
    input  wire mode;
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
        end
    end

    `ifdef FORMAL
        reg init = 1;
        always @(posedge clk) begin
            if (init)    assume(rst);
            else assume(!rst);
            init <= 0;
        end
    
        always @(posedge clk) begin
    
            if (rst) begin
                assert (cnt == -10'sd50);
            end
    
            if (!rst) begin
    
                //
                // Check if counter value is never lower than MIN, larger than MAX, or
                // equal to INV
                //
                assert (cnt <= 10'sd235);
                assert (cnt >= -10'sd230);
                assert (cnt != -10'sd11);
    
                //
                // Check if the counter value is correctly incremented and decremented
                //
    
                // Counting up
                if ($past(mode)) begin
                    if (!$past(rst)) begin
                        if ($past(cnt) == -10'sd16) // INV - INC, counter jumped over INV
                            assert ((cnt - $past(cnt)) == 10'sd10);
                        else if ($past(cnt) <= 10'sd235 && $past(cnt) > 10'sd230) // cnt was near MAX
                            assert ((cnt - $past(cnt)) == 0);
                        else
                            assert ((cnt - $past(cnt)) == 10'sd5);
                    end
                end
    
                // Counting down
                if (!$past(mode)) begin
                    if (!$past(rst)) begin
                        if ($past(cnt) == -10'sd2) // INV + DEC, counter jumped over INV
                            assert (($past(cnt) - cnt) == 10'sd18);
                        else if ($past(cnt) >= -10'sd230 && $past(cnt) < -10'sd221) // cnt was near MIN
                            assert (($past(cnt) - cnt) == 0);
                        else
                            assert (($past(cnt) - cnt) == 10'sd9);
                    end
                end
    
            end
        end
    `endif
endmodule
