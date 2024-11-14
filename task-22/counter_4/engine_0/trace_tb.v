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
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1226  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1237  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1248  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1259  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1270  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$1281  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1227  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1238  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1249  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1260  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1271  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$1282  = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_dff_39_tb_counter_sv_54_1199 = 10'b1111001110;
    UUT.dut.tb._witness_.anyinit_verific_i35_tb_counter_sv_48_1196 = 1'b1;
    UUT.dut.tb._witness_.anyinit_verific_i54_tb_counter_sv_57_1210 = 1'b1;
    UUT.dut.tb.init = 1'b1;

    // state 0
    PI_mode = 1'b1;
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

    genclock <= cycle < 4;
    cycle <= cycle + 1;
  end
endmodule
