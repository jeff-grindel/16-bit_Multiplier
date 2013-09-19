** Generated for: hspiceD
** Generated on: May 23 10:33:42 2013
** Design library name: my
** Design cell name: SP_AND2_test
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
** Cell name: SP_AND2_test
** View name: schematic
c1 out_b 0 1e-15
c0 out 0 1e-15
v0 vdd! 0 DC=1.1
v3 a 0 PULSE 0 1.1 0 10e-12 10e-12 240e-12 400e-12
v2 b 0 PULSE 1.1 0 0 10e-12 10e-12 240e-12 400e-12
v1 pc 0 PULSE 0 1.1 0 10e-12 10e-12 200e-12 400e-12
xi5 net014 net015 a net11 b net9 pc PC_CTRL
xi6 net11 net9 out net014 net015 out_b SP_AND_DR
.END
