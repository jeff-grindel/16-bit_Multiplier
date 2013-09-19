* SPICE NETLIST
***************************************

.SUBCKT SP_AND_DR out !A out_b !B gnd! vdd! B A
** N=13 EP=8 IP=0 FDC=16
M0 12 B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=675 $Y=110 $D=1
M1 1 A 12 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1055 $Y=110 $D=1
M2 4 !A gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2305 $Y=110 $D=1
M3 11 !B gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3935 $Y=110 $D=1
M4 out 1 gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=6275 $Y=2730 $D=1
M5 13 11 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=6465 $Y=-110 $D=1
M6 out_b 4 13 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=6845 $Y=-110 $D=1
M7 1 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=3505 $D=0
M8 vdd! out 1 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=3505 $D=0
M9 4 !A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=2305 $Y=3505 $D=0
M10 vdd! out_b 4 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3125 $Y=3505 $D=0
M11 11 !B vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3935 $Y=3505 $D=0
M12 vdd! out_b 11 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4755 $Y=3505 $D=0
M13 out 1 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=6275 $Y=3710 $D=0
M14 out_b 11 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=6465 $Y=920 $D=0
M15 vdd! 4 out_b vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=6845 $Y=920 $D=0
.ENDS
***************************************