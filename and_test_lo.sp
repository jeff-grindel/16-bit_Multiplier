** Generated for: hspiceD
** Generated on: Jun  1 19:32:56 2013
** Design library name: my
** Design cell name: AND2_test
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
.INCLUDE "AND2.pex.netlist"

** Library name: my
** Cell name: AND2_test
** View name: schematic
c0 out 0 1e-15
v0 vdd! 0 DC=1.1
v2 b 0 PULSE 0 1.1 0 10e-12 10e-12 40e-12 100e-12
v1 a 0 PULSE 0 1.1 0 10e-12 10e-12 40e-12 100e-12
xi0 a b gnd! vdd! out AND2
.END
