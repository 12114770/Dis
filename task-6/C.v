/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* cells_not_processed =  1  *)
(* src = "counter.v:1.1-39.10" *)
module counter(clk, rst, mode, cnt);
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _00_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _01_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _02_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _03_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _04_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _05_;
  (* src = "counter.v:36.20-36.33|map.v:15.22-15.23" *)
  (* unused_bits = "10" *)
  wire [10:0] _06_;
  (* src = "counter.v:36.20-36.33|map.v:13.22-13.23" *)
  (* unused_bits = "9" *)
  wire [10:0] _07_;
  (* src = "counter.v:36.20-36.33|map.v:14.22-14.23" *)
  wire [10:0] _08_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [1:0] _09_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [2:0] _10_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [3:0] _11_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [4:0] _12_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [5:0] _13_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [6:0] _14_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [7:0] _15_;
  (* src = "counter.v:36.20-36.33|map.v:25.26-25.37" *)
  wire [8:0] _16_;
  (* src = "counter.v:36.20-36.33" *)
  wire [9:0] _17_;
  (* src = "counter.v:13.17-13.32" *)
  wire _18_;
  (* src = "counter.v:22.17-22.31" *)
  wire _19_;
  (* src = "counter.v:3.17-3.20" *)
  input clk;
  wire clk;
  (* init = 10'h3ce *)
  (* src = "counter.v:6.29-6.32" *)
  output [9:0] cnt;
  wire [9:0] cnt;
  (* src = "counter.v:5.17-5.21" *)
  input mode;
  wire mode;
  (* src = "counter.v:4.17-4.20" *)
  input rst;
  wire rst;
  (* src = "counter.v:8.22-8.29" *)
  wire [9:0] summand;
  (* src = "counter.v:32.5-38.8" *)
  \$sdff  #(
    .CLK_POLARITY(32'd1),
    .SRST_POLARITY(32'd1),
    .SRST_VALUE(10'h3ce),
    .WIDTH(32'd10)
  ) _20_ (
    .CLK(clk),
    .D({ _17_[9:1], _08_[0] }),
    .Q(cnt),
    .SRST(rst)
  );
  \$and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd10)
  ) _21_ (
    .A(cnt),
    .B({ summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] }),
    .Y({ _07_[9:1], _06_[1] })
  );
  \$xor  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd10)
  ) _22_ (
    .A(cnt),
    .B({ summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] }),
    .Y(_08_[9:0])
  );
  (* src = "counter.v:23.21-23.37" *)
  \$ge  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _23_ (
    .A(cnt),
    .B(10'h323),
    .Y(_04_[9])
  );
  (* src = "counter.v:26.26-26.42" *)
  \$ge  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _24_ (
    .A(cnt),
    .B(10'h32c),
    .Y(_05_[9])
  );
  (* src = "counter.v:14.21-14.36" *)
  \$le  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _25_ (
    .A(cnt),
    .B(10'h0e6),
    .Y(_01_[2])
  );
  (* src = "counter.v:17.26-17.41" *)
  \$le  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _26_ (
    .A(cnt),
    .B(10'h0e1),
    .Y(_02_[3])
  );
  (* src = "counter.v:13.17-13.32" *)
  \$ne  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _27_ (
    .A(cnt),
    .B(10'h3f0),
    .Y(_18_)
  );
  (* src = "counter.v:22.17-22.31" *)
  \$ne  #(
    .A_SIGNED(32'd1),
    .A_WIDTH(32'd10),
    .B_SIGNED(32'd1),
    .B_WIDTH(32'd10),
    .Y_WIDTH(32'd1)
  ) _28_ (
    .A(cnt),
    .B(10'h3fe),
    .Y(_19_)
  );
  (* full_case = 32'd1 *)
  (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *)
  \$mux  #(
    .WIDTH(32'd3)
  ) _29_ (
    .A({ _05_[9], _05_[9], 1'h0 }),
    .B({ 1'h0, _04_[9], _04_[9] }),
    .S(_19_),
    .Y({ _03_[3], _03_[9], _03_[4] })
  );
  (* full_case = 32'd1 *)
  (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *)
  \$mux  #(
    .WIDTH(32'd2)
  ) _30_ (
    .A({ _02_[3], 1'h0 }),
    .B({ 1'h0, _01_[2] }),
    .S(_18_),
    .Y(_00_[3:2])
  );
  (* full_case = 32'd1 *)
  (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *)
  \$mux  #(
    .WIDTH(32'd6)
  ) _31_ (
    .A({ _03_[9], _03_[4:3], _03_[9], _03_[9], _03_[4] }),
    .B({ 2'h0, _00_[3:2], _00_[3:2] }),
    .S(mode),
    .Y({ summand[9], summand[4:0] })
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _32_ (
    .A({ _08_[1], _06_[1] }),
    .Y(_09_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _33_ (
    .A({ _08_[2:1], _06_[1] }),
    .Y(_10_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _34_ (
    .A({ _07_[1], _08_[2] }),
    .Y(_10_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _35_ (
    .A({ _08_[3:1], _06_[1] }),
    .Y(_11_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _36_ (
    .A({ _07_[1], _08_[3:2] }),
    .Y(_11_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _37_ (
    .A({ _07_[2], _08_[3] }),
    .Y(_11_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _38_ (
    .A({ _08_[4:1], _06_[1] }),
    .Y(_12_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _39_ (
    .A({ _07_[1], _08_[4:2] }),
    .Y(_12_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _40_ (
    .A({ _07_[2], _08_[4:3] }),
    .Y(_12_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _41_ (
    .A({ _07_[3], _08_[4] }),
    .Y(_12_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd6),
    .Y_WIDTH(32'd1)
  ) _42_ (
    .A({ _08_[5:1], _06_[1] }),
    .Y(_13_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _43_ (
    .A({ _07_[1], _08_[5:2] }),
    .Y(_13_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _44_ (
    .A({ _07_[2], _08_[5:3] }),
    .Y(_13_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _45_ (
    .A({ _07_[3], _08_[5:4] }),
    .Y(_13_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _46_ (
    .A({ _07_[4], _08_[5] }),
    .Y(_13_[4])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd7),
    .Y_WIDTH(32'd1)
  ) _47_ (
    .A({ _08_[6:1], _06_[1] }),
    .Y(_14_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd6),
    .Y_WIDTH(32'd1)
  ) _48_ (
    .A({ _07_[1], _08_[6:2] }),
    .Y(_14_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _49_ (
    .A({ _07_[2], _08_[6:3] }),
    .Y(_14_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _50_ (
    .A({ _07_[3], _08_[6:4] }),
    .Y(_14_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _51_ (
    .A({ _07_[4], _08_[6:5] }),
    .Y(_14_[4])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _52_ (
    .A({ _07_[5], _08_[6] }),
    .Y(_14_[5])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd8),
    .Y_WIDTH(32'd1)
  ) _53_ (
    .A({ _08_[7:1], _06_[1] }),
    .Y(_15_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd7),
    .Y_WIDTH(32'd1)
  ) _54_ (
    .A({ _07_[1], _08_[7:2] }),
    .Y(_15_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd6),
    .Y_WIDTH(32'd1)
  ) _55_ (
    .A({ _07_[2], _08_[7:3] }),
    .Y(_15_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _56_ (
    .A({ _07_[3], _08_[7:4] }),
    .Y(_15_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _57_ (
    .A({ _07_[4], _08_[7:5] }),
    .Y(_15_[4])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _58_ (
    .A({ _07_[5], _08_[7:6] }),
    .Y(_15_[5])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _59_ (
    .A({ _07_[6], _08_[7] }),
    .Y(_15_[6])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd9),
    .Y_WIDTH(32'd1)
  ) _60_ (
    .A({ _08_[8:1], _06_[1] }),
    .Y(_16_[0])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd8),
    .Y_WIDTH(32'd1)
  ) _61_ (
    .A({ _07_[1], _08_[8:2] }),
    .Y(_16_[1])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd7),
    .Y_WIDTH(32'd1)
  ) _62_ (
    .A({ _07_[2], _08_[8:3] }),
    .Y(_16_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd6),
    .Y_WIDTH(32'd1)
  ) _63_ (
    .A({ _07_[3], _08_[8:4] }),
    .Y(_16_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _64_ (
    .A({ _07_[4], _08_[8:5] }),
    .Y(_16_[4])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _65_ (
    .A({ _07_[5], _08_[8:6] }),
    .Y(_16_[5])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _66_ (
    .A({ _07_[6], _08_[8:7] }),
    .Y(_16_[6])
  );
  (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *)
  \$reduce_and  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _67_ (
    .A({ _07_[7], _08_[8] }),
    .Y(_16_[7])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd2),
    .Y_WIDTH(32'd1)
  ) _68_ (
    .A({ _07_[1], _09_[0] }),
    .Y(_06_[2])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd3),
    .Y_WIDTH(32'd1)
  ) _69_ (
    .A({ _07_[2], _10_[1:0] }),
    .Y(_06_[3])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd4),
    .Y_WIDTH(32'd1)
  ) _70_ (
    .A({ _07_[3], _11_[2:0] }),
    .Y(_06_[4])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd5),
    .Y_WIDTH(32'd1)
  ) _71_ (
    .A({ _07_[4], _12_[3:0] }),
    .Y(_06_[5])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd6),
    .Y_WIDTH(32'd1)
  ) _72_ (
    .A({ _07_[5], _13_[4:0] }),
    .Y(_06_[6])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd7),
    .Y_WIDTH(32'd1)
  ) _73_ (
    .A({ _07_[6], _14_[5:0] }),
    .Y(_06_[7])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd8),
    .Y_WIDTH(32'd1)
  ) _74_ (
    .A({ _07_[7], _15_[6:0] }),
    .Y(_06_[8])
  );
  (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *)
  \$reduce_or  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd9),
    .Y_WIDTH(32'd1)
  ) _75_ (
    .A({ _07_[8], _16_[7:0] }),
    .Y(_06_[9])
  );
  (* src = "counter.v:36.20-36.33|map.v:44.29-44.60" *)
  \$xor  #(
    .A_SIGNED(32'd0),
    .A_WIDTH(32'd9),
    .B_SIGNED(32'd0),
    .B_WIDTH(32'd9),
    .Y_WIDTH(32'd9)
  ) _76_ (
    .A(_08_[9:1]),
    .B(_06_[9:1]),
    .Y(_17_[9:1])
  );
  assign { _00_[9:4], _00_[1:0] } = { 6'h00, _00_[3:2] };
  assign { _01_[9:3], _01_[1:0] } = { 8'h00, _01_[2] };
  assign { _02_[9:4], _02_[2:0] } = { 7'h00, _02_[3], 1'h0 };
  assign { _03_[8:5], _03_[2:0] } = { _03_[9], _03_[9], _03_[9], _03_[9], _03_[9], _03_[9], _03_[4] };
  assign _04_[8:0] = { _04_[9], _04_[9], _04_[9], _04_[9], _04_[9], 1'h0, _04_[9], _04_[9], _04_[9] };
  assign _05_[8:0] = { _05_[9], _05_[9], _05_[9], _05_[9], 1'h0, _05_[9], _05_[9], _05_[9], 1'h0 };
  assign _06_[0] = 1'hx;
  assign { _07_[10], _07_[0] } = { 1'h0, _06_[1] };
  assign _08_[10] = 1'h0;
  assign _09_[1] = _07_[1];
  assign _10_[2] = _07_[2];
  assign _11_[3] = _07_[3];
  assign _12_[4] = _07_[4];
  assign _13_[5] = _07_[5];
  assign _14_[6] = _07_[6];
  assign _15_[7] = _07_[7];
  assign _16_[8] = _07_[8];
  assign _17_[0] = _08_[0];
  assign summand[8:5] = { summand[9], summand[9], summand[9], summand[9] };
endmodule
