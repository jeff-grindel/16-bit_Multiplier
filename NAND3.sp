* SPICE NETLIST
***************************************

.SUBCKT NAND3 C B A gnd! vdd! OUT
** N=8 EP=6 IP=0 FDC=6
M0 7 A gnd! gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=210 $Y=-1120 $D=1
M1 8 B 7 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=3.78e-14 PD=8.2e-07 PS=8.2e-07 $X=590 $Y=-1120 $D=1
M2 OUT C 8 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.105e-14 AS=3.78e-14 PD=7.7e-07 PS=8.2e-07 $X=970 $Y=-1120 $D=1
M3 OUT A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=210 $Y=670 $D=0
M4 vdd! B OUT vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.52e-14 PD=6.4e-07 PS=6.4e-07 $X=590 $Y=670 $D=0
M5 OUT C vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=970 $Y=670 $D=0
.ENDS
***************************************
