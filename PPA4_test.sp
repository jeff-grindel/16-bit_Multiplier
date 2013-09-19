** Generated for: hspiceD
** Generated on: Jun  7 12:15:24 2013
** Design library name: my
** Design cell name: PPA4_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 800e-12 START=0.0

.OP

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    POST
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
** Cell name: PPA4
** View name: schematic
.subckt PPA4 a0 a0_b a1 a1_b a2 a2_b a3 a3_b b0 b0_b b1 b1_b b2 b2_b b3 b3_b s0 s1 s2 s3
xi3 a3_b b3_b net2 a3 b3 net90 net49 net1 PG_Blk
xi2 a2_b b2_b net38 a2 b2 net96 net03 net5 PG_Blk
xi1 a1_b b1_b net37 a1 b1 net82 net05 net9 PG_Blk
xi0 a0_b b0_b net14 a0 b0 net83 net07 net22 PG_Blk
xi6 0 net20 net46 net19 0 net86 net64 net78 GREY_CELL
xi5 net44 net24 net22 net35 net60 net79 net83 net81 GREY_CELL
xi4 net46 net9 net22 net37 net64 net82 net83 net05 GREY_CELL
xi8 net20 net1 net5 net19 net2 net38 net86 net90 net96 net78 net49 net03 BLACK_CELL
xi7 net24 net5 net9 net35 net38 net37 net79 net96 net82 net81 net03 net05 BLACK_CELL
xi12 net2 net44 net49 net60 s3 SP_XOR
xi11 net38 net46 net03 net64 s2 SP_XOR
xi10 net37 net22 net05 net83 s1 SP_XOR
xi9 net14 vdd! net07 0 s0 SP_XOR
.ends PPA4
** End of subcircuit definition.

** Library name: my
** Cell name: PPA4_test
** View name: schematic
c3 s0 0 1e-15
c2 s1 0 1e-15
c1 s2 0 1e-15
c0 s3 0 1e-15
v0 vdd! 0 DC=1.1
xi25 net21 net23 a2 net20 a3 net22 pc PC_CTRL
xi26 net25 net27 b0 net24 b1 net26 pc PC_CTRL
xi24 net17 net19 a0 net16 a1 net18 pc PC_CTRL
xi27 net29 net31 b2 net28 b3 net30 pc PC_CTRL
v15 a0 0 PULSE 0   1.1 0 10e-12 10e-12 240e-12 400e-12
v14 a1 0 PULSE 1.1  0  0 10e-12 10e-12 240e-12 400e-12
v12 a2 0 PULSE 1.1  0  0 10e-12 10e-12 240e-12 400e-12
v13 a3 0 PULSE 1.1  0  0 10e-12 10e-12 240e-12 400e-12

v11 b0 0 PULSE 0   1.1  0 10e-12 10e-12 240e-12 400e-12
v10 b1 0 PULSE 0   1.1  0 10e-12 10e-12 240e-12 400e-12
v3  b2 0 PULSE 0   1.1  0 10e-12 10e-12 240e-12 400e-12
v2  b3 0 PULSE 1.1  0  0 10e-12 10e-12 240e-12 400e-12

v1 pc 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12
xi23 net16 net17 net18 net19 net20 net21 net22 net23 net24 net25 net26 net27 net28 net29 net30 net31 s0 s1 s2 s3 PPA4
.END
