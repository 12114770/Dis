module counter (clk, rst, mode, cnt);
    input clk, rst, mode;
    output reg signed [9:0] cnt;
    reg signed [9:0] tmp;
    reg signed [9:0] cnttmp;

    



    always @( posedge clk or posedge rst ) begin
        if (rst) begin
            cnt <= -10'sd50;
        end else begin
            tmp = 10'sd0;
            if (mode) begin
                if (cnt == -10'sd16) begin
                    tmp = 10'sd10;
                end else if (cnt <= 10'sd230) begin
                    tmp = 10'sd5;
                end
            end else if(!mode ) begin
                if (cnt == -2) begin
                    tmp = -10'sd18;
                end else if (cnt >= -10'sd221) begin
                    tmp = -10'sd 9;
                end
            end
        cnttmp = cnt +tmp;


        if ((cnttmp) >= -10'sd230 && (cnttmp) <= 10'sd235) begin
                cnt <= cnttmp ;
            end
        end
    end

    // Let's specify the counter's intended behavior here
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
                            assert ((cnt - $past(cnt)) == 10'sd0);
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
                            assert (($past(cnt) - cnt) == 10'sd0);
                        else
                            assert (($past(cnt) - cnt) == 10'sd9);
                    end
                end            

    
            end
        end
    `endif
endmodule
