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
  wire [0:0] PI_clk = clock;
  reg [0:0] PI_rst;
  reg [0:0] PI_mode;
  tb_counter UUT (
    .clk(PI_clk),
    .rst(PI_rst),
    .mode(PI_mode)
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
    UUT.dut.\cnt_reg[0] .Q = 1'b0;
    UUT.dut.\cnt_reg[1] .Q = 1'b1;
    UUT.dut.\cnt_reg[2] .Q = 1'b1;
    UUT.dut.\cnt_reg[3] .Q = 1'b1;
    UUT.dut.\cnt_reg[4] .Q = 1'b0;
    UUT.dut.\cnt_reg[5] .Q = 1'b0;
    UUT.dut.\cnt_reg[6] .Q = 1'b1;
    UUT.dut.\cnt_reg[7] .Q = 1'b1;
    UUT.dut.\cnt_reg[8] .Q = 1'b1;
    UUT.dut.\cnt_reg[9] .Q = 1'b1;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1340  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1351  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1362  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1373  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1384  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1395  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1406  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1417  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1428  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1439  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1341  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1352  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1363  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1374  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1385  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1396  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1407  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1418  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1429  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1440  = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_dff_37_tb_counter_sv_54_1278 = 10'b1111100111;
    UUT.dut.tb._witness_.anyinit_verific_i35_tb_counter_sv_48_1276 = 1'b1;
    UUT.dut.tb._witness_.anyinit_verific_i52_tb_counter_sv_57_1287 = 1'b1;
    UUT.dut.tb.init = 1'b1;

    // state 0
    PI_rst = 1'b1;
    PI_mode = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_rst <= 1'b0;
      PI_mode <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_rst <= 1'b0;
      PI_mode <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_rst <= 1'b0;
      PI_mode <= 1'b0;
    end

    // state 4
    if (cycle == 3) begin
      PI_rst <= 1'b0;
      PI_mode <= 1'b0;
    end

    genclock <= cycle < 4;
    cycle <= cycle + 1;
  end
endmodule
