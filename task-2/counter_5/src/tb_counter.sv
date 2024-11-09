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
			assert (cnt <= 235);
			assert(cnt != -11);
			assert (cnt >= -230);
			if ($past(mode)== 1) begin

				//
				// Check if counter value is never lower than MIN, larger than MAX, or
				// equal to INV

				if (cnt <= 229 &&  $past(cnt) != -16 && $past(cnt,1) != -50) begin
					assert(cnt - $past(cnt,1)== 5);
				end 
				if ($past(cnt == -16)) begin
					assert(cnt - $past(cnt,1 )== 10);
				end
				if ($past(cnt) <= 235 && $past(cnt) >= 231)begin
					assert(cnt-$past(cnt,1)== 0);
				end

			end 
			if ($past(mode)== 0)begin

				//
				// Check if counter value is never lower than MIN, larger than MAX, or
				// equal to INV
				//
				if (cnt >= -221 &&  $past(cnt) != -2 && $past(cnt,1) != -50) begin
					assert(cnt - $past(cnt,1)== -9);
				end 
				if ($past(cnt,1) == -2) begin
					assert(cnt - $past(cnt,1 )== -18);
				end
				if ($past(cnt) <= -222 && $past(cnt) >= -230)begin
					assert(cnt-$past(cnt,1)== 0);
				end

				// Counting down
				// TODO: Add your assertions here!
				end

		end
	end
endmodule
