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
  wire [0:0] PI_clk = clock;
  reg [0:0] PI_rst;
  tb_counter UUT (
    .mode(PI_mode),
    .clk(PI_clk),
    .rst(PI_rst)
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
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$810  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$821  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$832  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$843  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$854  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$865  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$876  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$887  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$898  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1817:import$909  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$811  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$822  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$833  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$844  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$855  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$866  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$877  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$888  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$899  = 1'b0;
    // UUT.dut.tb.$auto$verificsva.\cc:1818:import$910  = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_dff_37_tb_counter_sv_54_748 = 10'b0010001111;
    UUT.dut.tb._witness_.anyinit_verific_i35_tb_counter_sv_48_746 = 1'b0;
    UUT.dut.tb._witness_.anyinit_verific_i52_tb_counter_sv_57_757 = 1'b0;
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
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_mode <= 1'b1;
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
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 14
    if (cycle == 13) begin
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 15
    if (cycle == 14) begin
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 16
    if (cycle == 15) begin
      PI_mode <= 1'b1;
      PI_rst <= 1'b0;
    end

    // state 17
    if (cycle == 16) begin
      PI_mode <= 1'b0;
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
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    // state 21
    if (cycle == 20) begin
      PI_mode <= 1'b0;
      PI_rst <= 1'b0;
    end

    genclock <= cycle < 21;
    cycle <= cycle + 1;
  end
endmodule
