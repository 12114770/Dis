/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* top =  1  *)
(* cells_not_processed =  1  *)
(* src = "counter.v:1.1-95.10" *)
module counter_buggy(clk, rst, mode, cnt);
  (* src = "counter_opt.v:63.3-65.40" *)
  wire [9:0] _20_;
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
  (* src = "counter.v:6.29-6.32" *)
  output [9:0] cnt;
  reg [9:0] cnt = 10'h3ce;
  (* src = "counter.v:5.17-5.21" *)
  input mode;
  wire mode;
  (* src = "counter.v:4.17-4.20" *)
  input rst;
  wire rst;
  (* src = "counter.v:8.22-8.29" *)
  wire [9:0] summand;
  assign { _07_[9:1], _06_[1] } = cnt & (* src = "counter_opt.v:66.35-66.117" *) { summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] };
  assign _04_[9] = $signed(cnt) >= (* src = "counter.v:23.21-23.37" *) $signed(10'h323);
  assign _05_[9] = $signed(cnt) >= (* src = "counter.v:26.26-26.42" *) $signed(10'h32c);
  assign _01_[2] = $signed(cnt) <= (* src = "counter.v:14.21-14.36" *) $signed(10'h0e6);
  assign _02_[3] = $signed(cnt) <= (* src = "counter.v:17.26-17.41" *) $signed(10'h0e1);
  assign _18_ = $signed(cnt) != (* src = "counter.v:13.17-13.32" *) $signed(10'h3f0);
  assign _19_ = $signed(cnt) != (* src = "counter.v:22.17-22.31" *) $signed(10'h3fe);
  (* src = "counter.v:32.5-38.8" *)
  always @(posedge clk)
    cnt <= _20_;
  assign _20_ = rst ? (* full_case = 32'd1 *) (* src = "counter_opt.v:64.9-64.12|counter_opt.v:64.5-65.40" *) 10'h3ce : { _17_[9:1], _08_[0] };
  assign _15_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[7:3] };
  assign _15_[3] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[3], _08_[7:4] };
  assign _15_[4] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[4], _08_[7:5] };
  assign _15_[5] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[5], _08_[7:6] };
  assign _15_[6] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[6], _08_[7] };
  assign _16_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[8:1], _06_[1] };
  assign _16_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[8:2] };
  assign _16_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[8:3] };
  assign _16_[3] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[3], _08_[8:4] };
  assign _16_[4] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[4], _08_[8:5] };
  assign _16_[5] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[5], _08_[8:6] };
  assign _16_[6] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[6], _08_[8:7] };
  assign _16_[7] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[7], _08_[8] };
  assign _09_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[1], _06_[1] };
  assign _10_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[2:1], _06_[1] };
  assign _10_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[2] };
  assign _11_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[3:1], _06_[1] };
  assign _11_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[3:2] };
  assign _11_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[3] };
  assign _12_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[4:1], _06_[1] };
  assign _12_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[4:2] };
  assign _12_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[4:3] };
  assign _12_[3] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[3], _08_[4] };
  assign _13_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[5:1], _06_[1] };
  assign _13_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[5:2] };
  assign _13_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[5:3] };
  assign _13_[3] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[3], _08_[5:4] };
  assign _13_[4] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[4], _08_[5] };
  assign _14_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[6:1], _06_[1] };
  assign _14_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[6:2] };
  assign _14_[2] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[2], _08_[6:3] };
  assign _14_[3] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[3], _08_[6:4] };
  assign _14_[4] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[4], _08_[6:5] };
  assign _14_[5] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[5], _08_[6] };
  assign _15_[0] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _08_[7:1], _06_[1] };
  assign _15_[1] = & (* src = "counter.v:36.20-36.33|map.v:30.41-30.50" *) { _07_[1], _08_[7:2] };
  assign _06_[2] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[1], _09_[0] };
  assign _06_[3] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[2], _10_[1:0] };
  assign _06_[4] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[3], _11_[2:0] };
  assign _06_[5] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[4], _12_[3:0] };
  assign _06_[6] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[5], _13_[4:0] };
  assign _06_[7] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[6], _14_[5:0] };
  assign _06_[8] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[7], _15_[6:0] };
  assign _06_[9] = | (* src = "counter.v:36.20-36.33|map.v:26.27-26.39" *) { _07_[8], _16_[7:0] };
  assign { _03_[3], _03_[9], _03_[4] } = _19_ ? (* full_case = 32'd1 *) (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) { 1'h0, _04_[9], _04_[9] } : { _05_[9], _05_[9], 1'h0 };
  assign _00_[3:2] = _18_ ? (* full_case = 32'd1 *) (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) { 1'h0, _01_[2] } : { _02_[3], 1'h0 };
  assign { summand[9], summand[4:0] } = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) { 2'h0, _00_[3:2], _00_[3:2] } : { _03_[9], _03_[4:3], _03_[9], _03_[9], _03_[4] };
  assign _17_[9:1] = _08_[9:1] ^ (* src = "counter.v:36.20-36.33|map.v:44.29-44.60" *) _06_[9:1];
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
