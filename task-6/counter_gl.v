/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* cells_not_processed =  1  *)
(* src = "counter.v:1.1-39.10" *)
module counter(clk, rst, mode, cnt);
  (* src = "counter.v:36.20-36.33" *)
  wire [9:0] _00_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8" *)
  wire [9:0] _01_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8" *)
  wire [9:0] _02_;
  (* src = "counter.v:22.17-22.31" *)
  wire _03_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 3 4 5 6 7 8 9" *)
  wire [9:0] _04_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 4 5 6 7 8 9" *)
  wire [9:0] _05_;
  (* src = "counter.v:13.17-13.32" *)
  wire _06_;
  (* src = "counter.v:3.17-3.20" *)
  input clk;
  wire clk;
  (* src = "counter.v:6.29-6.32" *)
  output [9:0] cnt;
  reg [9:0] cnt = 10'h3ce;
  (* hdlname = "decrement cnt" *)
  (* src = "counter.v:6.29-6.32" *)
  wire [9:0] \decrement.cnt ;
  (* hdlname = "decrement n1" *)
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] \decrement.n1 ;
  (* hdlname = "increment cnt" *)
  (* src = "counter.v:6.29-6.32" *)
  wire [9:0] \increment.cnt ;
  (* hdlname = "increment n1" *)
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] \increment.n1 ;
  (* src = "counter.v:5.17-5.21" *)
  input mode;
  wire mode;
  (* src = "counter.v:4.17-4.20" *)
  input rst;
  wire rst;
  (* src = "counter.v:8.22-8.29" *)
  wire [9:0] summand;
  assign _00_ = $signed(cnt) + (* src = "counter.v:36.20-36.33" *) $signed({ summand[9], summand[9], summand[9], summand[9], summand[9], summand[4:0] });
  (* src = "counter.v:32.5-38.8" *)
  always @(posedge clk)
    if (rst) cnt <= 10'h3ce;
    else cnt <= _00_;
  assign _01_[9] = $signed(cnt) >= (* src = "counter.v:23.21-23.37" *) $signed(10'h323);
  assign _02_[9] = $signed(cnt) >= (* src = "counter.v:26.26-26.42" *) $signed(10'h32c);
  assign _03_ = $signed(cnt) != (* src = "counter.v:22.17-22.31" *) $signed(10'h3fe);
  assign { \decrement.n1 [3], \decrement.n1 [9], \decrement.n1 [4] } = _03_ ? (* full_case = 32'd1 *) (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) { 1'h0, _01_[9], _01_[9] } : { _02_[9], _02_[9], 1'h0 };
  assign _04_[2] = $signed(cnt) <= (* src = "counter.v:14.21-14.36" *) $signed(10'h0e6);
  assign _05_[3] = $signed(cnt) <= (* src = "counter.v:17.26-17.41" *) $signed(10'h0e1);
  assign _06_ = $signed(cnt) != (* src = "counter.v:13.17-13.32" *) $signed(10'h3f0);
  assign \increment.n1 [3:2] = _06_ ? (* full_case = 32'd1 *) (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) { 1'h0, _04_[2] } : { _05_[3], 1'h0 };
  assign { summand[9], summand[4:0] } = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) { 2'h0, \increment.n1 [3:2], \increment.n1 [3:2] } : { \decrement.n1 [9], \decrement.n1 [4:3], \decrement.n1 [9], \decrement.n1 [9], \decrement.n1 [4] };
  assign \decrement.cnt  = cnt;
  assign { \decrement.n1 [8:5], \decrement.n1 [2:0] } = 7'hxx;
  assign \increment.cnt  = cnt;
  assign { \increment.n1 [9:4], \increment.n1 [1:0] } = 8'hxx;
  assign summand[8:5] = { summand[9], summand[9], summand[9], summand[9] };
endmodule

module decrement(cnt, n1);
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8" *)
  wire [9:0] _00_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8" *)
  wire [9:0] _01_;
  wire [4:0] _02_;
  wire [1:0] _03_;
  wire _04_;
  wire [4:0] _05_;
  wire [1:0] _06_;
  wire _07_;
  wire [4:0] _08_;
  wire [1:0] _09_;
  wire _10_;
  (* src = "counter.v:22.17-22.31" *)
  wire _11_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.21-279.23" *)
  wire [9:0] _12_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "4 5 6" *)
  wire [9:0] _13_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "3 4 5 6 7 8" *)
  wire [9:0] _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "2 4 5 6" *)
  wire [9:0] _18_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "1 2 3 4 5 6 7 8" *)
  wire [9:0] _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _23_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _24_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _25_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)
  wire _26_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)
  wire _27_;
  (* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)
  wire _28_;
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _29_;
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _30_;
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)
  wire _31_;
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)
  wire _32_;
  (* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)
  wire _33_;
  (* init = 10'h3ce *)
  (* src = "counter.v:6.29-6.32" *)
  input [9:0] cnt;
  wire [9:0] cnt;
  (* src = "counter.v:10.5-30.8" *)
  output [9:0] n1;
  wire [9:0] n1;
  assign _02_[0] = cnt[0] |(* src = "counter.v:22.17-22.31" *)  _12_[1];
  assign _02_[1] = _12_[2] |(* src = "counter.v:22.17-22.31" *)  _12_[3];
  assign _02_[2] = _12_[4] |(* src = "counter.v:22.17-22.31" *)  _12_[5];
  assign _02_[3] = _12_[6] |(* src = "counter.v:22.17-22.31" *)  _12_[7];
  assign _02_[4] = _12_[8] |(* src = "counter.v:22.17-22.31" *)  _12_[9];
  assign _03_[0] = _02_[0] |(* src = "counter.v:22.17-22.31" *)  _02_[1];
  assign _03_[1] = _02_[2] |(* src = "counter.v:22.17-22.31" *)  _02_[3];
  assign _04_ = _03_[0] |(* src = "counter.v:22.17-22.31" *)  _03_[1];
  assign _11_ = _04_ |(* src = "counter.v:22.17-22.31" *)  _02_[4];
  assign _01_[9] = _22_ |(* src = {0{1'b0}} *)  _20_;
  assign _05_[0] = cnt[0] &(* src = "counter.v:23.21-23.37" *)  cnt[1];
  assign _06_[0] = _05_[0] &(* src = "counter.v:23.21-23.37" *)  _13_[3];
  assign _07_ = _06_[0] &(* src = "counter.v:23.21-23.37" *)  _06_[1];
  assign _15_ = _07_ &(* src = "counter.v:23.21-23.37" *)  _05_[4];
  assign _00_[9] = _17_ |(* src = {0{1'b0}} *)  _15_;
  assign _09_[0] = _18_[1] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37" *)  _08_[1];
  assign _10_ = _09_[0] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37" *)  _06_[1];
  assign _20_ = _10_ &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37" *)  _05_[4];
  assign n1[4] = _11_ &(* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *)  _00_[9];
  assign n1[9] = _11_ ? (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) _00_[9] : _01_[9];
  assign n1[3] = _11_ ? (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) 1'h0 : _01_[9];
  assign _12_[0] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[0];
  assign _12_[2] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[2];
  assign _12_[3] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[3];
  assign _12_[4] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[4];
  assign _12_[6] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[6];
  assign _12_[7] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[7];
  assign _12_[9] = ~(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[9];
  assign _12_[1] = ~(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[1];
  assign _12_[5] = ~(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[5];
  assign _12_[8] = ~(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[8];
  assign _21_ = _18_[9] ^(* src = {0{1'b0}} *)  _18_[8];
  assign _22_ = _21_ ^(* src = {0{1'b0}} *)  _19_[9];
  assign _17_ = _16_ ^(* src = {0{1'b0}} *)  _14_[9];
  assign _16_ = _13_[9] ^(* src = {0{1'b0}} *)  _13_[8];
  assign _19_[9] = cnt[9] ^(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:289.13-289.25" *)  _18_[8];
  assign _14_[9] = cnt[9] ^(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:289.13-289.25" *)  _13_[8];
  assign _18_[1] = _12_[1] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[0];
  assign _29_ = cnt[3] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[2];
  assign _23_ = cnt[9] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[8];
  assign _24_ = _05_[3] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[5];
  assign _30_ = _06_[1] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _18_[3];
  assign _08_[1] = cnt[3] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  cnt[2];
  assign _05_[4] = cnt[9] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  cnt[8];
  assign _31_ = _05_[4] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _18_[7];
  assign _32_ = cnt[8] &(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _18_[7];
  assign _33_ = _12_[3] |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _29_;
  assign _28_ = _12_[9] |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _23_;
  assign _18_[3] = _33_ |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _09_[0];
  assign _18_[7] = _24_ |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _30_;
  assign _18_[9] = _28_ |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.12-248.41" *)  _31_;
  assign _18_[8] = _12_[8] |(* src = "counter.v:26.26-26.42|counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.12-248.41" *)  _32_;
  assign _25_ = _06_[1] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _13_[3];
  assign _13_[3] = _12_[3] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  _12_[2];
  assign _05_[2] = cnt[5] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  _12_[4];
  assign _05_[3] = _12_[7] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  _12_[6];
  assign _06_[1] = _05_[3] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  _05_[2];
  assign _26_ = _05_[4] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _13_[7];
  assign _27_ = cnt[8] &(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _13_[7];
  assign _13_[7] = _24_ |(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _25_;
  assign _13_[9] = _28_ |(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.12-248.41" *)  _26_;
  assign _13_[8] = _12_[8] |(* src = "counter.v:23.21-23.37|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.12-248.41" *)  _27_;
  assign _05_[1] = _13_[3];
  assign { _08_[4:2], _08_[0] } = { _05_[4:2], _18_[1] };
  assign _09_[1] = _06_[1];
  assign _13_[2:0] = { _12_[2], 2'h3 };
  assign _14_[2:0] = { cnt[2], _12_[1:0] };
  assign _18_[0] = _12_[0];
  assign _19_[0] = cnt[0];
  assign { n1[8:5], n1[2:0] } = 7'hxx;
endmodule

module increment(cnt, n1);
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 3 4 5 6 7 8 9" *)
  wire [9:0] _00_;
  (* src = "counter.v:10.5-30.8" *)
  (* unused_bits = "0 1 2 4 5 6 7 8 9" *)
  wire [9:0] _01_;
  wire [4:0] _02_;
  wire [1:0] _03_;
  wire _04_;
  wire [4:0] _05_;
  wire [1:0] _06_;
  wire _07_;
  wire [4:0] _08_;
  wire [1:0] _09_;
  wire _10_;
  (* src = "counter.v:13.17-13.32" *)
  wire _11_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.21-279.23" *)
  wire [9:0] _12_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "2 4 5 6" *)
  wire [9:0] _13_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "1 2 3 4 5 6 7 8" *)
  wire [9:0] _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:274.23-274.25" *)
  (* unused_bits = "2 4 5 6" *)
  wire [9:0] _20_;
  (* force_downto = 32'd1 *)
  (* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:270.26-270.27" *)
  (* unused_bits = "2 3 4 5 6 7 8" *)
  wire [9:0] _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _27_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _28_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _29_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _30_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)
  wire _31_;
  (* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)
  wire _32_;
  (* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)
  wire _33_;
  (* init = 10'h3ce *)
  (* src = "counter.v:6.29-6.32" *)
  input [9:0] cnt;
  wire [9:0] cnt;
  (* src = "counter.v:10.5-30.8" *)
  output [9:0] n1;
  wire [9:0] n1;
  assign _12_[0] = ~cnt[0];
  assign _02_[0] = cnt[0] |(* src = "counter.v:13.17-13.32" *)  cnt[1];
  assign _02_[1] = cnt[2] |(* src = "counter.v:13.17-13.32" *)  cnt[3];
  assign _02_[2] = _12_[4] |(* src = "counter.v:13.17-13.32" *)  _12_[5];
  assign _02_[3] = _12_[6] |(* src = "counter.v:13.17-13.32" *)  _12_[7];
  assign _02_[4] = _12_[8] |(* src = "counter.v:13.17-13.32" *)  _12_[9];
  assign _03_[0] = _02_[0] |(* src = "counter.v:13.17-13.32" *)  _02_[1];
  assign _03_[1] = _02_[2] |(* src = "counter.v:13.17-13.32" *)  _02_[3];
  assign _04_ = _03_[0] |(* src = "counter.v:13.17-13.32" *)  _03_[1];
  assign _11_ = _04_ |(* src = "counter.v:13.17-13.32" *)  _02_[4];
  assign _06_[0] = _05_[0] &(* src = "counter.v:14.21-14.36" *)  _05_[1];
  assign _07_ = _06_[0] &(* src = "counter.v:14.21-14.36" *)  _06_[1];
  assign _16_ = _07_ &(* src = "counter.v:14.21-14.36" *)  _05_[4];
  assign _00_[2] = _15_ |(* src = {0{1'b0}} *)  _16_;
  assign _08_[0] = cnt[0] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _12_[1];
  assign _05_[4] = _12_[8] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _12_[9];
  assign _09_[0] = _08_[0] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _08_[1];
  assign _06_[1] = _05_[2] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _05_[3];
  assign _10_ = _09_[0] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _06_[1];
  assign _23_ = _10_ &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *)  _05_[4];
  assign _01_[3] = _22_ |(* src = {0{1'b0}} *)  _23_;
  assign n1[2] = _11_ &(* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *)  _00_[2];
  assign n1[3] = _11_ ? (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) 1'h0 : _01_[3];
  assign _15_ = ~(* src = "counter.v:14.21-14.36" *) _17_;
  assign _22_ = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36" *) _24_;
  assign _12_[1] = ~(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[1];
  assign _12_[2] = ~(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[2];
  assign _12_[3] = ~(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[3];
  assign _12_[7] = ~(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[7];
  assign _12_[4] = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[4];
  assign _12_[5] = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[5];
  assign _12_[6] = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[6];
  assign _12_[8] = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[8];
  assign _12_[9] = ~(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:279.31-279.37" *) cnt[9];
  assign _17_ = _19_ |(* src = {0{1'b0}} *)  _16_;
  assign _19_ = _18_ ^(* src = {0{1'b0}} *)  _14_[9];
  assign _18_ = _13_[9] ^(* src = {0{1'b0}} *)  _13_[8];
  assign _24_ = _26_ |(* src = {0{1'b0}} *)  _23_;
  assign _26_ = _25_ ^(* src = {0{1'b0}} *)  _21_[9];
  assign _25_ = _20_[9] ^(* src = {0{1'b0}} *)  _20_[8];
  assign _14_[9] = _12_[9] ^(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:289.13-289.25" *)  _13_[8];
  assign _21_[9] = _12_[9] ^(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:289.13-289.25" *)  _20_[8];
  assign _05_[0] = cnt[1] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[0];
  assign _08_[1] = _12_[3] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[2];
  assign _27_ = cnt[7] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[6];
  assign _28_ = _05_[1] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _13_[1];
  assign _29_ = _05_[3] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[5];
  assign _30_ = _06_[1] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _13_[3];
  assign _05_[1] = _12_[3] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  cnt[2];
  assign _05_[3] = cnt[7] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  cnt[6];
  assign _13_[9] = _05_[4] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _13_[7];
  assign _13_[8] = _12_[8] &(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _13_[7];
  assign _13_[1] = _12_[1] |(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _05_[0];
  assign _31_ = _12_[7] |(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _27_;
  assign _13_[3] = _08_[1] |(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _28_;
  assign _13_[7] = _32_ |(* src = "counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _30_;
  assign _20_[3] = _08_[1] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _12_[1];
  assign _33_ = _06_[1] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.19-240.41" *)  _20_[3];
  assign _05_[2] = cnt[5] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:241.12-241.34" *)  _12_[4];
  assign _20_[9] = _05_[4] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _20_[7];
  assign _20_[8] = _12_[8] &(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:248.19-248.41" *)  _20_[7];
  assign _32_ = _31_ |(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _29_;
  assign _20_[7] = _32_ |(* src = "counter.v:17.26-17.41|counter.v:14.21-14.36|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:286.27-286.69|/home/lukas/tabby-linux-x64-20240903/tabby/lib/../share/yosys/techmap.v:240.12-240.41" *)  _33_;
  assign _08_[4:2] = _05_[4:2];
  assign _09_[1] = _06_[1];
  assign _13_[0] = _12_[0];
  assign _14_[0] = cnt[0];
  assign _20_[1:0] = { _12_[1], 1'h1 };
  assign _21_[1:0] = { cnt[1], _12_[0] };
  assign { n1[9:4], n1[1:0] } = 8'hxx;
endmodule
