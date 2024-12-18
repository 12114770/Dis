/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* top =  1  *)
(* src = "counter.v:1.1-39.10" *)
module counter(clk, rst, mode, cnt);
  (* src = "counter.v:3.17-3.20" *)
  input clk;
  wire clk;
  (* src = "counter.v:6.29-6.32" *)
  output [9:0] cnt;
  wire [9:0] cnt;
  wire cnt_SB_DFFSR_Q_1_D;
  wire cnt_SB_DFFSR_Q_2_D;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3;
  wire cnt_SB_DFFSR_Q_D;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O;
  (* src = "counter.v:5.17-5.21" *)
  input mode;
  wire mode;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I0_1_I1;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [2:0] mode_SB_LUT4_I0_2_O;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [1:0] mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [2:0] mode_SB_LUT4_I1_O;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [1:0] mode_SB_LUT4_I1_O_SB_LUT4_I1_I2;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.21-279.23" *)
  (* unused_bits = "0 4 5" *)
  wire [9:0] mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_1_D;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [2:0] mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_3_D;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_4_D;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_5_D;
  wire mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_D;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I2_O;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I3_O;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [2:0] mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [3:0] mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2;
  (* force_downto = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:6.21-6.22" *)
  wire [2:0] mode_SB_LUT4_I3_O_SB_LUT4_O_I2;
  (* src = "counter.v:4.17-4.20" *)
  input rst;
  wire rst;
  (* src = "counter.v:8.22-8.29" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9" *)
  wire [9:0] summand;
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR cnt_SB_DFFSR_Q (
    .C(clk),
    .D(cnt_SB_DFFSR_Q_D),
    .Q(cnt[5]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR cnt_SB_DFFSR_Q_1 (
    .C(clk),
    .D(cnt_SB_DFFSR_Q_1_D),
    .Q(cnt[4]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hf00f)
  ) cnt_SB_DFFSR_Q_1_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[2]),
    .I3(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[3]),
    .O(cnt_SB_DFFSR_Q_1_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR cnt_SB_DFFSR_Q_2 (
    .C(clk),
    .D(cnt_SB_DFFSR_Q_2_D),
    .Q(cnt[0]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hf00f)
  ) cnt_SB_DFFSR_Q_2_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(cnt[0]),
    .I3(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[3]),
    .O(cnt_SB_DFFSR_Q_2_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hcf4d)
  ) cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3_SB_LUT4_I2 (
    .I0(cnt[0]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .I2(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2]),
    .I3(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[3]),
    .O(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hc4f5)
  ) cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3_SB_LUT4_O (
    .I0(mode_SB_LUT4_I3_O[0]),
    .I1(mode_SB_LUT4_I3_O[1]),
    .I2(mode_SB_LUT4_I3_O[2]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h99a9)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O (
    .I0(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[0]),
    .I1(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[0]),
    .I2(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[2]),
    .I3(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[3]),
    .O(cnt_SB_DFFSR_Q_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hf00f)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(cnt[5]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00fc)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0_SB_LUT4_O_1 (
    .I0(1'h0),
    .I1(cnt[4]),
    .I2(mode_SB_LUT4_I3_O[3]),
    .I3(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[0]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h3330)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0_SB_LUT4_O_2 (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I2_O[3]),
    .I2(mode_SB_LUT4_I0_2_O[1]),
    .I3(mode_SB_LUT4_I0_2_O[2]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h5150)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0 (
    .I0(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[0]),
    .I1(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[0]),
    .I2(mode_SB_LUT4_I0_2_O[1]),
    .I3(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[1]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'ha8ab)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O_SB_LUT4_I1 (
    .I0(mode_SB_LUT4_I3_O[3]),
    .I1(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[1]),
    .I2(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[2]),
    .I3(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[3]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h3ffc)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O_SB_LUT4_O (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hcc3f)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O_SB_LUT4_O_1 (
    .I0(1'h0),
    .I1(cnt[5]),
    .I2(cnt[4]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0c00)
  ) cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_O (
    .I0(1'h0),
    .I1(cnt[4]),
    .I2(mode_SB_LUT4_I3_O[1]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .O(cnt[9])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_1 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .O(cnt[8])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_2 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .O(cnt[7])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_3 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .O(cnt[6])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_4 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .O(cnt[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_5 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .O(cnt[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:12.34-13.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00ff)
  ) cnt_SB_LUT4_O_6 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(1'h0),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .O(cnt[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'he4f5)
  ) mode_SB_LUT4_I0 (
    .I0(mode),
    .I1(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[0]),
    .I2(mode_SB_LUT4_I2_O[2]),
    .I3(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[1]),
    .O(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h2aaa)
  ) mode_SB_LUT4_I0_1 (
    .I0(mode),
    .I1(mode_SB_LUT4_I0_1_I1[1]),
    .I2(mode_SB_LUT4_I0_1_I1[2]),
    .I3(mode_SB_LUT4_I0_1_I1[3]),
    .O(mode_SB_LUT4_I3_O[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h4000)
  ) mode_SB_LUT4_I0_1_I1_SB_LUT4_O (
    .I0(cnt[0]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .O(mode_SB_LUT4_I0_1_I1[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h000f)
  ) mode_SB_LUT4_I0_1_I1_SB_LUT4_O_1 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .O(mode_SB_LUT4_I0_1_I1[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0008)
  ) mode_SB_LUT4_I0_1_I1_SB_LUT4_O_2 (
    .I0(cnt[5]),
    .I1(cnt[4]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .O(mode_SB_LUT4_I0_1_I1[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h5f4c)
  ) mode_SB_LUT4_I0_2 (
    .I0(mode),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .I2(mode_SB_LUT4_I2_O[2]),
    .I3(mode_SB_LUT4_I2_O[3]),
    .O(mode_SB_LUT4_I0_2_O[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0f00)
  ) mode_SB_LUT4_I0_2_O_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[0]),
    .I3(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[1]),
    .O(mode_SB_LUT4_I0_2_O[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h5504)
  ) mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2_SB_LUT4_O (
    .I0(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .I1(mode_SB_LUT4_I3_O[0]),
    .I2(mode_SB_LUT4_I3_O[2]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hc0f0)
  ) mode_SB_LUT4_I1 (
    .I0(1'h0),
    .I1(mode),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .O(mode_SB_LUT4_I1_O[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hcfcc)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1 (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I1_O[0]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[0]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[1]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0ff0)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_I2_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .I3(mode_SB_LUT4_I3_O[3]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_1 (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_1_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h6aa9)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_1_D_SB_LUT4_O (
    .I0(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .I2(mode_SB_LUT4_I3_O[3]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_1_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2 (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h3cc3)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .I2(mode_SB_LUT4_I3_O[3]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h5f07)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3_SB_LUT4_O (
    .I0(cnt[5]),
    .I1(cnt[4]),
    .I2(mode_SB_LUT4_I3_O[3]),
    .I3(cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[3]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_3 (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_3_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hf00f)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_3_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I0_2_O[1]),
    .I3(mode_SB_LUT4_I0_2_O[2]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_3_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_4 (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_4_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hc3f0)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_4_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[3]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .I3(mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[1]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_4_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "counter.v:32.5-38.8|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/ff_map.v:19.59-19.105" *)
  SB_DFFSR mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_5 (
    .C(clk),
    .D(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_5_D),
    .Q(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .R(rst)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h3c96)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_5_D_SB_LUT4_O (
    .I0(cnt[0]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .I2(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[2]),
    .I3(cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[3]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_5_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0ff0)
  ) mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_D_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[0]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_I2[1]),
    .O(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_D)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0f00)
  ) mode_SB_LUT4_I2 (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode),
    .I3(mode_SB_LUT4_I3_O[1]),
    .O(mode_SB_LUT4_I2_O[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hc000)
  ) mode_SB_LUT4_I2_O_SB_LUT4_O (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I0_1_I1[2]),
    .I2(mode_SB_LUT4_I0_1_I1[1]),
    .I3(mode_SB_LUT4_I0_1_I1[3]),
    .O(mode_SB_LUT4_I2_O[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00cf)
  ) mode_SB_LUT4_I3 (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[0]),
    .I2(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[1]),
    .I3(mode),
    .O(mode_SB_LUT4_I3_O[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hc000)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O (
    .I0(1'h0),
    .I1(mode_SB_LUT4_I0_1_I1[1]),
    .I2(mode_SB_LUT4_I3_O_SB_LUT4_O_I2[1]),
    .I3(mode_SB_LUT4_I0_1_I1[3]),
    .O(mode_SB_LUT4_I3_O[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h2a22)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1 (
    .I0(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .I2(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2[2]),
    .I3(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2[3]),
    .O(mode_SB_LUT4_I3_O[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h5010)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O (
    .I0(cnt[4]),
    .I1(cnt[0]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0002)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1 (
    .I0(cnt[5]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .I3(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3[3]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0323)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3 (
    .I0(cnt[5]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .I2(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2[2]),
    .I3(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3[3]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[0])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'hf000)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h4555)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O (
    .I0(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8]),
    .I2(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2[2]),
    .I3(cnt[5]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[1])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:17.34-18.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h00f0)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2_SB_LUT4_O (
    .I0(1'h0),
    .I1(1'h0),
    .I2(cnt[0]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2[2])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:22.34-23.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h3000)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_O (
    .I0(1'h0),
    .I1(cnt[4]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3[3])
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/ice40/cells_map.v:26.33-27.52" *)
  SB_LUT4 #(
    .LUT_INIT(16'h0001)
  ) mode_SB_LUT4_I3_O_SB_LUT4_O_I2_SB_LUT4_O (
    .I0(cnt[0]),
    .I1(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3]),
    .I2(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[2]),
    .I3(mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1]),
    .O(mode_SB_LUT4_I3_O_SB_LUT4_O_I2[1])
  );
  assign { mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2[3], mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_I2[1:0] } = { mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3[3], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8], cnt[5] };
  assign mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[1:0] = { mode_SB_LUT4_I3_O[3], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6] };
  assign cnt_SB_DFFSR_Q_2_D_SB_LUT4_O_I3[1:0] = { mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[1], cnt[0] };
  assign cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[3:1] = { mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[1], mode_SB_LUT4_I0_2_O[1], mode_SB_LUT4_I0_2_O_SB_LUT4_O_I2[0] };
  assign mode_SB_LUT4_I0_2_O[0] = mode_SB_LUT4_I2_O[3];
  assign mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2[1:0] = { mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9] };
  assign mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O[2] = mode;
  assign mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3[2:0] = { mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[6], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[7], cnt[5] };
  assign cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1_SB_LUT4_I0_O[0] = mode_SB_LUT4_I3_O[3];
  assign { mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2[3], mode_SB_LUT4_I3_O_SB_LUT4_O_1_I2_SB_LUT4_O_1_I3_SB_LUT4_I3_O_SB_LUT4_O_I2[1:0] } = { cnt[5], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[8], mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[9] };
  assign mode_SB_LUT4_I2_O[1:0] = { mode_SB_LUT4_I1_O_SB_LUT4_I1_O_SB_DFFSR_D_Q[3], mode };
  assign { mode_SB_LUT4_I3_O_SB_LUT4_O_I2[2], mode_SB_LUT4_I3_O_SB_LUT4_O_I2[0] } = { mode_SB_LUT4_I0_1_I1[3], mode_SB_LUT4_I0_1_I1[1] };
  assign cnt_SB_DFFSR_Q_D_SB_LUT4_O_I0[1] = cnt_SB_DFFSR_Q_D_SB_LUT4_O_I1[0];
  assign mode_SB_LUT4_I1_O[2:1] = mode_SB_LUT4_I1_O_SB_LUT4_I1_I2;
  assign mode_SB_LUT4_I0_1_I1[0] = mode;
  assign summand[8:5] = { summand[9], summand[9], summand[9], summand[9] };
endmodule
