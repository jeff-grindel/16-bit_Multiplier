* SPICE NETLIST
***************************************

.SUBCKT AND2 A B gnd! vdd! out
** N=7 EP=5 IP=0 FDC=6
M0 7 A gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1695 $Y=165 $D=1
M1 3 B 7 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=2075 $Y=165 $D=1
M2 out 3 gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=3160 $Y=215 $D=1
M3 3 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1695 $Y=1195 $D=0
M4 vdd! B 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2075 $Y=1195 $D=0
M5 out 3 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=3160 $Y=1195 $D=0
.ENDS
***************************************
