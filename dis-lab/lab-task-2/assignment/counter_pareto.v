/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* cells_not_processed =  1  *)
(* src = "counter.v:1.1-51.10" *)
module counter(clk, rst, mode, limit, skip, cnt);
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _00_;
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _01_;
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _02_;
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _03_;
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _04_;
  (* src = "counter.v:12.5-32.8" *)
  wire [9:0] _05_;
  (* src = "counter.v:38.20-38.33" *)
  wire [9:0] _06_;
  (* src = "counter.v:39.17-39.34" *)
  wire _07_;
  (* src = "counter.v:44.17-44.35" *)
  wire _08_;
  (* src = "counter.v:44.39-44.58" *)
  wire _09_;
  (* src = "counter.v:44.17-44.58" *)
  wire _10_;
  (* src = "counter.v:15.17-15.32" *)
  wire _11_;
  (* src = "counter.v:24.17-24.31" *)
  wire _12_;
  wire _13_;
  wire _14_;
  (* src = "counter.v:3.17-3.20" *)
  input clk;
  wire clk;
  (* src = "counter.v:8.29-8.32" *)
  output [9:0] cnt;
  reg [9:0] cnt = 10'h3ce;
  (* src = "counter.v:6.16-6.21" *)
  output limit;
  reg limit = 1'h1;
  (* src = "counter.v:5.17-5.21" *)
  input mode;
  wire mode;
  (* src = "counter.v:4.17-4.20" *)
  input rst;
  wire rst;
  (* src = "counter.v:7.16-7.20" *)
  output skip;
  reg skip = 1'h1;
  (* src = "counter.v:10.22-10.29" *)
  wire [9:0] summand;
  assign _06_ = $signed(cnt) + (* src = "counter.v:38.20-38.33" *) $signed({ summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] });
  (* src = "counter.v:34.5-50.8" *)
  always @(posedge clk)
    if (rst) cnt <= 10'h3ce;
    else cnt <= _06_;
  (* src = "counter.v:34.5-50.8" *)
  always @(posedge clk)
    if (!rst) skip <= _13_;
  (* src = "counter.v:34.5-50.8" *)
  always @(posedge clk)
    if (!rst) limit <= _14_;
  assign _07_ = ! (* src = "counter.v:39.17-39.34" *) $signed({ summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] });
  assign _08_ = $signed({ summand[9], summand[4:0] }) == (* src = "counter.v:44.17-44.35" *) $signed(6'h0a);
  assign _09_ = $signed({ summand[9], summand[4:0] }) == (* src = "counter.v:44.39-44.58" *) $signed(6'h2e);
  assign _04_[9] = $signed(cnt) >= (* src = "counter.v:25.21-25.37" *) $signed(10'h323);
  assign _05_[9] = $signed(cnt) >= (* src = "counter.v:28.26-28.42" *) $signed(10'h32c);
  assign _01_[2] = $signed(cnt) <= (* src = "counter.v:16.21-16.36" *) $signed(10'h0e6);
  assign _02_[3] = $signed(cnt) <= (* src = "counter.v:19.26-19.41" *) $signed(10'h0e1);
  assign _10_ = _08_ || (* src = "counter.v:44.17-44.58" *) _09_;
  assign _11_ = $signed(cnt) != (* src = "counter.v:15.17-15.32" *) $signed(10'h3f0);
  assign _12_ = $signed(cnt) != (* src = "counter.v:24.17-24.31" *) $signed(10'h3fe);
  assign _13_ = ~ (* full_case = 32'd1 *) (* src = "counter.v:44.17-44.58|counter.v:44.13-48.16" *) _10_;
  assign _14_ = ~ (* full_case = 32'd1 *) (* src = "counter.v:39.17-39.34|counter.v:39.13-43.16" *) _07_;
  assign { _03_[3], _03_[9], _03_[4] } = _12_ ? (* full_case = 32'd1 *) (* src = "counter.v:24.17-24.31|counter.v:24.13-30.16" *) { 1'h0, _04_[9], _04_[9] } : { _05_[9], _05_[9], 1'h0 };
  assign _00_[3:2] = _11_ ? (* full_case = 32'd1 *) (* src = "counter.v:15.17-15.32|counter.v:15.13-21.16" *) { 1'h0, _01_[2] } : { _02_[3], 1'h0 };
  assign { summand[9], summand[4:0] } = mode ? (* full_case = 32'd1 *) (* src = "counter.v:14.13-14.17|counter.v:14.9-31.12" *) { 2'h0, _00_[3:2], _00_[3:2] } : { _03_[9], _03_[4:3], _03_[9], _03_[9], _03_[4] };
  assign { _00_[9:4], _00_[1:0] } = { 6'h00, _00_[3:2] };
  assign { _01_[9:3], _01_[1:0] } = { 8'h00, _01_[2] };
  assign { _02_[9:4], _02_[2:0] } = { 7'h00, _02_[3], 1'h0 };
  assign { _03_[8:5], _03_[2:0] } = { _03_[9], _03_[9], _03_[9], _03_[9], _03_[9], _03_[9], _03_[4] };
  assign _04_[8:0] = { _04_[9], _04_[9], _04_[9], _04_[9], _04_[9], 1'h0, _04_[9], _04_[9], _04_[9] };
  assign _05_[8:0] = { _05_[9], _05_[9], _05_[9], _05_[9], 1'h0, _05_[9], _05_[9], _05_[9], 1'h0 };
  assign summand[8:5] = { summand[9], summand[9], summand[9], summand[9] };
endmodule
