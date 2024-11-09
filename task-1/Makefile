#------------------------------------------------------------------------------
#
# Internal variables
#
IVERILOG_DEBUG ?= 
TESTBENCH ?= tb_counter.v
#
#------------------------------------------------------------------------------
#
# Setting internal variables based on user-controllable options
#
ifeq ($(DEBUG),1)
    IVERILOG_DEBUG := -DDEBUG
endif
#
#------------------------------------------------------------------------------
#
# Simulation cell library
#
YOSYS_SIMCELLS := $(shell yosys-config --datdir/simcells.v)
#
#------------------------------------------------------------------------------
#
# Variables
#
VCD_FILES := $(patsubst tests/%.v,sim/%.vcd,$(wildcard tests/*.v))
#
#------------------------------------------------------------------------------
#
# Help target
#
.PHONY: help
help:
	@echo ""
	@echo "Options"
	@echo "-------"
	@echo ""
	@echo "Options can be set from the command line, and directly in the"
	@echo "Makefile. Please note that it may be necessary to call"
	@echo ""
	@echo "    make clean"
	@echo ""
	@echo "for options to take effect when execting targets."
	@echo ""
	@echo ""
	@echo "When calling 'make' from the command line, options can be permanently"
	@echo "set for a session by exporting an environment variable:"
	@echo ""
	@echo "    export OPTION=value"
	@echo "    make target_1"
	@echo "    make target_2"
	@echo "    ..."
	@echo "    make target_n"
	@echo ""
	@echo "For a single run of 'make', the environment variable can be set as"
	@echo "follows:"
	@echo ""
	@echo "    OPTION=value make target_1"
	@echo ""
	@echo "To make the value of an option independent from the command line, it"
	@echo "can be set in the Makefile, e.g.:"
	@echo ""
	@echo "    OPTION ?= value"
	@echo ""
	@echo ""
	@echo "DEBUG=1|0"
	@echo "    If 1, enables debug output"
	@echo ""
	@echo "TESTBENCH=<filename>"
	@echo "    Specifies the testbench to use for verifying the counter"
	@echo ""
	@echo ""
	@echo "Targets"
	@echo "-------"
	@echo ""
	@echo "make help"
	@echo "    Print help text"
	@echo ""
	@echo "make test"
	@echo "    Simulate all test counters (0-10)"
	@echo ""
	@echo "make 0"
	@echo "    Simulate the bug-free test counter. This target must not fail."
	@echo ""
	@echo "make 1|2|3|4|5|7|8|10"
	@echo "    Test targets. Simulate buggy test counter. Counters 1-10"
	@echo "    contain bugs that should be detected by the testbench."
	@echo "    These targets must fail to indicate a good testbench."
	@echo ""
	@echo "    The buggy counters behave as follows:"
	@echo ""
	@echo "        1: cnt may be greater than maximum"
	@echo "        2: cnt may be less than minimum"
	@echo "        3: cnt does not jump over invalid"
	@echo "        4: increment is 1 larger than specified"
	@echo "        5: cnt jumps (up) over invalid to value 1 larger than specified"
	@echo "        7: decrement is 1 less than specified"
	@echo "        8: cnt jumps (down) over invalid to value 1 smaller than specified"
	@echo "       10: initial value is 1 larger than specified"
	@echo ""
	@echo ""
	@echo "make test_reset|test_min|test_max|test_increment|test_decrement|test_invalid"
	@echo "    Simulate sets of buggy counters that violate a property."
	@echo ""
	@echo "    The targets execute the following test targets"
	@echo ""
	@echo "        test_reset: 10"
	@echo "        test_min: 2"
	@echo "        test_max: 1"
	@echo "        test_increment: 3 4 5"
	@echo "        test_decrement: 3 7 8"
	@echo "        test_invalid: 3 5 8"
	@echo ""
	@echo ""
	@echo "make clean"
	@echo "    Delete generated files"
	@echo ""
#
#------------------------------------------------------------------------------
#
# Perform all tests
#
.PHONY: test
test: $(VCD_FILES)
#
#------------------------------------------------------------------------------
#
# Define targets '0', '1', '2', ..., '10'
#
.PHONY: 0 1 2 3 4 5 7 8 10
0: sim/counter-0.vcd
1: sim/counter-1.vcd
2: sim/counter-2.vcd
3: sim/counter-3.vcd
4: sim/counter-4.vcd
5: sim/counter-5.vcd
7: sim/counter-7.vcd
8: sim/counter-8.vcd
10: sim/counter-10.vcd
#
#------------------------------------------------------------------------------
#
# Targets to check properties of the counter
#
test_reset: 10
test_min: 2
test_max: 1
test_increment: 3 4 5
test_decrement: 3 7 8
test_invalid: 3 5 8
#
#------------------------------------------------------------------------------
#
# Simulate Verilog desings
#
sim/%.vcd: tests/%.v
	iverilog \
		-D 'VCDFILE="$@"' \
		$(IVERILOG_DEBUG) \
		-g2012 \
		-gassertions \
		-l $(YOSYS_SIMCELLS) \
		-o $* \
		$? \
		$(TESTBENCH)
	vvp $*
#
#------------------------------------------------------------------------------
#
# Clean the project directory
#
.PHONY: clean
clean:
	rm -fv sim/*.vcd
#
#------------------------------------------------------------------------------

