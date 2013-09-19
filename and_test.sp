** Generated for: hspiceD
** Generated on: May 17 20:49:12 2013
** Design library name: my
** Design cell name: and_test
** Design view name: schematic
.GLOBAL vdd!


.TRAN 1e-12 200e-12 START=0.0

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
** Cell name: inv
** View name: schematic
.subckt inv in out
m0 out in vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m1 out in 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends inv
** End of subcircuit definition.

** Library name: my
** Cell name: nand
** View name: schematic
.subckt nand a b out
m1 net16 b 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m0 out a net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m3 out b vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
m2 out a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=18.9e-15 AS=18.9e-15 PD=390e-9 PS=390e-9 M=1
.ends nand
** End of subcircuit definition.

** Library name: my
** Cell name: and
** View name: schematic
.subckt and a b out
xi0 net7 out inv
xi1 a b net7 nand
.ends and
** End of subcircuit definition.

** Library name: my
** Cell name: and_test
** View name: schematic
xi0 net4 net5 net6 and
c0 net6 0 1e-15
v0 vdd! 0 DC=1.1
v2 net5 0 PULSE 0 1.1 0 10e-12 10e-12 40e-12 100e-12
v1 net4 0 PULSE 0 1.1 0 10e-12 10e-12 40e-12 100e-12
.END
