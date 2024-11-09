    
                // Counting up
                if ($past(mode)) begin
                    if (!$past(rst)) begin
                        if ($past(cnt) == -10'sd16) // INV - INC, counter jumped over INV
                            //assert ((cnt - $past(cnt)) == 10'sd10);
                        else if ($past(cnt) <= 10'sd235 && $past(cnt) > 10'sd230) // cnt was near MAX
                            //assert ((cnt - $past(cnt)) == 10'sd0);
                        else
                            //assert ((cnt - $past(cnt)) == 10'sd5);
                    end
                end
    
                // Counting down
                if (!$past(mode)) begin
                    if (!$past(rst)) begin
                        if ($past(cnt) == -10'sd2) // INV + DEC, counter jumped over INV
                            //assert (($past(cnt) - cnt) == 10'sd18);
                        else if ($past(cnt) >= -10'sd230 && $past(cnt) < -10'sd221) // cnt was near MIN
                            //assert (($past(cnt) - cnt) == 10'sd0);
                        else
                            //assert (($past(cnt) - cnt) == 10'sd9);
                    end
                end