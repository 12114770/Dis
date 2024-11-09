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
  reg [0:0] PI_mode;
  reg [0:0] PI_rst;
  wire [0:0] PI_clk = clock;
  tb_counter UUT (
    .mode(PI_mode),
    .rst(PI_rst),
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
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1440  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1451  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1462  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1473  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1484  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1495  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1506  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1517  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1528  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1539  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1441  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1452  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1463  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1474  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1485  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1496  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1507  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1518  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1529  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1540  = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_dff_37_tb_counter_sv_54_1378 = 10'b1010011000;
    UUT.dut.tb._witness_.anyinit_verific_i35_tb_counter_sv_48_1376 = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_i52_tb_counter_sv_57_1387 = 1'b0;
    UUT.dut.tb.init = 1'b1;

    // state 0
    PI_mode = 1'b0;
    PI_rst = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 4
    if (cycle == 3) begin
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 6
    if (cycle == 5) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 11
    if (cycle == 10) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 12
    if (cycle == 11) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 13
    if (cycle == 12) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 14
    if (cycle == 13) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 15
    if (cycle == 14) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 16
    if (cycle == 15) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 17
    if (cycle == 16) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 18
    if (cycle == 17) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 19
    if (cycle == 18) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 20
    if (cycle == 19) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 21
    if (cycle == 20) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 22
    if (cycle == 21) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 23
    if (cycle == 22) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 24
    if (cycle == 23) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 25
    if (cycle == 24) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 26
    if (cycle == 25) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 27
    if (cycle == 26) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 28
    if (cycle == 27) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 29
    if (cycle == 28) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 30
    if (cycle == 29) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 31
    if (cycle == 30) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 32
    if (cycle == 31) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 33
    if (cycle == 32) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 34
    if (cycle == 33) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 35
    if (cycle == 34) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 36
    if (cycle == 35) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 37
    if (cycle == 36) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 38
    if (cycle == 37) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 39
    if (cycle == 38) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 40
    if (cycle == 39) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 41
    if (cycle == 40) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 42
    if (cycle == 41) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 43
    if (cycle == 42) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 44
    if (cycle == 43) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 45
    if (cycle == 44) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 46
    if (cycle == 45) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 47
    if (cycle == 46) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 48
    if (cycle == 47) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 49
    if (cycle == 48) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 50
    if (cycle == 49) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 51
    if (cycle == 50) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 52
    if (cycle == 51) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 53
    if (cycle == 52) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 54
    if (cycle == 53) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 55
    if (cycle == 54) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 56
    if (cycle == 55) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 57
    if (cycle == 56) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 58
    if (cycle == 57) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 59
    if (cycle == 58) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 60
    if (cycle == 59) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 61
    if (cycle == 60) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 62
    if (cycle == 61) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 63
    if (cycle == 62) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 64
    if (cycle == 63) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 65
    if (cycle == 64) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    genclock <= cycle < 65;
    cycle <= cycle + 1;
  end
endmodule
