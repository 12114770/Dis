/* Generated by Yosys 0.45 (git sha1 9ed031ddd, clang++ 14.0.0-1ubuntu1.1 -fPIC -O3) */

(* top =  1  *)
(* src = "counter.v:1.1-95.10" *)
module counter(clk, rst, mode, cnt);
  (* src = "counter.v:32.5-38.8" *)
  wire [9:0] _000_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _001_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _002_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _003_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _004_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _005_;
  (* src = "counter.v:10.5-30.8" *)
  wire [9:0] _006_;
  (* src = "counter.v:36.20-36.33|map.v:9.26-9.27" *)
  wire [9:0] _007_;
  (* src = "counter.v:36.20-36.33|map.v:10.26-10.27" *)
  wire [9:0] _008_;
  (* src = "counter.v:36.20-36.33|map.v:15.24-15.25" *)
  wire [9:0] _009_;
  (* src = "counter.v:36.20-36.33|map.v:14.27-14.28" *)
  wire [9:0] _010_;
  (* src = "counter.v:36.20-36.33|map.v:14.24-14.25" *)
  wire [9:0] _011_;
  (* src = "counter.v:36.20-36.33|map.v:11.26-11.27" *)
  wire [9:0] _012_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _013_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire _014_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _015_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _016_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [1:0] _017_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _018_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _019_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _020_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [2:0] _021_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _022_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _023_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _024_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _025_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [3:0] _026_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _027_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _028_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _029_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _030_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [4:0] _031_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [4:0] _032_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _033_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _034_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _035_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _036_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [4:0] _037_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [5:0] _038_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [5:0] _039_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _040_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _041_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _042_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _043_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [4:0] _044_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [5:0] _045_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [6:0] _046_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [6:0] _047_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _048_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _049_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _050_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _051_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [4:0] _052_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [5:0] _053_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [6:0] _054_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [7:0] _055_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [7:0] _056_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire _057_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [1:0] _058_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [2:0] _059_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [3:0] _060_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [4:0] _061_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [5:0] _062_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [6:0] _063_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [7:0] _064_;
  (* src = "counter.v:36.20-36.33|map.v:31.28-31.36" *)
  wire [8:0] _065_;
  (* src = "counter.v:36.20-36.33|map.v:28.25-28.32" *)
  wire [8:0] _066_;
  (* src = "counter.v:36.20-36.33" *)
  wire [9:0] _067_;
  (* src = "counter.v:23.21-23.37" *)
  wire _068_;
  (* src = "counter.v:26.26-26.42" *)
  wire _069_;
  (* src = "counter.v:14.21-14.36" *)
  wire _070_;
  (* src = "counter.v:17.26-17.41" *)
  wire _071_;
  (* src = "counter.v:13.17-13.32" *)
  wire _072_;
  (* src = "counter.v:22.17-22.31" *)
  wire _073_;
  wire [9:0] _074_;
  wire [9:0] _075_;
  wire [9:0] _076_;
  wire [9:0] _077_;
  wire [9:0] _078_;
  wire [9:0] _079_;
  wire [9:0] _080_;
  wire [9:0] _081_;
  wire [9:0] _082_;
  wire [9:0] _083_;
  (* src = "counter.v:36.20-36.33|map.v:18.16-18.21" *)
  wire [9:0] _084_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _085_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _086_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _087_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _088_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _089_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _090_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _091_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _092_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _093_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _094_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _095_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _096_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _097_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _098_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _099_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _100_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _101_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _102_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _103_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _104_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _105_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _106_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _107_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _108_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _109_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _110_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _111_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _112_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _113_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _114_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _115_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _116_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _117_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _118_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _119_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _120_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _121_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _122_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _123_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _124_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _125_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _126_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _127_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _128_;
  (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *)
  wire _129_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _130_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _131_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _132_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _133_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _134_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _135_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _136_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _137_;
  (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *)
  wire _138_;
  (* src = "counter.v:36.20-36.33|map.v:17.16-17.21" *)
  wire [9:0] _139_;
  (* src = "counter.v:36.20-36.33|map.v:42.29-42.47" *)
  wire [9:0] _140_;
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
  assign _068_ = $signed(cnt) >= (* src = "counter.v:23.21-23.37" *) $signed(10'h323);
  assign _069_ = $signed(cnt) >= (* src = "counter.v:26.26-26.42" *) $signed(10'h32c);
  assign _070_ = $signed(cnt) <= (* src = "counter.v:14.21-14.36" *) $signed(10'h0e6);
  assign _071_ = $signed(cnt) <= (* src = "counter.v:17.26-17.41" *) $signed(10'h0e1);
  assign _072_ = $signed(cnt) != (* src = "counter.v:13.17-13.32" *) $signed(10'h3f0);
  assign _073_ = $signed(cnt) != (* src = "counter.v:22.17-22.31" *) $signed(10'h3fe);
  (* src = "counter.v:32.5-38.8" *)
  always @(posedge clk)
    cnt <= _000_;
  assign _000_ = rst ? (* full_case = 32'd1 *) (* src = "counter.v:33.13-33.16|counter.v:33.9-37.12" *) 10'h3ce : _067_;
  assign _074_ = _069_ ? (* full_case = 32'd1 *) (* src = "counter.v:26.26-26.42|counter.v:26.22-28.16" *) 10'h3ee : 10'h000;
  assign _075_ = _073_ ? (* full_case = 32'd1 *) (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) 10'hxxx : _074_;
  assign _006_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) 10'hxxx : _075_;
  assign _076_ = _068_ ? (* full_case = 32'd1 *) (* src = "counter.v:23.21-23.37|counter.v:23.17-25.20" *) 10'h3f7 : 10'h000;
  assign _077_ = _073_ ? (* full_case = 32'd1 *) (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) _076_ : 10'hxxx;
  assign _005_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) 10'hxxx : _077_;
  assign _078_ = _073_ ? (* full_case = 32'd1 *) (* src = "counter.v:22.17-22.31|counter.v:22.13-28.16" *) _005_ : _006_;
  assign _004_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) 10'hxxx : _078_;
  assign _079_ = _071_ ? (* full_case = 32'd1 *) (* src = "counter.v:17.26-17.41|counter.v:17.22-19.16" *) 10'h00a : 10'h000;
  assign _080_ = _072_ ? (* full_case = 32'd1 *) (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) 10'hxxx : _079_;
  assign _003_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) _080_ : 10'hxxx;
  assign _081_ = _070_ ? (* full_case = 32'd1 *) (* src = "counter.v:14.21-14.36|counter.v:14.17-16.20" *) 10'h005 : 10'h000;
  assign _082_ = _072_ ? (* full_case = 32'd1 *) (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) _081_ : 10'hxxx;
  assign _002_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) _082_ : 10'hxxx;
  assign _083_ = _072_ ? (* full_case = 32'd1 *) (* src = "counter.v:13.17-13.32|counter.v:13.13-19.16" *) _002_ : _003_;
  assign _001_ = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) _083_ : 10'hxxx;
  assign summand = mode ? (* full_case = 32'd1 *) (* src = "counter.v:12.13-12.17|counter.v:12.9-29.12" *) _001_ : _004_;
  assign _084_ = cnt & (* src = "counter.v:36.20-36.33|map.v:18.16-18.21" *) summand;
  assign _085_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _013_;
  assign _086_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _015_;
  assign _087_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _016_;
  assign _088_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _018_;
  assign _089_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _019_;
  assign _090_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _020_;
  assign _091_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _022_;
  assign _092_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _023_;
  assign _093_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _024_;
  assign _094_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _025_;
  assign _095_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _027_;
  assign _096_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _028_;
  assign _097_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _029_;
  assign _098_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _030_;
  assign _099_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _031_;
  assign _100_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _033_;
  assign _101_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _034_;
  assign _102_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _035_;
  assign _103_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _036_;
  assign _104_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _037_;
  assign _105_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _038_;
  assign _106_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _040_;
  assign _107_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _041_;
  assign _108_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _042_;
  assign _109_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _043_;
  assign _110_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _044_;
  assign _111_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _045_;
  assign _112_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _046_;
  assign _113_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _048_;
  assign _114_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _049_;
  assign _115_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _050_;
  assign _116_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _051_;
  assign _117_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _052_;
  assign _118_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _053_;
  assign _119_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _054_;
  assign _120_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _055_;
  assign _121_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _057_;
  assign _122_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _058_;
  assign _123_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _059_;
  assign _124_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _060_;
  assign _125_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _061_;
  assign _126_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _062_;
  assign _127_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _063_;
  assign _128_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _064_;
  assign _129_ = & (* src = "counter.v:36.20-36.33|map.v:37.37-37.46" *) _065_;
  assign _130_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _014_;
  assign _131_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _017_;
  assign _132_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _021_;
  assign _133_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _026_;
  assign _134_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _032_;
  assign _135_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _039_;
  assign _136_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _047_;
  assign _137_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _056_;
  assign _138_ = | (* src = "counter.v:36.20-36.33|map.v:39.27-39.35" *) _066_;
  assign _139_ = cnt ^ (* src = "counter.v:36.20-36.33|map.v:17.16-17.21" *) summand;
  assign _140_ = _011_ ^ (* src = "counter.v:36.20-36.33|map.v:42.29-42.47" *) _009_;
  assign _011_ = _139_;
  assign _010_ = _084_;
  assign _009_[0] = 1'h0;
  assign _067_ = _140_;
  assign _013_ = _010_[0];
  assign _014_ = _085_;
  assign _009_[1] = _130_;
  assign _015_ = _010_[1];
  assign _017_[0] = _086_;
  assign _016_[0] = _010_[0];
  assign _016_[1] = _011_[1];
  assign _017_[1] = _087_;
  assign _009_[2] = _131_;
  assign _018_ = _010_[2];
  assign _021_[0] = _088_;
  assign _019_[0] = _010_[1];
  assign _019_[1] = _011_[2];
  assign _021_[1] = _089_;
  assign _020_[0] = _010_[0];
  assign _020_[1] = _011_[2];
  assign _020_[2] = _011_[1];
  assign _021_[2] = _090_;
  assign _009_[3] = _132_;
  assign _022_ = _010_[3];
  assign _026_[0] = _091_;
  assign _023_[0] = _010_[2];
  assign _023_[1] = _011_[3];
  assign _026_[1] = _092_;
  assign _024_[0] = _010_[1];
  assign _024_[1] = _011_[3];
  assign _024_[2] = _011_[2];
  assign _026_[2] = _093_;
  assign _025_[0] = _010_[0];
  assign _025_[1] = _011_[3];
  assign _025_[2] = _011_[2];
  assign _025_[3] = _011_[1];
  assign _026_[3] = _094_;
  assign _009_[4] = _133_;
  assign _027_ = _010_[4];
  assign _032_[0] = _095_;
  assign _028_[0] = _010_[3];
  assign _028_[1] = _011_[4];
  assign _032_[1] = _096_;
  assign _029_[0] = _010_[2];
  assign _029_[1] = _011_[4];
  assign _029_[2] = _011_[3];
  assign _032_[2] = _097_;
  assign _030_[0] = _010_[1];
  assign _030_[1] = _011_[4];
  assign _030_[2] = _011_[3];
  assign _030_[3] = _011_[2];
  assign _032_[3] = _098_;
  assign _031_[0] = _010_[0];
  assign _031_[1] = _011_[4];
  assign _031_[2] = _011_[3];
  assign _031_[3] = _011_[2];
  assign _031_[4] = _011_[1];
  assign _032_[4] = _099_;
  assign _009_[5] = _134_;
  assign _033_ = _010_[5];
  assign _039_[0] = _100_;
  assign _034_[0] = _010_[4];
  assign _034_[1] = _011_[5];
  assign _039_[1] = _101_;
  assign _035_[0] = _010_[3];
  assign _035_[1] = _011_[5];
  assign _035_[2] = _011_[4];
  assign _039_[2] = _102_;
  assign _036_[0] = _010_[2];
  assign _036_[1] = _011_[5];
  assign _036_[2] = _011_[4];
  assign _036_[3] = _011_[3];
  assign _039_[3] = _103_;
  assign _037_[0] = _010_[1];
  assign _037_[1] = _011_[5];
  assign _037_[2] = _011_[4];
  assign _037_[3] = _011_[3];
  assign _037_[4] = _011_[2];
  assign _039_[4] = _104_;
  assign _038_[0] = _010_[0];
  assign _038_[1] = _011_[5];
  assign _038_[2] = _011_[4];
  assign _038_[3] = _011_[3];
  assign _038_[4] = _011_[2];
  assign _038_[5] = _011_[1];
  assign _039_[5] = _105_;
  assign _009_[6] = _135_;
  assign _040_ = _010_[6];
  assign _047_[0] = _106_;
  assign _041_[0] = _010_[5];
  assign _041_[1] = _011_[6];
  assign _047_[1] = _107_;
  assign _042_[0] = _010_[4];
  assign _042_[1] = _011_[6];
  assign _042_[2] = _011_[5];
  assign _047_[2] = _108_;
  assign _043_[0] = _010_[3];
  assign _043_[1] = _011_[6];
  assign _043_[2] = _011_[5];
  assign _043_[3] = _011_[4];
  assign _047_[3] = _109_;
  assign _044_[0] = _010_[2];
  assign _044_[1] = _011_[6];
  assign _044_[2] = _011_[5];
  assign _044_[3] = _011_[4];
  assign _044_[4] = _011_[3];
  assign _047_[4] = _110_;
  assign _045_[0] = _010_[1];
  assign _045_[1] = _011_[6];
  assign _045_[2] = _011_[5];
  assign _045_[3] = _011_[4];
  assign _045_[4] = _011_[3];
  assign _045_[5] = _011_[2];
  assign _047_[5] = _111_;
  assign _046_[0] = _010_[0];
  assign _046_[1] = _011_[6];
  assign _046_[2] = _011_[5];
  assign _046_[3] = _011_[4];
  assign _046_[4] = _011_[3];
  assign _046_[5] = _011_[2];
  assign _046_[6] = _011_[1];
  assign _047_[6] = _112_;
  assign _009_[7] = _136_;
  assign _048_ = _010_[7];
  assign _056_[0] = _113_;
  assign _049_[0] = _010_[6];
  assign _049_[1] = _011_[7];
  assign _056_[1] = _114_;
  assign _050_[0] = _010_[5];
  assign _050_[1] = _011_[7];
  assign _050_[2] = _011_[6];
  assign _056_[2] = _115_;
  assign _051_[0] = _010_[4];
  assign _051_[1] = _011_[7];
  assign _051_[2] = _011_[6];
  assign _051_[3] = _011_[5];
  assign _056_[3] = _116_;
  assign _052_[0] = _010_[3];
  assign _052_[1] = _011_[7];
  assign _052_[2] = _011_[6];
  assign _052_[3] = _011_[5];
  assign _052_[4] = _011_[4];
  assign _056_[4] = _117_;
  assign _053_[0] = _010_[2];
  assign _053_[1] = _011_[7];
  assign _053_[2] = _011_[6];
  assign _053_[3] = _011_[5];
  assign _053_[4] = _011_[4];
  assign _053_[5] = _011_[3];
  assign _056_[5] = _118_;
  assign _054_[0] = _010_[1];
  assign _054_[1] = _011_[7];
  assign _054_[2] = _011_[6];
  assign _054_[3] = _011_[5];
  assign _054_[4] = _011_[4];
  assign _054_[5] = _011_[3];
  assign _054_[6] = _011_[2];
  assign _056_[6] = _119_;
  assign _055_[0] = _010_[0];
  assign _055_[1] = _011_[7];
  assign _055_[2] = _011_[6];
  assign _055_[3] = _011_[5];
  assign _055_[4] = _011_[4];
  assign _055_[5] = _011_[3];
  assign _055_[6] = _011_[2];
  assign _055_[7] = _011_[1];
  assign _056_[7] = _120_;
  assign _009_[8] = _137_;
  assign _057_ = _010_[8];
  assign _066_[0] = _121_;
  assign _058_[0] = _010_[7];
  assign _058_[1] = _011_[8];
  assign _066_[1] = _122_;
  assign _059_[0] = _010_[6];
  assign _059_[1] = _011_[8];
  assign _059_[2] = _011_[7];
  assign _066_[2] = _123_;
  assign _060_[0] = _010_[5];
  assign _060_[1] = _011_[8];
  assign _060_[2] = _011_[7];
  assign _060_[3] = _011_[6];
  assign _066_[3] = _124_;
  assign _061_[0] = _010_[4];
  assign _061_[1] = _011_[8];
  assign _061_[2] = _011_[7];
  assign _061_[3] = _011_[6];
  assign _061_[4] = _011_[5];
  assign _066_[4] = _125_;
  assign _062_[0] = _010_[3];
  assign _062_[1] = _011_[8];
  assign _062_[2] = _011_[7];
  assign _062_[3] = _011_[6];
  assign _062_[4] = _011_[5];
  assign _062_[5] = _011_[4];
  assign _066_[5] = _126_;
  assign _063_[0] = _010_[2];
  assign _063_[1] = _011_[8];
  assign _063_[2] = _011_[7];
  assign _063_[3] = _011_[6];
  assign _063_[4] = _011_[5];
  assign _063_[5] = _011_[4];
  assign _063_[6] = _011_[3];
  assign _066_[6] = _127_;
  assign _064_[0] = _010_[1];
  assign _064_[1] = _011_[8];
  assign _064_[2] = _011_[7];
  assign _064_[3] = _011_[6];
  assign _064_[4] = _011_[5];
  assign _064_[5] = _011_[4];
  assign _064_[6] = _011_[3];
  assign _064_[7] = _011_[2];
  assign _066_[7] = _128_;
  assign _065_[0] = _010_[0];
  assign _065_[1] = _011_[8];
  assign _065_[2] = _011_[7];
  assign _065_[3] = _011_[6];
  assign _065_[4] = _011_[5];
  assign _065_[5] = _011_[4];
  assign _065_[6] = _011_[3];
  assign _065_[7] = _011_[2];
  assign _065_[8] = _011_[1];
  assign _066_[8] = _129_;
  assign _009_[9] = _138_;
endmodule
