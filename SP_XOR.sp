* SPICE NETLIST
***************************************

.SUBCKT SP_XOR P !A B !B A gnd! vdd!
** N=12 EP=7 IP=0 FDC=12
M0 10 !B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=675 $Y=110 $D=1
M1 1 A 10 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1055 $Y=110 $D=1
M2 11 !A 3 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.745e-14 PD=6.4e-07 PS=6.65e-07 $X=2745 $Y=110 $D=1
M3 gnd! B 11 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.52e-14 PD=5.85e-07 PS=6.4e-07 $X=3125 $Y=110 $D=1
M4 12 1 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=5135 $Y=110 $D=1
M5 P 3 12 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=5515 $Y=110 $D=1
M6 1 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=2740 $D=0
M7 vdd! P 1 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=2740 $D=0
M8 3 P vdd! vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2305 $Y=2740 $D=0
M9 vdd! !A 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3125 $Y=2740 $D=0
M10 P 1 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=5135 $Y=1140 $D=0
M11 vdd! 3 P vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=5515 $Y=1140 $D=0
.ENDS
***************************************
