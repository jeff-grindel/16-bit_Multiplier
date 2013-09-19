** Generated for: hspiceD
** Generated on: Jul 29 19:43:41 2013
** Design library name: my
** Design cell name: 42CSA_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 5000e-12 START=0.0

.OP

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+	 POST
.INCLUDE "/apps/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

** Library name: my
** Cell name: INV
** View name: schematic
.subckt INV in out
m0 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends INV
** End of subcircuit definition.

** Library name: my
** Cell name: NAND2
** View name: schematic
.subckt NAND2 a b out
m1 net16 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m0 out a net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 out b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 out a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends NAND2
** End of subcircuit definition.

** Library name: my
** Cell name: AND2
** View name: schematic
.subckt AND2 a b out
xi0 net7 out INV
xi1 a b net7 NAND2
.ends AND2
** End of subcircuit definition.

** Library name: my
** Cell name: PC_CTRL
** View name: schematic
.subckt PC_CTRL _net1 _net0 a a_ b b_ pc
xi1 b net17 INV
xi0 a net18 INV
xi5 pc net17 _net0 AND2
xi4 pc b b_ AND2
xi3 a pc a_ AND2
xi2 net18 pc _net1 AND2
.ends PC_CTRL
** End of subcircuit definition.

** Library name: my
** Cell name: SP_MAJ
** View name: schematic
.subckt SP_MAJ in0 in1 in2 out
m17 c2 in1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m14 c1 in0 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m16 c2 out vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 c1 out vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net08 in1 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m22 net061 in2 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m18 c1 in0 net08 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m21 c2 in1 net061 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m20 net08 in2 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi39 c2 c1 out NAND2
.ends SP_MAJ
** End of subcircuit definition.

** Library name: my
** Cell name: SP_MAJ_DR
** View name: schematic
.subckt SP_MAJ_DR a a_b b b_b c c_b co co_b
xi40 a b c co SP_MAJ
xi41 a_b b_b c_b co_b SP_MAJ
.ends SP_MAJ_DR
** End of subcircuit definition.

** Library name: my
** Cell name: SP_XOR3_DR
** View name: schematic
.subckt SP_XOR3_DR _net0 a a_b b b_b c c_b p
m12 p4 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 p4 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m8 p2 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 p2 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m5 p3 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 p3 a_b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 p1 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 p1 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m20 net068 c 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m19 net063 b_b net068 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m16 net066 c 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m15 net2 b net066 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m18 net063 b net065 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m14 net070 c_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m13 p4 a net063 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m17 net065 c_b 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m9 p2 a_b net063 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m6 p3 a_b net2 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m3 net2 b_b net070 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
m2 p1 a net2 0 NMOS_VTL L=50e-9 W=270e-9 AD=28.35e-15 AS=28.35e-15 PD=480e-9 PS=480e-9 M=1
xi14 p4 p3 _net0 NAND2
xi13 p2 p1 p NAND2
.ends SP_XOR3_DR
** End of subcircuit definition.

** Library name: my
** Cell name: SP_FA_DR
** View name: schematic
.subckt SP_FA_DR a a_b b b_b c c_b co co_b s s_b
xi0 a a_b b b_b c c_b co co_b SP_MAJ_DR
xi1 s_b a a_b b b_b c c_b s SP_XOR3_DR
.ends SP_FA_DR
** End of subcircuit definition.

** Library name: my
** Cell name: SP_42CSA_DR
** View name: schematic
.subckt SP_42CSA_DR c1 c10 c10_b c11 c11_b c12 c12_b c13 c13_b c14 c14_b c15 c15_b c16 c16_b c17 c17_b c18 c18_b c19 c19_b c1_b c2 c20 c20_b c21 c21_b c22 c22_b c23 c23_b c24 c24_b c25 c25_b c26 c26_b c27 c27_b c28 c28_b c29 c29_b c2_b c3 c30 c30_b c31 c31_b c3_b c4 c4_b c5 c5_b c6 c6_b c7 c7_b c8 c8_b c9 c9_b s0 s0_b s1 s10 s10_b s11 s11_b s12 s12_b s13 s13_b s14 s14_b s15 s15_b s16 s16_b s17 s17_b s18 s18_b s19 s19_b s1_b s2 s20 s20_b s21 s21_b s22 s22_b s23 s23_b s24 s24_b s25 s25_b s26 s26_b s27 s27_b s28 s28_b s29 s29_b s2_b s3 s30 s30_b s31 s31_b s3_b s4 s4_b s5 s5_b s6 s6_b s7 s7_b s8 s8_b s9 s9_b w0 w0_b w1 w10 w10_b w11 w11_b w12 w12_b w13 w13_b w14 w14_b w15 w15_b w16 w16_b w17 w17_b w18 w18_b w19 w19_b w1_b w2 w20 w20_b w21 w21_b w22 w22_b w23 w23_b w24 w24_b w25 w25_b w26 w26_b w27 w27_b w28 w28_b w29 w29_b w2_b w3 w30 w30_b w31 w31_b w3_b w4 w4_b w5 w5_b w6 w6_b w7 w7_b w8 w8_b w9 w9_b x0 x0_b x1 x10 x10_b x11 x11_b x12 x12_b x13 x13_b x14 x14_b x15 x15_b x16 x16_b x17 x17_b x18 x18_b x19 x19_b
+x1_b x2 x20 x20_b x21 x21_b x22 x22_b x23 x23_b x24 x24_b x25 x25_b x26 x26_b x27 x27_b x28 x28_b x29 x29_b x2_b x3 x30 x30_b x31 x31_b x3_b x4 x4_b x5 x5_b x6 x6_b x7 x7_b x8 x8_b x9 x9_b y0 y0_b y1 y10 y10_b y11 y11_b y12 y12_b y13 y13_b y14 y14_b y15 y15_b y16 y16_b y17 y17_b y18 y18_b y19 y19_b y1_b y2 y20 y20_b y21 y21_b y22 y22_b y23 y23_b y24 y24_b y25 y25_b y26 y26_b y27 y27_b y28 y28_b y29 y29_b y2_b y3 y30 y30_b y31 y31_b y3_b y4 y4_b y5 y5_b y6 y6_b y7 y7_b y8 y8_b y9 y9_b z0 z0_b z1 z10 z10_b z11 z11_b z12 z12_b z13 z13_b z14 z14_b z15 z15_b z16 z16_b z17 z17_b z18 z18_b z19 z19_b z1_b z2 z20 z20_b z21 z21_b z22 z22_b z23 z23_b z24 z24_b z25 z25_b z26 z26_b z27 z27_b z28 z28_b z29 z29_b z2_b z3 z30 z30_b z31 z31_b z3_b z4 z4_b z5 z5_b z6 z6_b z7 z7_b z8 z8_b z9 z9_b
xi67 w31 w31_b x31 x31_b y31 y31_b 0 0 net0516 net0515 SP_FA_DR
xi66 net0516 net0515 z31 z31_b net0387 net0388 0 0 s31 s31_b SP_FA_DR
xi65 net0519 net0520 z29 z29_b net0395 net0396 c30 c30_b s29 s29_b SP_FA_DR
xi64 w29 w29_b x29 x29_b y29 y29_b net0391 net0392 net0519 net0520 SP_FA_DR
xi63 w30 w30_b x30 x30_b y30 y30_b net0387 net0388 net0517 net0518 SP_FA_DR
xi62 net0517 net0518 z30 z30_b net0391 net0392 c31 c31_b s30 s30_b SP_FA_DR
xi61 w28 w28_b x28 x28_b y28 y28_b net0395 net0396 net0521 net0522 SP_FA_DR
xi60 net0521 net0522 z28 z28_b net0399 net0400 c29 c29_b s28 s28_b SP_FA_DR
xi59 w27 w27_b x27 x27_b y27 y27_b net0399 net0400 net0523 net0524 SP_FA_DR
xi58 net0523 net0524 z27 z27_b net0403 net0404 c28 c28_b s27 s27_b SP_FA_DR
xi57 w26 w26_b x26 x26_b y26 y26_b net0403 net0404 net0525 net0526 SP_FA_DR
xi56 net0525 net0526 z26 z26_b net0407 net0408 c27 c27_b s26 s26_b SP_FA_DR
xi55 w25 w25_b x25 x25_b y25 y25_b net0407 net0408 net0527 net0528 SP_FA_DR
xi54 net0527 net0528 z25 z25_b net0411 net0412 c26 c26_b s25 s25_b SP_FA_DR
xi53 net0530 net0529 z19 z19_b net0435 net0436 c20 c20_b s19 s19_b SP_FA_DR
xi52 w19 w19_b x19 x19_b y19 y19_b net0431 net0432 net0530 net0529 SP_FA_DR
xi51 net0532 net0531 z20 z20_b net0431 net0432 c21 c21_b s20 s20_b SP_FA_DR
xi50 w20 w20_b x20 x20_b y20 y20_b net0427 net0428 net0532 net0531 SP_FA_DR
xi49 net0534 net0533 z21 z21_b net0427 net0428 c22 c22_b s21 s21_b SP_FA_DR
xi48 w21 w21_b x21 x21_b y21 y21_b net0423 net0424 net0534 net0533 SP_FA_DR
xi47 net0536 net0535 z22 z22_b net0423 net0424 c23 c23_b s22 s22_b SP_FA_DR
xi46 w22 w22_b x22 x22_b y22 y22_b net0419 net0420 net0536 net0535 SP_FA_DR
xi45 net0540 net0539 z24 z24_b net0415 net0416 c25 c25_b s24 s24_b SP_FA_DR
xi44 w24 w24_b x24 x24_b y24 y24_b net0411 net0412 net0540 net0539 SP_FA_DR
xi43 w23 w23_b x23 x23_b y23 y23_b net0415 net0416 net0538 net0537 SP_FA_DR
xi42 net0538 net0537 z23 z23_b net0419 net0420 c24 c24_b s23 s23_b SP_FA_DR
xi41 net0543 net0544 z17 z17_b net0443 net0444 c18 c18_b s17 s17_b SP_FA_DR
xi40 w17 w17_b x17 x17_b y17 y17_b net0439 net0440 net0543 net0544 SP_FA_DR
xi39 w18 w18_b x18 x18_b y18 y18_b net0435 net0436 net0541 net0542 SP_FA_DR
xi38 net0541 net0542 z18 z18_b net0439 net0440 c19 c19_b s18 s18_b SP_FA_DR
xi37 w16 w16_b x16 x16_b y16 y16_b net0443 net0444 net0545 net0546 SP_FA_DR
xi36 net0545 net0546 z16 z16_b net0447 net0448 c17 c17_b s16 s16_b SP_FA_DR
xi35 w15 w15_b x15 x15_b y15 y15_b net0447 net0448 net0547 net0548 SP_FA_DR
xi34 net0547 net0548 z15 z15_b net0451 net0452 c16 c16_b s15 s15_b SP_FA_DR
xi33 w14 w14_b x14 x14_b y14 y14_b net0451 net0452 net0549 net0550 SP_FA_DR
xi32 net0549 net0550 z14 z14_b net0455 net0456 c15 c15_b s14 s14_b SP_FA_DR
xi31 w13 w13_b x13 x13_b y13 y13_b net0455 net0456 net0551 net0552 SP_FA_DR
xi30 net0551 net0552 z13 z13_b net0459 net0460 c14 c14_b s13 s13_b SP_FA_DR
xi29 net0554 net0553 z7 z7_b net0483 net0484 c8 c8_b s7 s7_b SP_FA_DR
xi28 w7 w7_b x7 x7_b y7 y7_b net0479 net0480 net0554 net0553 SP_FA_DR
xi27 net0556 net0555 z8 z8_b net0479 net0480 c9 c9_b s8 s8_b SP_FA_DR
xi26 w8 w8_b x8 x8_b y8 y8_b net0475 net0476 net0556 net0555 SP_FA_DR
xi25 net0558 net0557 z9 z9_b net0475 net0476 c10 c10_b s9 s9_b SP_FA_DR
xi24 w9 w9_b x9 x9_b y9 y9_b net0471 net0472 net0558 net0557 SP_FA_DR
xi23 net0560 net0559 z10 z10_b net0471 net0472 c11 c11_b s10 s10_b SP_FA_DR
xi22 w10 w10_b x10 x10_b y10 y10_b net0467 net0468 net0560 net0559 SP_FA_DR
xi21 net0564 net0563 z12 z12_b net0463 net0464 c13 c13_b s12 s12_b SP_FA_DR
xi20 w12 w12_b x12 x12_b y12 y12_b net0459 net0460 net0564 net0563 SP_FA_DR
xi19 w11 w11_b x11 x11_b y11 y11_b net0463 net0464 net0562 net0561 SP_FA_DR
xi18 net0562 net0561 z11 z11_b net0467 net0468 c12 c12_b s11 s11_b SP_FA_DR
xi17 net0566 net0565 z6 z6_b net0487 net0488 c7 c7_b s6 s6_b SP_FA_DR
xi16 w6 w6_b x6 x6_b y6 y6_b net0483 net0484 net0566 net0565 SP_FA_DR
xi15 w5 w5_b x5 x5_b y5 y5_b net0487 net0488 net0567 net0568 SP_FA_DR
xi14 net0567 net0568 z5 z5_b net0491 net0492 c6 c6_b s5 s5_b SP_FA_DR
xi13 net0570 net0569 z3 z3_b net0499 net0500 c4 c4_b s3 s3_b SP_FA_DR
xi12 w3 w3_b x3 x3_b y3 y3_b net0495 net0496 net0570 net0569 SP_FA_DR
xi11 w4 w4_b x4 x4_b y4 y4_b net0491 net0492 net0571 net0572 SP_FA_DR
xi10 net0571 net0572 z4 z4_b net0495 net0496 c5 c5_b s4 s4_b SP_FA_DR
xi9 net0574 net0573 z2 z2_b net34 net33 c3 c3_b s2 s2_b SP_FA_DR
xi8 w2 w2_b x2 x2_b y2 y2_b net0499 net0500 net0574 net0573 SP_FA_DR
xi3 net24 net23 z1 z1_b net3 net4 c2 c2_b s1 s1_b SP_FA_DR
xi2 net20 net19 z0 z0_b 0 vdd! c1 c1_b s0 s0_b SP_FA_DR
xi1 w1 w1_b x1 x1_b y1 y1_b net34 net33 net24 net23 SP_FA_DR
xi0 w0 w0_b x0 x0_b y0 y0_b net3 net4 net20 net19 SP_FA_DR
.ends SP_42CSA_DR
** End of subcircuit definition.

** Library name: my
** Cell name: SP_XOR_DR
** View name: schematic
.subckt SP_XOR_DR _net1 _net2 _net0 a b p
m12 p4 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 p4 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m8 p2 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 p2 _net1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m5 p3 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 p3 _net1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 p1 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 p1 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m13 p4 a net033 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m10 net033 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m9 p2 _net1 net033 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m6 p3 _net1 net2 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net2 _net2 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 p1 a net2 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi14 p4 p3 _net0 NAND2
xi13 p2 p1 p NAND2
.ends SP_XOR_DR
** End of subcircuit definition.

** Library name: my
** Cell name: SP_AND_DR
** View name: schematic
.subckt SP_AND_DR a b out _net1 _net0 out_b
m10 o2 out_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m9 o2 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m7 o1 out_b vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 o1 _net1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 net12 out vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net12 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m5 o1 _net1 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 o2 _net0 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net15 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 net12 a net15 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi2 net12 out INV
xi7 o1 o2 out_b NAND2
.ends SP_AND_DR
** End of subcircuit definition.

** Library name: my
** Cell name: PG_Blk
** View name: schematic
.subckt PG_Blk _net0 _net1 _net2 a b g p _net3
xi0 _net0 _net1 _net2 a b p SP_XOR_DR
xi1 a b g _net0 _net1 _net3 SP_AND_DR
.ends PG_Blk
** End of subcircuit definition.

** Library name: my
** Cell name: GREY_CELL
** View name: schematic
.subckt GREY_CELL _net0 _net1 _net2 _net3 g gi _net4 pi
m13 net06 g vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m12 net06 gi vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m10 net019 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m9 net019 _net1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 net12 g vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net12 pi vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m11 net06 gi 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 net011 _net2 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m14 net011 _net3 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m8 net019 _net1 net011 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net15 _net4 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 net12 pi net15 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi13 net019 _net0 INV
xi10 net06 net12 g NAND2
.ends GREY_CELL
** End of subcircuit definition.

** Library name: my
** Cell name: BLACK_CELL
** View name: schematic
.subckt BLACK_CELL _net0 _net1 _net2 _net7 _net3 _net6 g gi _net4 p pi _net5
xi0 _net0 _net1 _net2 _net3 g gi _net4 pi GREY_CELL
xi1 pi _net5 p _net3 _net6 _net7 SP_AND_DR
.ends BLACK_CELL
** End of subcircuit definition.

** Library name: my
** Cell name: SP_XOR
** View name: schematic
.subckt SP_XOR _net0 _net1 a b p
m8 p2 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 p2 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 p1 p vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 p1 a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m10 net033 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m9 p2 _net0 net033 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 net2 _net1 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 p1 a net2 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
xi13 p2 p1 p NAND2
.ends SP_XOR
** End of subcircuit definition.

** Library name: my
** Cell name: PPA
** View name: schematic
.subckt PPA a0 a0_b a1 a10 a10_b a11 a11_b a12 a12_b a13 a13_b a14 a14_b a15 a15_b a16 a16_b a17 a17_b a18 a18_b a19 a19_b a1_b a2 a20 a20_b a21 a21_b a22 a22_b a23 a23_b a24 a24_b a25 a25_b a26 a26_b a27 a27_b a28 a28_b a29 a29_b a2_b a3 a30 a30_b a31 a31_b a3_b a4 a4_b a5 a5_b a6 a6_b a7 a7_b a8 a8_b a9 a9_b b0 b0_b b1 b10 b10_b b11 b11_b b12 b12_b b13 b13_b b14 b14_b b15 b15_b b16 b16_b b17 b17_b b18 b18_b b19 b19_b b1_b b2 b20 b20_b b21 b21_b b22 b22_b b23 b23_b b24 b24_b b25 b25_b b26 b26_b b27 b27_b b28 b28_b b29 b29_b b2_b b3 b30 b30_b b31 b31_b b3_b b4 b4_b b5 b5_b b6 b6_b b7 b7_b b8 b8_b b9 b9_b ov s0 s1 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s2 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s3 s30 s31 s4 s5 s6 s7 s8 s9
xi43 a29_b b29_b net093 a29 b29 net0257 net0258 net092 PG_Blk
xi42 a28_b b28_b net097 a28 b28 net0261 net0262 net096 PG_Blk
xi41 a30_b b30_b net0101 a30 b30 net0265 net0266 net0100 PG_Blk
xi40 a31_b b31_b net0105 a31 b31 net0269 net0270 net0104 PG_Blk
xi39 a24_b b24_b net0109 a24 b24 net0273 net0274 net0108 PG_Blk
xi38 a25_b b25_b net0113 a25 b25 net0277 net0278 net0112 PG_Blk
xi37 a26_b b26_b net0117 a26 b26 net0281 net0282 net0116 PG_Blk
xi36 a27_b b27_b net0121 a27 b27 net0285 net0286 net0120 PG_Blk
xi35 a21_b b21_b net0125 a21 b21 net0289 net0290 net0124 PG_Blk
xi34 a20_b b20_b net0129 a20 b20 net0293 net0294 net0128 PG_Blk
xi33 a22_b b22_b net0133 a22 b22 net0297 net0298 net0132 PG_Blk
xi32 a23_b b23_b net0137 a23 b23 net0301 net0302 net0136 PG_Blk
xi31 a17_b b17_b net0141 a17 b17 net0305 net0306 net0140 PG_Blk
xi30 a16_b b16_b net0145 a16 b16 net0309 net0310 net0144 PG_Blk
xi29 a18_b b18_b net0149 a18 b18 net0313 net0314 net0148 PG_Blk
xi28 a19_b b19_b net0153 a19 b19 net0317 net0318 net0152 PG_Blk
xi27 a12_b b12_b net0157 a12 b12 net0321 net0322 net0156 PG_Blk
xi26 a13_b b13_b net0161 a13 b13 net0325 net0326 net0160 PG_Blk
xi25 a14_b b14_b net0165 a14 b14 net0329 net0330 net0164 PG_Blk
xi24 a15_b b15_b net0169 a15 b15 net0333 net0334 net0168 PG_Blk
xi23 a9_b b9_b net0173 a9 b9 net0337 net0338 net0172 PG_Blk
xi22 a8_b b8_b net0177 a8 b8 net0339 net0340 net0176 PG_Blk
xi21 a10_b b10_b net0181 a10 b10 net0341 net0342 net0180 PG_Blk
xi20 a11_b b11_b net0185 a11 b11 net0345 net0346 net0184 PG_Blk
xi19 a4_b b4_b net0189 a4 b4 net0349 net0350 net0188 PG_Blk
xi18 a5_b b5_b net0193 a5 b5 net0351 net0352 net0192 PG_Blk
xi17 a6_b b6_b net0197 a6 b6 net0353 net0354 net0196 PG_Blk
xi16 a7_b b7_b net0201 a7 b7 net0355 net0356 net0200 PG_Blk
xi3 a3_b b3_b net2 a3 b3 net90 net49 net1 PG_Blk
xi2 a2_b b2_b net38 a2 b2 net96 net03 net5 PG_Blk
xi1 a1_b b1_b net37 a1 b1 net82 net05 net9 PG_Blk
xi0 a0_b b0_b net14 a0 b0 net83 net07 net01524 PG_Blk
xi196 net01340 net01528 net01372 net01527 net0551 net01180 net01186 net01098 GREY_CELL
xi195 net01342 net01522 net01570 net01521 net0552 net01196 net01304 net01172 GREY_CELL
xi194 net01350 net01516 net01574 net01515 net0556 net01216 net0604 net01094 GREY_CELL
xi193 net01346 net01504 net01378 net01503 net0582 net01171 net01189 net01173 GREY_CELL
xi192 net01348 net01510 net01582 net01509 net0555 net01093 net01190 net01092 GREY_CELL
xi191 0 net01546 net01360 net01545 ov net01105 net0561 net01104 GREY_CELL
xi190 net01338 net01540 net01370 net01539 net0550 net01103 net0600 net01225 GREY_CELL
xi189 net01336 net01534 net01594 net01533 net0549 net01146 net01267 net01100 GREY_CELL
xi188 net01362 net01459 net01524 net01458 net0562 net0967 net83 net0966 GREY_CELL
xi187 net01364 net01490 net01262 net01489 net0563 net01143 net64 net01038 GREY_CELL
xi186 net01366 net01484 net01585 net01483 net0564 net01037 net0894 net01116 GREY_CELL
xi185 net01358 net01478 net01001 net01477 net0599 net01115 net068 net01034 GREY_CELL
xi184 net01356 net01454 net01388 net01453 net0593 net01027 net01275 net01154 GREY_CELL
xi183 net01354 net01133 net01184 net01139 net0558 net01106 net0892 net01028 GREY_CELL
xi182 net01352 net01466 net01384 net01465 net0557 net01117 net0573 net01091 GREY_CELL
xi181 net01344 net01472 net01376 net01471 net0609 net01097 net0569 net01032 GREY_CELL
xi164 net01372 net01266 net01388 net01265 net01186 net0996 net01275 net0995 GREY_CELL
xi163 net01370 net01272 net01184 net01271 net0600 net0925 net0892 net0924 GREY_CELL
xi162 net01360 net01284 net01376 net01283 net0561 net0980 net0569 net0961 GREY_CELL
xi161 net01594 net01278 net01384 net01277 net01267 net0927 net0573 net0926 GREY_CELL
xi160 net01570 net01290 net01001 net01289 net01304 net0931 net068 net0930 GREY_CELL
xi159 net01574 net01296 net01585 net01295 net0604 net0933 net0894 net0932 GREY_CELL
xi158 net01582 net01302 net01262 net01301 net01190 net01040 net64 net01009 GREY_CELL
xi157 net01378 net01308 net01524 net01307 net01189 net0969 net83 net0994 GREY_CELL
xi132 net01384 net0941 net01585 net0940 net0573 net0702 net0894 net0690 GREY_CELL
xi131 net01376 net0935 net01001 net0934 net0569 net0670 net068 net0692 GREY_CELL
xi130 net01388 net0953 net01524 net0952 net01275 net0580 net83 net0579 GREY_CELL
xi129 net01184 net0947 net01262 net0946 net0892 net0682 net64 net0681 GREY_CELL
xi6 net01001 net20 net01262 net19 net068 net86 net64 net78 GREY_CELL
xi5 net01585 net24 net01524 net35 net0894 net79 net83 net81 GREY_CELL
xi4 net01262 net9 net01524 net37 net64 net82 net83 net05 GREY_CELL
xi180 net01504 net01212 net01260 net01503 net01211 net01259 net01171 net0905 net0921 net01173 net0904 net01026 BLACK_CELL
xi179 net01510 net01206 net01254 net01509 net01205 net01253 net01093 net0903 net0919 net01092 net0902 net0997 BLACK_CELL
xi178 net01516 net01200 net01248 net01515 net01199 net01247 net01216 net0901 net0991 net01094 net0900 net01031 BLACK_CELL
xi177 net01522 net01194 net01242 net01521 net01193 net01241 net01196 net0899 net0915 net01172 net0898 net01033 BLACK_CELL
xi176 net01528 net01170 net01218 net01527 net01169 net01217 net01180 net0891 net0907 net01098 net0890 net0906 BLACK_CELL
xi175 net01534 net01182 net01230 net01533 net01181 net01229 net01146 net0895 net0975 net01100 net01022 net0984 BLACK_CELL
xi174 net01540 net01176 net01224 net01539 net01175 net01223 net01103 net0893 net0909 net01225 net01039 net0908 BLACK_CELL
xi173 net01546 net01188 net01236 net01545 net01187 net01235 net01105 net0897 net0913 net01104 net0896 net0912 BLACK_CELL
xi172 net01454 net01218 net01266 net01453 net01217 net01265 net01027 net0907 net0996 net01154 net0906 net0995 BLACK_CELL
xi171 net01133 net01224 net01272 net01139 net01223 net01271 net01106 net0909 net0925 net01028 net0908 net0924 BLACK_CELL
xi170 net01466 net01230 net01278 net01465 net01229 net01277 net01117 net0975 net0927 net01091 net0984 net0926 BLACK_CELL
xi169 net01472 net01236 net01284 net01471 net01235 net01283 net01097 net0913 net0980 net01032 net0912 net0961 BLACK_CELL
xi168 net01478 net01242 net01290 net01477 net01241 net01289 net01115 net0915 net0931 net01034 net01033 net0930 BLACK_CELL
xi167 net01484 net01248 net01296 net01483 net01247 net01295 net01037 net0991 net0933 net01116 net01031 net0932 BLACK_CELL
xi166 net01490 net01254 net01302 net01489 net01253 net01301 net01143 net0919 net01040 net01038 net0997 net01009 BLACK_CELL
xi165 net01459 net01260 net01308 net01458 net01259 net01307 net0967 net0921 net0969 net0966 net01026 net0994 BLACK_CELL
xi156 net01170 net01006 net01054 net01169 net01005 net01053 net0891 net0716 net0732 net0890 net0715 net0731 BLACK_CELL
xi155 net01176 net01012 net01048 net01175 net01011 net01047 net0893 net0718 net0730 net01039 net0717 net0729 BLACK_CELL
xi154 net01182 net01018 net01036 net01181 net01017 net01035 net0895 net0720 net0726 net01022 net0719 net0725 BLACK_CELL
xi153 net01188 net01024 net01030 net01187 net01023 net01029 net0897 net0722 net0724 net0896 net0721 net0723 BLACK_CELL
xi152 net01194 net01030 net01042 net01193 net01029 net01041 net0899 net0724 net0728 net0898 net0723 net0727 BLACK_CELL
xi151 net01200 net01036 net01060 net01199 net01035 net01059 net0901 net0726 net0734 net0900 net0725 net0733 BLACK_CELL
xi150 net01206 net01048 net01066 net01205 net01047 net01065 net0903 net0730 net0736 net0902 net0729 net0735 BLACK_CELL
xi149 net01212 net01054 net01072 net01211 net01053 net01071 net0905 net0732 net0738 net0904 net0731 net0737 BLACK_CELL
xi148 net01218 net01072 net01096 net01217 net01071 net01095 net0907 net0738 net0746 net0906 net0737 net0745 BLACK_CELL
xi147 net01224 net01066 net01102 net01223 net01065 net01101 net0909 net0736 net0748 net0908 net0735 net0747 BLACK_CELL
xi146 net01230 net01060 net01114 net01229 net01059 net01113 net0975 net0734 net0752 net0984 net0733 net0751 BLACK_CELL
xi145 net01236 net01042 net01120 net01235 net01041 net01119 net0913 net0728 net0754 net0912 net0727 net0753 BLACK_CELL
xi144 net01242 net01120 net01108 net01241 net01119 net01107 net0915 net0754 net0750 net01033 net0753 net0749 BLACK_CELL
xi143 net01248 net01114 net01090 net01247 net01113 net01089 net0991 net0752 net0744 net01031 net0751 net0743 BLACK_CELL
xi142 net01254 net01102 net01084 net01253 net01101 net01083 net0919 net0748 net0742 net0997 net0747 net0741 BLACK_CELL
xi141 net01260 net01096 net01078 net01259 net01095 net01077 net0921 net0746 net0740 net01026 net0745 net0739 BLACK_CELL
xi140 net01266 net01078 net0929 net01265 net01077 net0928 net0996 net0740 net0652 net0995 net0739 net0699 BLACK_CELL
xi139 net01272 net01084 net0923 net01271 net01083 net0922 net0925 net0742 net0676 net0924 net0741 net0695 BLACK_CELL
xi138 net01278 net01090 net0917 net01277 net01089 net0916 net0927 net0744 net0684 net0926 net0743 net0671 BLACK_CELL
xi137 net01284 net01108 net0911 net01283 net01107 net0910 net0980 net0750 net0693 net0961 net0749 net0689 BLACK_CELL
xi136 net01290 net0911 net0935 net01289 net0910 net0934 net0931 net0693 net0670 net0930 net0689 net0692 BLACK_CELL
xi135 net01296 net0917 net0941 net01295 net0916 net0940 net0933 net0684 net0702 net0932 net0671 net0690 BLACK_CELL
xi134 net01302 net0923 net0947 net01301 net0922 net0946 net01040 net0676 net0682 net01009 net0695 net0681 BLACK_CELL
xi133 net01308 net0929 net0953 net01307 net0928 net0952 net0969 net0652 net0580 net0994 net0699 net0579 BLACK_CELL
xi128 net01006 net0542 net0560 net01005 net0541 net0559 net0716 net0798 net0804 net0715 net0797 net0803 BLACK_CELL
xi127 net01012 net0524 net0554 net01011 net0523 net0553 net0718 net0792 net0802 net0717 net0791 net0801 BLACK_CELL
xi126 net01018 net0530 net0542 net01017 net0529 net0541 net0720 net0794 net0798 net0719 net0793 net0797 BLACK_CELL
xi125 net01024 net0536 net0524 net01023 net0535 net0523 net0722 net0796 net0792 net0721 net0795 net0791 BLACK_CELL
xi124 net01030 net0554 net0566 net01029 net0553 net0565 net0724 net0802 net0806 net0723 net0801 net0805 BLACK_CELL
xi123 net01036 net0560 net0548 net01035 net0559 net0547 net0726 net0804 net0800 net0725 net0803 net0799 BLACK_CELL
xi122 net01042 net0584 net0572 net01041 net0583 net0571 net0728 net0812 net0808 net0727 net0811 net0807 BLACK_CELL
xi121 net01048 net0566 net0584 net01047 net0565 net0583 net0730 net0806 net0812 net0729 net0805 net0811 BLACK_CELL
xi120 net01054 net0548 net0578 net01053 net0547 net0577 net0732 net0800 net0810 net0731 net0799 net0809 BLACK_CELL
xi119 net01060 net0578 net0590 net01059 net0577 net0589 net0734 net0810 net0814 net0733 net0809 net0813 BLACK_CELL
xi118 net01066 net0572 net0602 net01065 net0571 net0601 net0736 net0808 net0818 net0735 net0807 net0817 BLACK_CELL
xi117 net01072 net0590 net0608 net01071 net0589 net0607 net0738 net0814 net0820 net0737 net0813 net0819 BLACK_CELL
xi116 net01078 net0638 net0656 net01077 net0637 net0655 net0740 net0830 net0836 net0739 net0829 net0835 BLACK_CELL
xi115 net01084 net0620 net0650 net01083 net0619 net0649 net0742 net0824 net0834 net0741 net0823 net0833 BLACK_CELL
xi114 net01090 net0626 net0638 net01089 net0625 net0637 net0744 net0826 net0830 net0743 net0825 net0829 BLACK_CELL
xi113 net01096 net0596 net0626 net01095 net0595 net0625 net0746 net0816 net0826 net0745 net0815 net0825 BLACK_CELL
xi112 net01102 net0614 net0632 net01101 net0613 net0631 net0748 net0822 net0828 net0747 net0821 net0827 BLACK_CELL
xi111 net01108 net0632 net0620 net01107 net0631 net0619 net0750 net0828 net0824 net0749 net0827 net0823 BLACK_CELL
xi110 net01114 net0608 net0596 net01113 net0607 net0595 net0752 net0820 net0816 net0751 net0819 net0815 BLACK_CELL
xi109 net01120 net0602 net0614 net01119 net0601 net0613 net0754 net0818 net0822 net0753 net0817 net0821 BLACK_CELL
xi107 net0911 net0650 net0914 net0910 net0649 net0661 net0693 net0834 net0509 net0689 net0833 net0507 BLACK_CELL
xi106 net0917 net0656 net0920 net0916 net0655 net0918 net0684 net0836 net0832 net0671 net0835 net0831 BLACK_CELL
xi105 net0923 net0914 net0674 net0922 net0661 net0673 net0676 net0509 net0842 net0695 net0507 net0687 BLACK_CELL
xi104 net0929 net0920 net0668 net0928 net0918 net0667 net0652 net0832 net0840 net0699 net0831 net0701 BLACK_CELL
xi103 net0935 net0674 net0686 net0934 net0673 net0936 net0670 net0842 net0846 net0692 net0687 net0539 BLACK_CELL
xi102 net0941 net0668 net0944 net0940 net0667 net0679 net0702 net0840 net0844 net0690 net0701 net0843 BLACK_CELL
xi101 net0947 net0686 net20 net0946 net0936 net19 net0682 net0846 net86 net0681 net0539 net78 BLACK_CELL
xi100 net0953 net0944 net24 net0952 net0679 net35 net0580 net0844 net79 net0579 net0843 net81 BLACK_CELL
xi71 net0524 net092 net096 net0523 net093 net097 net0792 net0257 net0261 net0791 net0258 net0262 BLACK_CELL
xi70 net0530 net0100 net092 net0529 net0101 net093 net0794 net0265 net0257 net0793 net0266 net0258 BLACK_CELL
xi69 net0536 net0104 net0100 net0535 net0105 net0101 net0796 net0269 net0265 net0795 net0270 net0266 BLACK_CELL
xi68 net0542 net096 net0120 net0541 net097 net0121 net0798 net0261 net0285 net0797 net0262 net0286 BLACK_CELL
xi67 net0548 net0108 net0136 net0547 net0109 net0137 net0800 net0273 net0301 net0799 net0274 net0302 BLACK_CELL
xi66 net0554 net0120 net0116 net0553 net0121 net0117 net0802 net0285 net0281 net0801 net0286 net0282 BLACK_CELL
xi65 net0560 net0116 net0112 net0559 net0117 net0113 net0804 net0281 net0277 net0803 net0282 net0278 BLACK_CELL
xi64 net0566 net0112 net0108 net0565 net0113 net0109 net0806 net0277 net0273 net0805 net0278 net0274 BLACK_CELL
xi63 net0572 net0124 net0128 net0571 net0125 net0129 net0808 net0289 net0293 net0807 net0290 net0294 BLACK_CELL
xi62 net0578 net0132 net0124 net0577 net0133 net0125 net0810 net0297 net0289 net0809 net0298 net0290 BLACK_CELL
xi61 net0584 net0136 net0132 net0583 net0137 net0133 net0812 net0301 net0297 net0811 net0302 net0298 BLACK_CELL
xi60 net0590 net0128 net0152 net0589 net0129 net0153 net0814 net0293 net0317 net0813 net0294 net0318 BLACK_CELL
xi59 net0596 net0144 net0168 net0595 net0145 net0169 net0816 net0309 net0333 net0815 net0310 net0334 BLACK_CELL
xi58 net0602 net0152 net0148 net0601 net0153 net0149 net0818 net0317 net0313 net0817 net0318 net0314 BLACK_CELL
xi57 net0608 net0148 net0140 net0607 net0149 net0141 net0820 net0313 net0305 net0819 net0314 net0306 BLACK_CELL
xi56 net0614 net0140 net0144 net0613 net0141 net0145 net0822 net0305 net0309 net0821 net0306 net0310 BLACK_CELL
xi55 net0620 net0160 net0156 net0619 net0161 net0157 net0824 net0325 net0321 net0823 net0326 net0322 BLACK_CELL
xi54 net0626 net0164 net0160 net0625 net0165 net0161 net0826 net0329 net0325 net0825 net0330 net0326 BLACK_CELL
xi53 net0632 net0168 net0164 net0631 net0169 net0165 net0828 net0333 net0329 net0827 net0334 net0330 BLACK_CELL
xi52 net0638 net0156 net0184 net0637 net0157 net0185 net0830 net0321 net0345 net0829 net0322 net0346 BLACK_CELL
xi51 net0920 net0176 net0200 net0918 net0177 net0201 net0832 net0339 net0355 net0831 net0340 net0356 BLACK_CELL
xi50 net0650 net0184 net0180 net0649 net0185 net0181 net0834 net0345 net0341 net0833 net0346 net0342 BLACK_CELL
xi49 net0656 net0180 net0172 net0655 net0181 net0173 net0836 net0341 net0337 net0835 net0342 net0338 BLACK_CELL
xi48 net0914 net0172 net0176 net0661 net0173 net0177 net0509 net0337 net0339 net0507 net0338 net0340 BLACK_CELL
xi47 net0668 net0196 net0192 net0667 net0197 net0193 net0840 net0353 net0351 net0701 net0354 net0352 BLACK_CELL
xi46 net0674 net0200 net0196 net0673 net0201 net0197 net0842 net0355 net0353 net0687 net0356 net0354 BLACK_CELL
xi45 net0944 net0188 net1 net0679 net0189 net2 net0844 net0349 net90 net0843 net0350 net49 BLACK_CELL
xi44 net0686 net0192 net0188 net0936 net0193 net0189 net0846 net0351 net0349 net0539 net0352 net0350 BLACK_CELL
xi8 net20 net1 net5 net19 net2 net38 net86 net90 net96 net78 net49 net03 BLACK_CELL
xi7 net24 net5 net9 net35 net38 net37 net79 net96 net82 net81 net03 net05 BLACK_CELL
xi99 net0105 net01336 net0270 net0549 s31 SP_XOR
xi98 net0101 net01338 net0266 net0550 s30 SP_XOR
xi97 net093 net01340 net0258 net0551 s29 SP_XOR
xi96 net097 net01342 net0262 net0552 s28 SP_XOR
xi95 net0109 net01344 net0274 net0609 s24 SP_XOR
xi94 net0113 net01346 net0278 net0582 s25 SP_XOR
xi93 net0117 net01348 net0282 net0555 s26 SP_XOR
xi92 net0121 net01350 net0286 net0556 s27 SP_XOR
xi91 net0137 net01352 net0302 net0557 s23 SP_XOR
xi90 net0133 net01354 net0298 net0558 s22 SP_XOR
xi89 net0125 net01356 net0290 net0593 s21 SP_XOR
xi88 net0129 net01358 net0294 net0599 s20 SP_XOR
xi87 net0145 net01360 net0310 net0561 s16 SP_XOR
xi86 net0141 net01362 net0306 net0562 s17 SP_XOR
xi85 net0149 net01364 net0314 net0563 s18 SP_XOR
xi84 net0153 net01366 net0318 net0564 s19 SP_XOR
xi83 net0169 net01594 net0334 net01267 s15 SP_XOR
xi82 net0165 net01370 net0330 net0600 s14 SP_XOR
xi81 net0161 net01372 net0326 net01186 s13 SP_XOR
xi80 net0157 net01570 net0322 net01304 s12 SP_XOR
xi79 net0177 net01376 net0340 net0569 s8 SP_XOR
xi78 net0173 net01378 net0338 net01189 s9 SP_XOR
xi77 net0181 net01582 net0342 net01190 s10 SP_XOR
xi76 net0185 net01574 net0346 net0604 s11 SP_XOR
xi75 net0201 net01384 net0356 net0573 s7 SP_XOR
xi74 net0197 net01184 net0354 net0892 s6 SP_XOR
xi73 net0193 net01388 net0352 net01275 s5 SP_XOR
xi72 net0189 net01001 net0350 net068 s4 SP_XOR
xi12 net2 net01585 net49 net0894 s3 SP_XOR
xi11 net38 net01262 net03 net64 s2 SP_XOR
xi10 net37 net01524 net05 net83 s1 SP_XOR
xi9 net14 vdd! net07 0 s0 SP_XOR
.ends PPA
** End of subcircuit definition.

** Library name: my
** Cell name: 42CSA_test
** View name: schematic
c31 s12 0 1e-15
c32 ov 0 1e-15
c3 s28 0 1e-15
c5 s26 0 1e-15
c4 s27 0 1e-15
c2 s29 0 1e-15
c8 s16 0 1e-15
c7 s24 0 1e-15
c10 s18 0 1e-15
c9 s17 0 1e-15
c6 s25 0 1e-15
c13 s22 0 1e-15
c12 s23 0 1e-15
c11 s19 0 1e-15
c16 s4 0 1e-15
c15 s20 0 1e-15
c18 s6 0 1e-15
c17 s5 0 1e-15
c14 s21 0 1e-15
c20 s3 0 1e-15
c21 s2 0 1e-15
c19 s7 0 1e-15
c23 s0 0 1e-15
c24 s8 0 1e-15
c25 s9 0 1e-15
c26 s10 0 1e-15
c22 s1 0 1e-15
c1 s30 0 1e-15
c0 s31 0 1e-15
c29 s14 0 1e-15
c27 s11 0 1e-15
c28 s15 0 1e-15
c30 s13 0 1e-15
v0 vdd! 0 DC=1.1
xi337 net0600 0 0 net0407 0 0 pc PC_CTRL
xi201 y0_b y1_b _y0 y0 _y1 y1 pc PC_CTRL
xi200 y2_b y3_b _y2 y2 _y3 y3 pc PC_CTRL
xi199 y4_b y5_b _y4 y4 _y5 y5 pc PC_CTRL
xi198 y6_b y7_b _y6 y6 _y7 y7 pc PC_CTRL
xi197 y8_b y9_b _y8 y8 _y9 y9 pc PC_CTRL
xi196 y10_b y11_b _y10 y10 _y11 y11 pc PC_CTRL
xi195 y12_b y13_b _y12 y12 _y13 y13 pc PC_CTRL
xi194 y14_b y15_b _y14 y14 _y15 y15 pc PC_CTRL
xi193 y16_b y17_b _y16 y16 _y17 y17 pc PC_CTRL
xi192 y18_b y19_b _y18 y18 _y19 y19 pc PC_CTRL
xi191 y20_b y21_b _y20 y20 _y21 y21 pc PC_CTRL
xi190 y22_b y23_b _y22 y22 _y23 y23 pc PC_CTRL
xi185 y24_b y25_b _y24 y24 _y25 y25 pc PC_CTRL
xi184 y26_b y27_b _y26 y26 _y27 y27 pc PC_CTRL
xi183 y28_b y29_b _y28 y28 _y29 y29 pc PC_CTRL
xi182 y30_b y31_b _y30 y30 _y31 y31 pc PC_CTRL
xi177 z0_b z1_b _z0 z0 _z1 z1 pc PC_CTRL
xi176 z2_b z3_b _z2 z2 _z3 z3 pc PC_CTRL
xi175 z4_b z5_b _z4 z4 _z5 z5 pc PC_CTRL
xi174 z6_b z7_b _z6 z6 _z7 z7 pc PC_CTRL
xi169 z8_b z9_b _z8 z8 _z9 z9 pc PC_CTRL
xi168 z10_b z11_b _z10 z10 _z11 z11 pc PC_CTRL
xi167 z12_b z13_b _z12 z12 _z13 z13 pc PC_CTRL
xi166 z14_b z15_b _z14 z14 _z15 z15 pc PC_CTRL
xi161 z16_b z17_b _z16 z16 _z17 z17 pc PC_CTRL
xi160 z18_b z19_b _z18 z18 _z19 z19 pc PC_CTRL
xi159 z20_b z21_b _z20 z20 _z21 z21 pc PC_CTRL
xi158 z22_b z23_b _z22 z22 _z23 z23 pc PC_CTRL
xi153 z24_b z25_b _z24 z24 _z25 z25 pc PC_CTRL
xi152 z26_b z27_b _z26 z26 _z27 z27 pc PC_CTRL
xi151 z28_b z29_b _z28 z28 _z29 z29 pc PC_CTRL
xi150 z30_b z31_b _z30 z30 _z31 z31 pc PC_CTRL
xi135 x16_b x17_b _x16 x16 _x17 x17 pc PC_CTRL
xi134 x18_b x19_b _x18 x18 _x19 x19 pc PC_CTRL
xi133 x20_b x21_b _x20 x20 _x21 x21 pc PC_CTRL
xi132 x22_b x23_b _x22 x22 _x23 x23 pc PC_CTRL
xi131 x26_b x27_b _x26 x26 _x27 x27 pc PC_CTRL
xi130 x28_b x29_b _x28 x28 _x29 x29 pc PC_CTRL
xi129 x30_b x31_b _x30 x30 _x31 x31 pc PC_CTRL
xi128 x24_b x25_b _x24 x24 _x25 x25 pc PC_CTRL
xi116 x6_b x7_b _x6 x6 _x7 x7 pc PC_CTRL
xi119 x4_b x5_b _x4 x4 _x5 x5 pc PC_CTRL
xi118 x2_b x3_b _x2 x2 _x3 x3 pc PC_CTRL
xi117 x0_b x1_b _x0 x0 _x1 x1 pc PC_CTRL
xi103 w26_b w27_b _w26 w26 _w27 w27 pc PC_CTRL
xi102 w28_b w29_b _w28 w28 _w29 w29 pc PC_CTRL
xi101 w30_b w31_b _w30 w30 _w31 w31 pc PC_CTRL
xi100 w24_b w25_b _w24 w24 _w25 w25 pc PC_CTRL
xi95 w18_b w19_b _w18 w18 _w19 w19 pc PC_CTRL
xi94 w20_b w21_b _w20 w20 _w21 w21 pc PC_CTRL
xi93 w22_b w23_b _w22 w22 _w23 w23 pc PC_CTRL
xi92 w16_b w17_b _w16 w16 _w17 w17 pc PC_CTRL
xi87 w10_b w11_b _w10 w10 _w11 w11 pc PC_CTRL
xi86 w12_b w13_b _w12 w12 _w13 w13 pc PC_CTRL
xi85 w14_b w15_b _w14 w14 _w15 w15 pc PC_CTRL
xi84 w8_b w9_b _w8 w8 _w9 w9 pc PC_CTRL
xi70 x8_b x9_b _x8 x8 _x9 x9 pc PC_CTRL
xi68 x10_b x11_b _x10 x10 _x11 x11 pc PC_CTRL
xi66 x12_b x13_b _x12 x12 _x13 x13 pc PC_CTRL
xi64 x14_b x15_b _x14 x14 _x15 x15 pc PC_CTRL
xi79 w2_b w3_b _w2 w2 _w3 w3 pc PC_CTRL
xi77 w6_b w7_b _w6 w6 _w7 w7 pc PC_CTRL
xi78 w4_b w5_b _w4 w4 _w5 w5 pc PC_CTRL
xi76 w0_b w1_b _w0 w0 _w1 w1 pc PC_CTRL



v96 pc 0 PULSE 0 1.1 0 10e-12 10e-12 2.6E-9 5E-9

v26	_w0	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v31	_w1	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v25	_w2	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v30	_w3	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v24	_w4	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v29	_w5	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v27	_w6	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v28	_w7	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v34	_w8	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v39	_w9	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v33	_w10	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v38	_w11	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v32	_w12	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v37	_w13	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v35	_w14	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v36	_w15	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v42	_w16	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v47	_w17	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v41	_w18	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v46	_w19	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v40	_w20	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v45	_w21	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v43	_w22	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v44	_w23	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v50	_w24	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v55	_w25	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v49	_w26	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v54	_w27	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v48	_w28	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v53	_w29	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v51	_w30	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v52	_w31	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09


v65	_x0	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v69	_x1	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v64	_x2	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v68	_x3	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v66	_x4	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v70	_x5	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v67	_x6	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v71	_x7	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v23	_x8	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v22	_x9	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v21	_x10	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v20	_x11	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v19	_x12	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v18	_x13	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v17	_x14	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v16	_x15	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v81	_x16	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v86	_x17	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v82	_x18	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v87	_x19	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v80	_x20	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v85	_x21	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v83	_x22	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v84	_x23	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v74	_x24	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v79	_x25	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v73	_x26	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v78	_x27	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v72	_x28	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v77	_x29	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v75	_x30	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v76	_x31	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09

v147	_y0	0	PULSE	0	1.1	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v152	_y1	0	PULSE	0	1.1	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v146	_y2	0	PULSE	0	1.1	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v151	_y3	0	PULSE	0	1.1	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v145	_y4	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v150	_y5	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v148	_y6	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v149	_y7	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v139	_y8	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v144	_y9	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v138	_y10	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v143	_y11	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v137	_y12	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v142	_y13	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v140	_y14	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v141	_y15	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v131	_y16	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v136	_y17	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v130	_y18	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v135	_y19	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v129	_y20	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v134	_y21	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v132	_y22	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v133	_y23	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v123	_y24	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v128	_y25	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v122	_y26	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v127	_y27	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v121	_y28	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v126	_y29	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v124	_y30	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v125	_y31	0	PULSE	1.1	0	0.00E+00	1.00E-11	1.00E-11	3.00E-09	5.00E-09

v115	_z0	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v120	_z1	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v114	_z2	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v119	_z3	0	PULSE	0	1.1	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v113	_z4	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v118	_z5	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v116	_z6	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v117	_z7	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v107	_z8	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v112	_z9	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v106	_z10	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v111	_z11	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v105	_z12	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v110	_z13	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v108	_z14	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v109	_z15	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v99	_z16	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v104	_z17	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v98	_z18	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v103	_z19	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v97	_z20	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v102	_z21	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v100	_z22	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v101	_z23	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v90	_z24	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v95	_z25	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v89	_z26	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v94	_z27	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v88	_z28	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v93	_z29	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v91	_z30	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09
v92	_z31	0	PULSE	1.1	0	0	1.00E-11	1.00E-11	3.00E-09	5.00E-09


xi136 net404 net422 net423 net424 net425 net426 net427 net428 net429 net430 net431 net432 net433 net434 net435 net436 net437 net438 net439 net440 net441 net405 net406 net442 net443 net444 net445 net446 net447 net448 net449 net450 net451 net452 net453 net454 net455 net456 net457 net458 net459 net460 net461 net407 net408 net462 net463 net464 net465 net409 net410 net411 net412 net413 net414 net415 net416 net417 net418 net419 net420 net421 net466 net467 net468 net486 net487 net488 net489 net490 net491 net492 net493 net494 net495 net496 net497 net498 net499 net500 net501 net502 net503 net504 net505 net469 net470 net506 net507 net508 net509 net510 net511 net512 net513 net514 net515 net516 net517 net518 net519 net520 net521 net522 net523 net524 net525 net471 net472 net526 net527 net528 net532 net473 net474 net475 net476 net477 net478 net479 net480 net481 net482 net483 net484 net485 w0 w0_b w1 w10 w10_b w11 w11_b w12 w12_b w13 w13_b w14 w14_b w15 w15_b w16 w16_b w17 w17_b w18 w18_b w19 w19_b w1_b w2 w20 w20_b w21
+w21_b w22 w22_b w23 w23_b w24 w24_b w25 w25_b w26 w26_b w27 w27_b w28 w28_b w29 w29_b w2_b w3 w30 w30_b w31 w31_b w3_b w4 w4_b w5 w5_b w6 w6_b w7 w7_b w8 w8_b w9 w9_b x0 x0_b x1 x10 x10_b x11 x11_b x12 x12_b x13 x13_b x14 x14_b x15 x15_b x16 x16_b x17 x17_b x18 x18_b x19 x19_b x1_b x2 x20 x20_b x21 x21_b x22 x22_b x23 x23_b x24 x24_b x25 x25_b x26 x26_b x27 x27_b x28 x28_b x29 x29_b x2_b x3 x30 x30_b x31 x31_b x3_b x4 x4_b x5 x5_b x6 x6_b x7 x7_b x8 x8_b x9 x9_b y0 y0_b y1 y10 y10_b y11 y11_b y12 y12_b y13 y13_b y14 y14_b y15 y15_b y16 y16_b y17 y17_b y18 y18_b y19 y19_b y1_b y2 y20 y20_b y21 y21_b y22 y22_b y23 y23_b y24 y24_b y25 y25_b y26 y26_b y27 y27_b y28 y28_b y29 y29_b y2_b y3 y30 y30_b y31 y31_b y3_b y4 y4_b y5 y5_b y6 y6_b y7 y7_b y8 y8_b y9 y9_b z0 z0_b z1 z10 z10_b z11 z11_b z12 z12_b z13 z13_b z14 z14_b z15 z15_b z16 z16_b z17 z17_b z18 z18_b z19 z19_b z1_b z2 z20 z20_b z21 z21_b z22 z22_b z23 z23_b z24 z24_b z25 z25_b z26 z26_b z27 z27_b z28 z28_b z29 z29_b z2_b z3 z30 z30_b z31 z31_b z3_b z4
+z4_b z5 z5_b z6 z6_b z7 z7_b z8 z8_b z9 z9_b SP_42CSA_DR
xi300 net0407 net0600 net404 net422 net423 net424 net425 net426 net427 net428 net429 net430 net431 net432 net433 net434 net435 net436 net437 net438 net439 net440 net441 net405 net406 net442 net443 net444 net445 net446 net447 net448 net449 net450 net451 net452 net453 net454 net455 net456 net457 net458 net459 net460 net461 net407 net408 net462 net463 net464 net465 net409 net410 net411 net412 net413 net414 net415 net416 net417 net418 net419 net420 net421 net466 net467 net468 net486 net487 net488 net489 net490 net491 net492 net493 net494 net495 net496 net497 net498 net499 net500 net501 net502 net503 net504 net505 net469 net470 net506 net507 net508 net509 net510 net511 net512 net513 net514 net515 net516 net517 net518 net519 net520 net521 net522 net523 net524 net525 net471 net472 net526 net527 net528 net532 net473 net474 net475 net476 net477 net478 net479 net480 net481 net482 net483 net484 net485 ov s0 s1 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s2 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s3 s30 s31 s4 s5 s6 s7 s8
+s9 PPA
.END
