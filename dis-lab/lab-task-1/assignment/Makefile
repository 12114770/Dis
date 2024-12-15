.PHONY: all
all: check synth place
	

.PHONY: check
check:
	sby -f counter.sby

.PHONY: synth
synth:
	yosys synth.ys


.PHONY: place
place:
	nextpnr-ice40 --package sg48 --up5k --json "counter.json" --pcf counter.pcf --asc "counter.asc"


.PHONY: prog
prog:
	icepack "counter.asc" "counter.bin"
	iceprog "counter.bin"

