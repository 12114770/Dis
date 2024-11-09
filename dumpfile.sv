        if (past_mode == 1) begin

               

                if (cnt <= 230) begin
                    if (past_cnt != (-16)) begin
                        assert(cnt == past_cnt+5);
                    end else begin
                        assert(cnt == past_cnt+10);
                    end
                end

            end else begin // past_mode == 0

                // Add the remaining assertions here to check the correct
                // decrement
                if (past_cnt !== -2  && past_cnt >= -221 ) begin
                    assert(cnt-past_cnt == -9);                   
                end

                if (past_cnt == -2) begin
                    assert(cnt-past_cnt == -18);
                end
            end