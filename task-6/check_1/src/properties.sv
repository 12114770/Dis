module tb_counter (
	input clk,
	input rst,
	input mode,
	output signed[9:0] cnt
);

    // Instantiate DUT
    counter dut(
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .cnt(cnt)
    );

    // Connect DUT with assertions
	bind dut assertions tb (.*);

endmodule


module assertions (
	input clk,
	input rst,
	input mode,
	input signed[9:0] cnt
);

    // Generate reset sequence
	reg init = 1;
	always @(posedge clk) begin
		if (init)	assume(rst);
		else assume(!rst);
		init <= 0;
	end

    // Check properties
	always @(posedge clk) begin

		if (rst) begin
			assert (cnt == -50);
		end

		if (!rst) begin

			//
			// Check if counter value is never lower than MIN, larger than MAX, or
			// equal to INV
			//
			assert (cnt <= 235);
			assert (cnt >= -230);
			assert (cnt != -11);

			//
			// Check if the counter value is correctly incremented and decremented
			//

			// Counting up
			if ($past(mode)) begin
				if (!$past(rst)) begin
					if ($past(cnt) == (-11-5))
						assert ((cnt - $past(cnt)) == (5+5));
					else if ($past(cnt) <= 235 && $past(cnt) > (235-5))
						assert ((cnt - $past(cnt)) == 0);
					else
						assert ((cnt - $past(cnt)) == 5);
				end
			end

			// Counting down
			if (!$past(mode)) begin
				if (!$past(rst)) begin
					if ($past(cnt) == (-11+9))
						assert (($past(cnt) - cnt) == (9+9));
					else if ($past(cnt) >= -230 && $past(cnt) < (-230+9))
						assert (($past(cnt) - cnt) == 0);
					else
						assert (($past(cnt) - cnt) == 9);
				end
			end
		end
	end
endmodule


