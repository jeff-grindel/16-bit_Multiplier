** Generated for: hspiceD
** Generated on: May 23 17:39:28 2013
** Design library name: my
** Design cell name: BLACK_CELL_test
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
** Cell name: GREY_CELL
** View name: schematic
.subckt GREY_CELL _net0 _net1 _net2 _net3 g gi _net4 pi
m13 net06 net026 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m12 net06 gi vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m10 net019 _net0 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m9 net019 _net1 vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 net12 net026 vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
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
** Cell name: BLACK_CELL
** View name: schematic
.subckt BLACK_CELL _net0 _net1 _net2 _net7 _net3 _net6 g gi _net4 p pi _net5
xi0 _net0 _net1 _net2 _net3 g gi _net4 pi GREY_CELL
xi1 pi _net5 p _net3 _net6 _net7 SP_AND_DR
.ends BLACK_CELL
** End of subcircuit definition.

** Library name: my
** Cell name: BLACK_CELL_test
** View name: schematic
c3 p_b 0 1e-15
c2 p 0 1e-15
c1 g_b 0 1e-15
c0 g 0 1e-15
v0 vdd! 0 DC=1.1

v9 pi 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12
v8 pi_1 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12
v2 gi 0 PULSE 1.1 0 0 10e-12 10e-12 200e-12 400e-12
v3 gi_1 0 PULSE 1.1 0 0 10e-12 10e-12 200e-12 400e-12

v1 pc 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12

xi22 net18 net17 gi net7 gi_1 net11 pc PC_CTRL
xi20 net24 net23 pi net27 pi_1 net31 pc PC_CTRL
xi13 g_b net18 net17 p_b net24 net23 g net7 net11 p net27 net31 BLACK_CELL
.END
