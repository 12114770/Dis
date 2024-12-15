.PHONY: synth
synth:
	yosys -f verilog -p "prep -top top; opt -full; synth_ice40; write_json counter_uart.json" \
	counter_uart_top.v \
	uart_rx.v \
	uart_tx.v \
	uart_baud_tick_gen.v \
	counter_pareto.v
	

.PHONY: place
place:
	nextpnr-ice40 --up5k --package sg48 --json counter_uart.json --pcf counter_uart.pcf --asc counter_uart.asc 

.PHONY: all
all: synth place

.PHONY: prog
prog: 
	icepack counter_uart.asc counter_uart.bin
	iceprog counter_uart.bin
