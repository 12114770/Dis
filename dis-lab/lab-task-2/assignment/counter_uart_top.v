/*
 *
 *  DIS FPGA Lab Task 2 - Top-level
 *
 *  Based on the icebreaker example - Async uart mirror using pll
 *
 *  Copyright (C) 2018 Piotr Esden-Tempski <piotr@esden.net>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */


module top (
    input CLK,
    input RX,
    input BTN1,
    input BTN2,
    input BTN3,


    output TX, 
    output LED1,
    output LED2,
    output LED3,
    output LED4,
    output LED5,
    output LEDG_N,
    output LEDR_N,

    
    //
    // TODO add further ports (if required)
    // Use the port names from the .pcf file
    //
);

    localparam clk_freq = 12_000_000;   // 12MHz
    localparam baud = 115200;           // UART Baud rate

    wire clk_12mhz;
    assign clk_12mhz = CLK;

    /* instantiate UART RX module */
    reg rx_ready;
    reg [7:0] rx_data;
    uart_rx #(clk_freq, baud) urx (
        .clk(clk_12mhz),
        .rx(RX),
        .rx_ready(rx_ready),
        .rx_data(rx_data),
    );

    /* instantiate UART TX module */
    reg tx_start;
    reg [7:0] tx_data;
    reg tx_busy;
    uart_tx #(clk_freq, baud) utx (
        .clk(clk_12mhz),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .tx(TX),
        .tx_busy(tx_busy)
    );

    /* Wires to connect to your counter */
    wire cnt_clk;
    wire cnt_rst;
    wire cnt_mode;
    wire [9:0] cnt_cnt;
    wire cnt_limit;
    wire cnt_skip;
    //
    // TODO add further wires (if required)
    // e.g. for your newly created output from lab task 1
    //

    /* instantiate counter */
    //
    // TODO add counter instantiation
    //

    counter dut (
        .clk(cnt_clk),
        .rst(cnt_rst),
        .mode(cnt_mode),
        .limit(cnt_limit),
        .skip(cnt_skip),
        .cnt(cnt_cnt)
    );

    

    /* UART receive*/
    reg [7:0] rx_buffer;
    always @(posedge clk_12mhz) begin
        if(rx_ready) begin
            rx_buffer <= rx_data;
        end
    end

    /* UART trasmit*/
    reg [1:0] word_ready;
    reg [9:0] last_cnt;
    always @(posedge clk_12mhz) begin
        /* only transmit changed counter values */
        if(cnt_cnt != last_cnt) begin
            word_ready <= 2'b01;
        end else begin
            /* transmit two words for 10 bits */
            if(~tx_busy) begin
                if(word_ready == 2'b01) begin
                    tx_data <= {6'b0, cnt_cnt[9:8]};
                    tx_start <= 1;
                    word_ready <= 2'b10;
                end else if(word_ready == 2'b10) begin
                    tx_data <= cnt_cnt[7:0];
                    tx_start <= 1;
                    word_ready <= 2'b00;
                end else begin
                    tx_data <= 8'b0;
                    tx_start <= 0;
                end
            end
        end
                
        /* update last counter register */
        last_cnt <= cnt_cnt;
    end

    /* connect your counter to the relevant signals */
    assign cnt_clk = rx_buffer[0];
    assign cnt_rst = rx_buffer[1];
    assign cnt_mode = rx_buffer[2];

    assign LEDG_N = cnt_limit;
    assign LEDR_N = cnt_skip;
    assign LED1 = tx_busy;

    //
    // TODO connect further inputs or outputs to buttons/LEDs (if required)
    //

endmodule
