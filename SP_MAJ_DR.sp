* SPICE NETLIST
***************************************

.SUBCKT M2_M1_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT SP_MAJ IN0 IN1 IN2 OUT gnd! vdd!
** N=11 EP=6 IP=0 FDC=13
M0 7 IN1 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=675 $Y=-190 $D=1
M1 gnd! IN2 7 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1055 $Y=-190 $D=1
M2 5 IN0 7 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.115e-14 PD=5.85e-07 PS=5.95e-07 $X=1925 $Y=-190 $D=1
M3 10 IN2 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.745e-14 PD=6.4e-07 PS=6.65e-07 $X=2745 $Y=-190 $D=1
M4 6 IN1 10 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.52e-14 PD=5.85e-07 PS=6.4e-07 $X=3125 $Y=-190 $D=1
M5 11 5 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=5135 $Y=-190 $D=1
M6 OUT 6 11 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=5515 $Y=-190 $D=1
M7 5 IN0 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=2740 $D=0
M8 vdd! OUT 5 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=2740 $D=0
M9 6 OUT vdd! vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2305 $Y=2740 $D=0
M10 vdd! IN1 6 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3125 $Y=2740 $D=0
M11 OUT 5 vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=5135 $Y=840 $D=0
M12 vdd! 6 OUT vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=5515 $Y=840 $D=0
.ENDS
***************************************
.SUBCKT SP_MAJ_DR A A_b B B_b C C_b gnd! vdd! Co_b Co
** N=10 EP=10 IP=18 FDC=26
X6 A_b B_b C_b Co_b gnd! vdd! SP_MAJ $T=0 3115 0 0 $X=0 $Y=2420
X7 A B C Co gnd! vdd! SP_MAJ $T=0 7785 0 0 $X=0 $Y=7090
.ENDS
***************************************
