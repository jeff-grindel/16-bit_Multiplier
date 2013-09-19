* SPICE NETLIST
***************************************

.SUBCKT SP_AND3_DR !C !B !A out out_b gnd! vdd! C B A
** N=18 EP=10 IP=0 FDC=22
M0 15 C gnd! gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=5.3325e-14 PD=8.2e-07 PS=9.35e-07 $X=-1085 $Y=-715 $D=1
M1 16 B 15 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=3.78e-14 PD=8.2e-07 PS=8.2e-07 $X=-705 $Y=-715 $D=1
M2 4 A 16 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=4.1175e-14 AS=3.78e-14 PD=8.45e-07 PS=8.2e-07 $X=-325 $Y=-715 $D=1
M3 6 !A gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=900 $Y=-715 $D=1
M4 8 !B gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2530 $Y=-715 $D=1
M5 14 !C gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4030 $Y=-715 $D=1
M6 17 6 gnd! gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=2.835e-14 PD=8.2e-07 PS=7.5e-07 $X=5675 $Y=-935 $D=1
M7 18 8 17 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.78e-14 AS=3.78e-14 PD=8.2e-07 PS=8.2e-07 $X=6055 $Y=-935 $D=1
M8 out 4 gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=6275 $Y=2730 $D=1
M9 out_b 14 18 gnd! NMOS_VTL L=5e-08 W=2.7e-07 AD=3.105e-14 AS=3.78e-14 PD=7.7e-07 PS=8.2e-07 $X=6435 $Y=-935 $D=1
M10 4 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=1.935e-14 PD=5.85e-07 PS=5.75e-07 $X=-705 $Y=3505 $D=0
M11 vdd! out 4 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=115 $Y=3505 $D=0
M12 6 !A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=900 $Y=3505 $D=0
M13 vdd! out_b 6 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1720 $Y=3505 $D=0
M14 8 !B vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=2530 $Y=3505 $D=0
M15 vdd! out_b 8 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3305 $Y=3505 $D=0
M16 14 !C vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=4030 $Y=3505 $D=0
M17 vdd! out_b 14 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4850 $Y=3505 $D=0
M18 out_b 6 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=5675 $Y=855 $D=0
M19 vdd! 8 out_b vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.52e-14 PD=6.4e-07 PS=6.4e-07 $X=6055 $Y=855 $D=0
M20 out 4 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=6275 $Y=3710 $D=0
M21 out_b 14 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=6435 $Y=855 $D=0
.ENDS
***************************************