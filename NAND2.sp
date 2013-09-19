* SPICE NETLIST
***************************************

.SUBCKT NAND2 A gnd! B OUT vdd!
** N=6 EP=5 IP=0 FDC=4
M0 6 A gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=210 $Y=-360 $D=1
M1 OUT B 6 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=590 $Y=-360 $D=1
M2 OUT A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=210 $Y=670 $D=0
M3 vdd! B OUT vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=590 $Y=670 $D=0
.ENDS
***************************************
