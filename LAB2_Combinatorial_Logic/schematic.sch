# File saved with Nlview 7.0r4  2019-12-20 bk=1.5203 VDI=41 GEI=36 GUI=JA:10.0 TLS
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new led_thingy_top work:led_thingy_top:NOFILE -nosplit
load symbol RTL_ROM work GEN pinBus A input.left [3:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_MUX8 work MUX pin S input.bot pinBus I0 input.left [2:0] pinBus I1 input.left [2:0] pinBus O output.right [2:0] fillcolor 1
load symbol RTL_AND6 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_EQ3 work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_EQ2 work RTL(=) pin O output.right pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] fillcolor 1
load symbol RTL_MUX6 work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load port led4_b output -pg 1 -lvl 11 -x 4120 -y 160
load port led4_g output -pg 1 -lvl 11 -x 4120 -y 180
load port led4_r output -pg 1 -lvl 11 -x 4120 -y 200
load port led5_b output -pg 1 -lvl 11 -x 4120 -y 30
load port led5_g output -pg 1 -lvl 11 -x 4120 -y 50
load port led5_r output -pg 1 -lvl 11 -x 4120 -y 70
load portBus btn input [3:0] -attr @name btn[3:0] -pg 1 -lvl 0 -x 0 -y 310
load portBus led output [3:0] -attr @name led[3:0] -pg 1 -lvl 11 -x 4120 -y 320
load portBus sw input [1:0] -attr @name sw[1:0] -pg 1 -lvl 0 -x 0 -y 470
load inst RGB_Led_4_i RTL_ROM work -attr @cell(#000000) RTL_ROM -pinBusAttr A @name A[3:0] -pinBusAttr O @name O[2:0] -pg 1 -lvl 10 -x 3960 -y 210
load inst RGB_Led_5_i RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 9 -x 3540 -y 70
load inst RGB_Led_5_i__0 RTL_MUX8 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[2:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[2:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[2:0] -pg 1 -lvl 10 -x 3960 -y 70
load inst decoder_result1_i RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 2 -x 490 -y 590
load inst decoder_result1_i__0 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 3 -x 920 -y 400
load inst decoder_result1_i__1 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 4 -x 1390 -y 420
load inst decoder_result1_i__2 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 5 -x 1820 -y 380
load inst decoder_result1_i__3 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 6 -x 2260 -y 630
load inst decoder_result1_i__4 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 7 -x 2680 -y 320
load inst decoder_result1_i__5 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 8 -x 3100 -y 320
load inst decoder_result1_i__6 RTL_AND6 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 9 -x 3540 -y 260
load inst decoder_result2_i RTL_EQ3 work -attr @cell(#000000) RTL_EQ -pg 1 -lvl 1 -x 140 -y 520
load inst decoder_result2_i__0 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pg 1 -lvl 1 -x 140 -y 640
load inst decoder_result2_i__1 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"10\" -pg 1 -lvl 2 -x 490 -y 320
load inst decoder_result2_i__2 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr V=B\"01\" -pg 1 -lvl 3 -x 920 -y 250
load inst decoder_result2_i__3 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[1:0] -pinBusAttr I1 @name I1[1:0] -pg 1 -lvl 4 -x 1390 -y 300
load inst decoder_result_i RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"1000\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 3 -x 920 -y 550
load inst decoder_result_i__0 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0100\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 4 -x 1390 -y 550
load inst decoder_result_i__1 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0010\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 5 -x 1820 -y 550
load inst decoder_result_i__2 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0001\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 6 -x 2260 -y 470
load inst decoder_result_i__3 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"0101\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 7 -x 2680 -y 460
load inst decoder_result_i__4 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"1110\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 8 -x 3100 -y 450
load inst decoder_result_i__5 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"1110\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 9 -x 3540 -y 370
load inst decoder_result_i__6 RTL_MUX6 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr V=B\"1000\",\ S=1'b1 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[3:0] -pg 1 -lvl 10 -x 3960 -y 320
load net <const0> -ground -pin RGB_Led_5_i I1[2] -pin RGB_Led_5_i I1[1] -pin RGB_Led_5_i I1[0] -pin decoder_result2_i I1 -pin decoder_result2_i__1 I1[0] -pin decoder_result2_i__2 I1[1] -pin decoder_result2_i__3 I1[1] -pin decoder_result2_i__3 I1[0] -pin decoder_result_i I0[2] -pin decoder_result_i I0[1] -pin decoder_result_i I0[0] -pin decoder_result_i I1[3] -pin decoder_result_i I1[2] -pin decoder_result_i I1[1] -pin decoder_result_i I1[0] -pin decoder_result_i__0 I0[3] -pin decoder_result_i__0 I0[1] -pin decoder_result_i__0 I0[0] -pin decoder_result_i__1 I0[3] -pin decoder_result_i__1 I0[2] -pin decoder_result_i__1 I0[0] -pin decoder_result_i__2 I0[3] -pin decoder_result_i__2 I0[2] -pin decoder_result_i__2 I0[1] -pin decoder_result_i__3 I0[3] -pin decoder_result_i__3 I0[1] -pin decoder_result_i__4 I0[0] -pin decoder_result_i__5 I0[0] -pin decoder_result_i__6 I0[2] -pin decoder_result_i__6 I0[1] -pin decoder_result_i__6 I0[0]
load net <const1> -power -pin RGB_Led_5_i__0 I0[2] -pin RGB_Led_5_i__0 I0[1] -pin RGB_Led_5_i__0 I0[0] -pin decoder_result2_i__0 I1[1] -pin decoder_result2_i__0 I1[0] -pin decoder_result2_i__1 I1[1] -pin decoder_result2_i__2 I1[0] -pin decoder_result_i I0[3] -pin decoder_result_i__0 I0[2] -pin decoder_result_i__1 I0[1] -pin decoder_result_i__2 I0[0] -pin decoder_result_i__3 I0[2] -pin decoder_result_i__3 I0[0] -pin decoder_result_i__4 I0[3] -pin decoder_result_i__4 I0[2] -pin decoder_result_i__4 I0[1] -pin decoder_result_i__5 I0[3] -pin decoder_result_i__5 I0[2] -pin decoder_result_i__5 I0[1] -pin decoder_result_i__6 I0[3]
load net RGB_Led_5[0] -attr @rip O[2] -pin RGB_Led_5_i O[2] -pin RGB_Led_5_i__0 I1[2]
load net RGB_Led_5[1] -attr @rip O[1] -pin RGB_Led_5_i O[1] -pin RGB_Led_5_i__0 I1[1]
load net RGB_Led_5[2] -attr @rip O[0] -pin RGB_Led_5_i O[0] -pin RGB_Led_5_i__0 I1[0]
load net btn[0] -attr @rip btn[0] -pin RGB_Led_4_i A[0] -port btn[0] -pin decoder_result2_i__0 I0[0] -pin decoder_result2_i__1 I0[0] -pin decoder_result2_i__2 I0[0] -pin decoder_result2_i__3 I0[0]
load net btn[1] -attr @rip btn[1] -pin RGB_Led_4_i A[1] -port btn[1] -pin decoder_result2_i__0 I0[1] -pin decoder_result2_i__1 I0[1] -pin decoder_result2_i__2 I0[1] -pin decoder_result2_i__3 I0[1]
load net btn[2] -attr @rip btn[2] -pin RGB_Led_4_i A[2] -port btn[2]
load net btn[3] -attr @rip btn[3] -pin RGB_Led_4_i A[3] -port btn[3]
load net decoder_result1 -pin decoder_result1_i__2 O -pin decoder_result_i__2 S
netloc decoder_result1 1 5 1 2050 380n
load net decoder_result1_i__0_n_0 -pin decoder_result1_i__0 O -pin decoder_result_i__0 S
netloc decoder_result1_i__0_n_0 1 3 1 1140 400n
load net decoder_result1_i__1_n_0 -pin decoder_result1_i__1 O -pin decoder_result_i__1 S
netloc decoder_result1_i__1_n_0 1 4 1 1610 420n
load net decoder_result1_i__3_n_0 -pin decoder_result1_i__3 O -pin decoder_result_i__3 S
netloc decoder_result1_i__3_n_0 1 6 1 2470 520n
load net decoder_result1_i__4_n_0 -pin decoder_result1_i__4 O -pin decoder_result_i__4 S
netloc decoder_result1_i__4_n_0 1 7 1 2870 320n
load net decoder_result1_i__5_n_0 -pin decoder_result1_i__5 O -pin decoder_result_i__5 S
netloc decoder_result1_i__5_n_0 1 8 1 3310 320n
load net decoder_result1_i__6_n_0 -pin decoder_result1_i__6 O -pin decoder_result_i__6 S
netloc decoder_result1_i__6_n_0 1 9 1 3750 260n
load net decoder_result1_i_n_0 -pin decoder_result1_i O -pin decoder_result_i S
netloc decoder_result1_i_n_0 1 2 1 690 590n
load net decoder_result2 -pin decoder_result1_i__2 I1 -pin decoder_result1_i__6 I1 -pin decoder_result2_i__3 O
netloc decoder_result2 1 4 5 1610 270 NJ 270 NJ 270 NJ 270 N
load net decoder_result2_i__0_n_0 -pin decoder_result1_i I1 -pin decoder_result1_i__3 I1 -pin decoder_result2_i__0 O
netloc decoder_result2_i__0_n_0 1 1 5 360 640 NJ 640 NJ 640 NJ 640 NJ
load net decoder_result2_i__1_n_0 -pin decoder_result1_i__0 I1 -pin decoder_result1_i__4 I1 -pin decoder_result2_i__1 O
netloc decoder_result2_i__1_n_0 1 2 5 690 320 1140J 230 NJ 230 NJ 230 2490
load net decoder_result2_i__2_n_0 -pin decoder_result1_i__1 I1 -pin decoder_result1_i__5 I1 -pin decoder_result2_i__2 O
netloc decoder_result2_i__2_n_0 1 3 5 1180 250 NJ 250 NJ 250 NJ 250 2910
load net decoder_result2_i_n_0 -pin decoder_result1_i I0 -pin decoder_result1_i__0 I0 -pin decoder_result1_i__1 I0 -pin decoder_result1_i__2 I0 -pin decoder_result2_i O
netloc decoder_result2_i_n_0 1 1 4 340 490 710 450 1160 370 N
load net decoder_result[0] -attr @rip O[0] -pin decoder_result_i__5 O[0] -pin decoder_result_i__6 I1[0]
load net decoder_result[1] -attr @rip O[1] -pin decoder_result_i__5 O[1] -pin decoder_result_i__6 I1[1]
load net decoder_result[2] -attr @rip O[2] -pin decoder_result_i__5 O[2] -pin decoder_result_i__6 I1[2]
load net decoder_result[3] -attr @rip O[3] -pin decoder_result_i__5 O[3] -pin decoder_result_i__6 I1[3]
load net decoder_result_i__0_n_0 -attr @rip O[3] -pin decoder_result_i__0 O[3] -pin decoder_result_i__1 I1[3]
load net decoder_result_i__0_n_1 -attr @rip O[2] -pin decoder_result_i__0 O[2] -pin decoder_result_i__1 I1[2]
load net decoder_result_i__0_n_2 -attr @rip O[1] -pin decoder_result_i__0 O[1] -pin decoder_result_i__1 I1[1]
load net decoder_result_i__0_n_3 -attr @rip O[0] -pin decoder_result_i__0 O[0] -pin decoder_result_i__1 I1[0]
load net decoder_result_i__1_n_0 -attr @rip O[3] -pin decoder_result_i__1 O[3] -pin decoder_result_i__2 I1[3]
load net decoder_result_i__1_n_1 -attr @rip O[2] -pin decoder_result_i__1 O[2] -pin decoder_result_i__2 I1[2]
load net decoder_result_i__1_n_2 -attr @rip O[1] -pin decoder_result_i__1 O[1] -pin decoder_result_i__2 I1[1]
load net decoder_result_i__1_n_3 -attr @rip O[0] -pin decoder_result_i__1 O[0] -pin decoder_result_i__2 I1[0]
load net decoder_result_i__2_n_0 -attr @rip O[3] -pin decoder_result_i__2 O[3] -pin decoder_result_i__3 I1[3]
load net decoder_result_i__2_n_1 -attr @rip O[2] -pin decoder_result_i__2 O[2] -pin decoder_result_i__3 I1[2]
load net decoder_result_i__2_n_2 -attr @rip O[1] -pin decoder_result_i__2 O[1] -pin decoder_result_i__3 I1[1]
load net decoder_result_i__2_n_3 -attr @rip O[0] -pin decoder_result_i__2 O[0] -pin decoder_result_i__3 I1[0]
load net decoder_result_i__3_n_0 -attr @rip O[3] -pin decoder_result_i__3 O[3] -pin decoder_result_i__4 I1[3]
load net decoder_result_i__3_n_1 -attr @rip O[2] -pin decoder_result_i__3 O[2] -pin decoder_result_i__4 I1[2]
load net decoder_result_i__3_n_2 -attr @rip O[1] -pin decoder_result_i__3 O[1] -pin decoder_result_i__4 I1[1]
load net decoder_result_i__3_n_3 -attr @rip O[0] -pin decoder_result_i__3 O[0] -pin decoder_result_i__4 I1[0]
load net decoder_result_i__4_n_0 -attr @rip O[3] -pin decoder_result_i__4 O[3] -pin decoder_result_i__5 I1[3]
load net decoder_result_i__4_n_1 -attr @rip O[2] -pin decoder_result_i__4 O[2] -pin decoder_result_i__5 I1[2]
load net decoder_result_i__4_n_2 -attr @rip O[1] -pin decoder_result_i__4 O[1] -pin decoder_result_i__5 I1[1]
load net decoder_result_i__4_n_3 -attr @rip O[0] -pin decoder_result_i__4 O[0] -pin decoder_result_i__5 I1[0]
load net decoder_result_i_n_0 -attr @rip O[3] -pin decoder_result_i O[3] -pin decoder_result_i__0 I1[3]
load net decoder_result_i_n_1 -attr @rip O[2] -pin decoder_result_i O[2] -pin decoder_result_i__0 I1[2]
load net decoder_result_i_n_2 -attr @rip O[1] -pin decoder_result_i O[1] -pin decoder_result_i__0 I1[1]
load net decoder_result_i_n_3 -attr @rip O[0] -pin decoder_result_i O[0] -pin decoder_result_i__0 I1[0]
load net led4_b -attr @rip O[2] -pin RGB_Led_4_i O[2] -pin RGB_Led_5_i I0[2] -port led4_b
load net led4_g -attr @rip O[1] -pin RGB_Led_4_i O[1] -pin RGB_Led_5_i I0[1] -port led4_g
load net led4_r -attr @rip O[0] -pin RGB_Led_4_i O[0] -pin RGB_Led_5_i I0[0] -port led4_r
load net led5_b -attr @rip O[2] -pin RGB_Led_5_i__0 O[2] -port led5_b
load net led5_g -attr @rip O[1] -pin RGB_Led_5_i__0 O[1] -port led5_g
load net led5_r -attr @rip O[0] -pin RGB_Led_5_i__0 O[0] -port led5_r
load net led[0] -attr @rip O[0] -pin decoder_result_i__6 O[0] -port led[0]
load net led[1] -attr @rip O[1] -pin decoder_result_i__6 O[1] -port led[1]
load net led[2] -attr @rip O[2] -pin decoder_result_i__6 O[2] -port led[2]
load net led[3] -attr @rip O[3] -pin decoder_result_i__6 O[3] -port led[3]
load net sw[0] -attr @rip sw[0] -pin RGB_Led_5_i S -pin decoder_result1_i__3 I0 -pin decoder_result1_i__4 I0 -pin decoder_result1_i__5 I0 -pin decoder_result1_i__6 I0 -pin decoder_result2_i I0 -port sw[0]
load net sw[1] -attr @rip sw[1] -pin RGB_Led_5_i__0 S -port sw[1]
load netBundle @btn 4 btn[3] btn[2] btn[1] btn[0] -autobundled
netbloc @btn 1 0 10 40 310 340 250 690 180 1160 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ 210 NJ
load netBundle @sw 2 sw[1] sw[0] -autobundled
netbloc @sw 1 0 10 20 470 NJ 470 NJ 470 NJ 470 NJ 470 2010 560 2450 370 2890 370 3290 130N 3750
load netBundle @led 4 led[3] led[2] led[1] led[0] -autobundled
netbloc @led 1 10 1 NJ 320
load netBundle @led4_b,led4_g,led4_r 3 led4_b led4_g led4_r -autobundled
netbloc @led4_b,led4_g,led4_r 1 8 3 3310 160 NJ 160 4100
load netBundle @RGB_Led_5 3 RGB_Led_5[0] RGB_Led_5[1] RGB_Led_5[2] -autobundled
netbloc @RGB_Led_5 1 9 1 3750 70n
load netBundle @led5_b,led5_g,led5_r 3 led5_b led5_g led5_r -autobundled
netbloc @led5_b,led5_g,led5_r 1 10 1 4100 30n
load netBundle @decoder_result_i_n_ 4 decoder_result_i_n_0 decoder_result_i_n_1 decoder_result_i_n_2 decoder_result_i_n_3 -autobundled
netbloc @decoder_result_i_n_ 1 3 1 1120J 550n
load netBundle @decoder_result_i__0_n_ 4 decoder_result_i__0_n_0 decoder_result_i__0_n_1 decoder_result_i__0_n_2 decoder_result_i__0_n_3 -autobundled
netbloc @decoder_result_i__0_n_ 1 4 1 1590 550n
load netBundle @decoder_result_i__1_n_ 4 decoder_result_i__1_n_0 decoder_result_i__1_n_1 decoder_result_i__1_n_2 decoder_result_i__1_n_3 -autobundled
netbloc @decoder_result_i__1_n_ 1 5 1 2030 480n
load netBundle @decoder_result_i__2_n_ 4 decoder_result_i__2_n_0 decoder_result_i__2_n_1 decoder_result_i__2_n_2 decoder_result_i__2_n_3 -autobundled
netbloc @decoder_result_i__2_n_ 1 6 1 N 470
load netBundle @decoder_result_i__3_n_ 4 decoder_result_i__3_n_0 decoder_result_i__3_n_1 decoder_result_i__3_n_2 decoder_result_i__3_n_3 -autobundled
netbloc @decoder_result_i__3_n_ 1 7 1 N 460
load netBundle @decoder_result_i__4_n_ 4 decoder_result_i__4_n_0 decoder_result_i__4_n_1 decoder_result_i__4_n_2 decoder_result_i__4_n_3 -autobundled
netbloc @decoder_result_i__4_n_ 1 8 1 3330 380n
load netBundle @decoder_result 4 decoder_result[3] decoder_result[2] decoder_result[1] decoder_result[0] -autobundled
netbloc @decoder_result 1 9 1 3730 330n
levelinfo -pg 1 0 140 490 920 1390 1820 2260 2680 3100 3540 3960 4120
pagesize -pg 1 -db -bbox -sgen -110 0 4230 690
show
fullfit
#
# initialize ictrl to current module led_thingy_top work:led_thingy_top:NOFILE
ictrl init topinfo |
