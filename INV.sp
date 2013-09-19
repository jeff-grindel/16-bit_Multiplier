* SPICE NETLIST
***************************************

.SUBCKT INV in gnd! vdd! out
** N=4 EP=4 IP=0 FDC=2
M0 out in gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=210 $Y=-180 $D=1
M1 out in vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=210 $Y=800 $D=0
.ENDS
***************************************
