#------------------------------------------------------------------------------
#
# Internal variables
#
IVERILOG_DEBUG ?= 
TESTBENCH ?= tb_counter.v
SBY_FILE ?= counter.sby
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
	@echo "SBY_FILE=<filename>"
	@echo "    Specifies the SymbiYosys configuration file for formal verification"
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
	@echo "make 1|2|3|4|5|6|7|8|9|10"
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
	@echo "        6: increment may be 1 (other than 0 as specified) near maximum"
	@echo "        7: decrement is 1 less than specified"
	@echo "        8: cnt jumps (down) over invalid to value 1 smaller than specified"
	@echo "        9: decrement may be 1 (other than 0 as specified) near minimum"
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
	@echo "        test_increment: 3 4 5 6"
	@echo "        test_decrement: 3 7 8 9"
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
# Define targets '1', '2', ..., '10'
#
.PHONY: 1 2 3 4 5 6 7 8 9 10
# 0: Correctly implemented counter
0: sim/counter-0.vcd
# 1: cnt may be greater than maximum
1: sim/counter-1.vcd
# 2: cnt may be less than minimum
2: sim/counter-2.vcd
# 3: cnt does not jump over invalid
3: sim/counter-3.vcd
# 4: increment is 1 larger than specified
4: sim/counter-4.vcd
# 5: cnt jumps (up) over invalid to value 1 larger than specified
5: sim/counter-5.vcd
# 6: increment may be 1 (other than 0 as specified) near maximum
#    We don't check this, as it may only be detected if the increment is not a
#    divisor or multiple of the decrement
6: sim/counter-6.vcd
# 7: decrement is 1 less than specified
7: sim/counter-7.vcd
# 8: cnt jumps (down) over invalid to value 1 smaller than specified
8: sim/counter-8.vcd
# 9: decrement may be 1 (other than 0 as specified) near minimum
#    We don't check this, as it may only be detected if the increment is not a
#    divisor or multiple of the decrement
9: sim/counter-9.vcd
# 10: initial value is 1 larger than specified
10: sim/counter-10.vcd
#
#------------------------------------------------------------------------------
#
# Targets to check properties of the counter
#
test_reset: 10
test_min: 2
test_max: 1
test_increment: 3 4 5 6
test_decrement: 3 7 8 9
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
		-o sim/$*.iverilog \
		$? \
		$(TESTBENCH)
	vvp sim/$*.iverilog
#
#------------------------------------------------------------------------------
#
# Formally verify Verilog desings
#
counter_%: $(SBY_FILE)
	sby -f $< $*
#
#------------------------------------------------------------------------------
#
# Clean the project directory
#
.PHONY: clean
clean:
	rm -fv sim/*.vcd
	rm -fv sim/*.iverilog
	find . -type d -name "counter_*" | xargs rm -rfv
#
#------------------------------------------------------------------------------

