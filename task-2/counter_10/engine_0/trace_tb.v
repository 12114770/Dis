`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [0:0] PI_rst;
  reg [0:0] PI_mode;
  wire [0:0] PI_clk = clock;
  tb_counter UUT (
    .rst(PI_rst),
    .mode(PI_mode),
    .clk(PI_clk)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    UUT.dut.\cnt_reg[0] .Q = 1'b1;
    UUT.dut.\cnt_reg[1] .Q = 1'b1;
    UUT.dut.\cnt_reg[2] .Q = 1'b1;
    UUT.dut.\cnt_reg[3] .Q = 1'b1;
    UUT.dut.\cnt_reg[4] .Q = 1'b0;
    UUT.dut.\cnt_reg[5] .Q = 1'b0;
    UUT.dut.\cnt_reg[6] .Q = 1'b1;
    UUT.dut.\cnt_reg[7] .Q = 1'b1;
    UUT.dut.\cnt_reg[8] .Q = 1'b1;
    UUT.dut.\cnt_reg[9] .Q = 1'b1;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1290  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1301  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1312  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1323  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1334  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1345  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1356  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1367  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1378  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1389  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1291  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1302  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1313  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1324  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1335  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1346  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1357  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1368  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1379  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1390  = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_dff_37_tb_counter_sv_54_1228 = 10'b1111111110;
    UUT.dut.tb._witness_.anyinit_verific_i35_tb_counter_sv_48_1226 = 1'b1;
    UUT.dut.tb._witness_.anyinit_verific_i52_tb_counter_sv_57_1237 = 1'b1;
    UUT.dut.tb.init = 1'b1;

    // state 0
    PI_rst = 1'b1;
    PI_mode = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_rst <= 1'b0;
      PI_mode <= 1'b0;
    end

    genclock <= cycle < 1;
    cycle <= cycle + 1;
  end
endmodule
