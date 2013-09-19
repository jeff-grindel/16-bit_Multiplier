* SPICE NETLIST
***************************************

.SUBCKT INV in gnd! vdd! out
** N=4 EP=4 IP=0 FDC=2
M0 out in gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=9.45e-15 AS=9.45e-15 PD=3.9e-07 PS=3.9e-07 $X=210 $Y=-180 $D=1
M1 out in vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=210 $Y=800 $D=0
.ENDS
***************************************
.SUBCKT NAND2 A gnd! B OUT vdd!
** N=6 EP=5 IP=0 FDC=4
M0 6 A gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=210 $Y=-360 $D=1
M1 OUT B 6 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.935e-14 AS=2.52e-14 PD=5.75e-07 PS=6.4e-07 $X=590 $Y=-360 $D=1
M2 OUT A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=210 $Y=670 $D=0
M3 vdd! B OUT vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=590 $Y=670 $D=0
.ENDS
***************************************
.SUBCKT SP_AND_DR out !A out_b !B gnd! vdd! B A
** N=12 EP=8 IP=9 FDC=16
M0 12 B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=675 $Y=110 $D=1
M1 1 A 12 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1055 $Y=110 $D=1
M2 4 !A gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2305 $Y=110 $D=1
M3 11 !B gnd! gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3935 $Y=110 $D=1
M4 1 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=3505 $D=0
M5 vdd! out 1 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=3505 $D=0
M6 4 !A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=2305 $Y=3505 $D=0
M7 vdd! out_b 4 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3125 $Y=3505 $D=0
M8 11 !B vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3935 $Y=3505 $D=0
M9 vdd! out_b 11 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4755 $Y=3505 $D=0
X10 1 gnd! vdd! out INV $T=6065 2910 0 0 $X=5615 $Y=2395
X11 11 gnd! 4 out_b vdd! NAND2 $T=6255 250 0 0 $X=5805 $Y=-395
.ENDS
***************************************
.SUBCKT PG_Blk !A A B !B P !P gnd! vdd! !G G
** N=16 EP=10 IP=18 FDC=38
M0 5 !B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=2175 $Y=8750 $D=1
M1 6 A 5 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=2555 $Y=8750 $D=1
M2 8 !A 5 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=5.445e-14 PD=6.65e-07 PS=9.65e-07 $X=4185 $Y=8750 $D=1
M3 10 B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=5455 $Y=8750 $D=1
M4 11 !A 10 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=5835 $Y=8750 $D=1
M5 14 A 10 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=5.445e-14 PD=6.65e-07 PS=9.65e-07 $X=7465 $Y=8750 $D=1
M6 6 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=2175 $Y=12145 $D=0
M7 vdd! P 6 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2995 $Y=12145 $D=0
M8 8 !A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3805 $Y=12145 $D=0
M9 vdd! !P 8 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4625 $Y=12145 $D=0
M10 11 !A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=5455 $Y=12145 $D=0
M11 vdd! P 11 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=6275 $Y=12145 $D=0
M12 14 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=7085 $Y=12145 $D=0
M13 vdd! !P 14 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=7905 $Y=12145 $D=0
X14 14 gnd! 8 !P vdd! NAND2 $T=9320 8890 0 0 $X=8870 $Y=8245
X15 6 gnd! 11 P vdd! NAND2 $T=9320 11680 0 0 $X=8870 $Y=11035
X16 G !A !G !B gnd! vdd! B A SP_AND_DR $T=1500 3355 0 0 $X=1495 $Y=2960
.ENDS
***************************************
.SUBCKT SP_XOR P !A B !B A gnd! vdd!
** N=11 EP=7 IP=5 FDC=12
M0 10 !B gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.025e-14 PD=6.4e-07 PS=5.85e-07 $X=675 $Y=110 $D=1
M1 1 A 10 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.745e-14 AS=2.52e-14 PD=6.65e-07 PS=6.4e-07 $X=1055 $Y=110 $D=1
M2 11 !A 3 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=2.745e-14 PD=6.4e-07 PS=6.65e-07 $X=2745 $Y=110 $D=1
M3 gnd! B 11 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.52e-14 PD=5.85e-07 PS=6.4e-07 $X=3125 $Y=110 $D=1
M4 1 A vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=2740 $D=0
M5 vdd! P 1 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=2740 $D=0
M6 3 P vdd! vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=2305 $Y=2740 $D=0
M7 vdd! !A 3 vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3125 $Y=2740 $D=0
X8 1 gnd! 3 P vdd! NAND2 $T=4925 470 0 0 $X=4475 $Y=-175
.ENDS
***************************************
.SUBCKT GREY_CELL !Gi-1 Gi-1 !Gi Gi !Pi Pi !G G gnd! vdd!
** N=15 EP=10 IP=9 FDC=18
M0 14 !Gi 7 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=1.89e-14 PD=5.7e-07 PS=5.7e-07 $X=1045 $Y=110 $D=1
M1 14 !Gi-1 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.52e-14 AS=1.89e-14 PD=6.4e-07 PS=5.7e-07 $X=1915 $Y=110 $D=1
M2 gnd! !Pi 14 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=1.89e-14 AS=2.52e-14 PD=5.7e-07 PS=6.4e-07 $X=2295 $Y=110 $D=1
M3 gnd! Gi 9 gnd! NMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3125 $Y=110 $D=1
M4 15 Gi-1 gnd! gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.88e-14 AS=2.025e-14 PD=6.8e-07 PS=5.85e-07 $X=3935 $Y=110 $D=1
M5 11 Pi 15 gnd! NMOS_VTL L=5e-08 W=1.8e-07 AD=2.385e-14 AS=2.88e-14 PD=6.25e-07 PS=6.8e-07 $X=4355 $Y=110 $D=1
M6 7 !Gi vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=675 $Y=3505 $D=0
M7 vdd! !G 7 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=1495 $Y=3505 $D=0
M8 9 Gi vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=2305 $Y=3505 $D=0
M9 vdd! G 9 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=3125 $Y=3505 $D=0
M10 11 Pi vdd! vdd! PMOS_VTL L=5e-08 W=1.8e-07 AD=2.025e-14 AS=2.025e-14 PD=5.85e-07 PS=5.85e-07 $X=3935 $Y=3505 $D=0
M11 vdd! G 11 vdd! PMOS_VTL L=5e-08 W=9e-08 AD=1.0125e-14 AS=1.0125e-14 PD=4.05e-07 PS=4.05e-07 $X=4755 $Y=3505 $D=0
X12 7 gnd! vdd! !G INV $T=6605 120 0 0 $X=6155 $Y=-395
X13 9 gnd! 11 G vdd! NAND2 $T=6185 3040 0 0 $X=5735 $Y=2395
.ENDS
***************************************
.SUBCKT BLACK_CELL Pi-1 !Pi-1 Gi !Gi Pi !Pi !Gi-1 gnd! vdd! Gi-1 !G G !P P
** N=14 EP=14 IP=18 FDC=34
X0 P !Pi !P !Pi-1 gnd! vdd! Pi-1 Pi SP_AND_DR $T=15 10675 0 0 $X=10 $Y=10280
X1 !Gi-1 Gi-1 !Gi Gi !Pi Pi !G G gnd! vdd! GREY_CELL $T=15 5615 0 0 $X=0 $Y=5220
.ENDS
***************************************
.SUBCKT PPA OV gnd! vdd! S31 A31 A31_b B31 B31_b S30 A30 A30_b B30 B30_b S29 A29 A29_b B29 B29_b S28 A28
+ A28_b B28 B28_b S27 A27 A27_b B27 B27_b S26 A26 A26_b B26 B26_b S25 A25 A25_b B25 B25_b S24 A24
+ A24_b B24 B24_b S23 A23 A23_b B23 B23_b S22 A22 A22_b B22 B22_b S21 A21 A21_b B21 B21_b S20 A20
+ A20_b B20 B20_b S19 A19 A19_b B19 B19_b S18 A18 A18_b B18 B18_b S17 A17 A17_b B17 B17_b S16 A16
+ A16_b B16 B16_b S15 A15 A15_b B15 B15_b S14 A14 A14_b B14 B14_b S13 A13 A13_b B13 B13_b S12 A12
+ A12_b B12 B12_b S11 A11 A11_b B11 B11_b S10 A10 A10_b B10 B10_b S9 A9 A9_b B9 B9_b S8 A8
+ A8_b B8 B8_b S7 A7 A7_b B7 B7_b S6 A6 A6_b B6 B6_b S5 A5 A5_b B5 B5_b S4 A4
+ A4_b B4 B4_b S3 A3 A3_b B3 B3_b S2 A2 A2_b B2 B2_b S1 A1 A1_b B1 B1_b S0 A0
+ A0_b B0 B0_b
** N=743 EP=163 IP=2226 FDC=5490
X0 A31_b A31 B31 B31_b 4 5 gnd! vdd! 483 474 PG_Blk $T=-115700 210235 1 270 $X=-128710 $Y=198830
X1 A30_b A30 B30 B30_b 11 15 gnd! vdd! 24 19 PG_Blk $T=-101650 210235 1 270 $X=-114660 $Y=198830
X2 A29_b A29 B29 B29_b 31 35 gnd! vdd! 44 39 PG_Blk $T=-87600 210235 1 270 $X=-100610 $Y=198830
X3 A28_b A28 B28 B28_b 51 55 gnd! vdd! 64 59 PG_Blk $T=-73550 210235 1 270 $X=-86560 $Y=198830
X4 A27_b A27 B27 B27_b 71 75 gnd! vdd! 84 79 PG_Blk $T=-59500 210235 1 270 $X=-72510 $Y=198830
X5 A26_b A26 B26 B26_b 90 94 gnd! vdd! 103 98 PG_Blk $T=-45450 210235 1 270 $X=-58460 $Y=198830
X6 A25_b A25 B25 B25_b 111 115 gnd! vdd! 124 119 PG_Blk $T=-31400 210235 1 270 $X=-44410 $Y=198830
X7 A24_b A24 B24 B24_b 131 135 gnd! vdd! 144 139 PG_Blk $T=-17350 210235 1 270 $X=-30360 $Y=198830
X8 A23_b A23 B23 B23_b 151 155 gnd! vdd! 164 159 PG_Blk $T=-3300 210235 1 270 $X=-16310 $Y=198830
X9 A22_b A22 B22 B22_b 170 174 gnd! vdd! 183 178 PG_Blk $T=10750 210235 1 270 $X=-2260 $Y=198830
X10 A21_b A21 B21 B21_b 191 195 gnd! vdd! 204 199 PG_Blk $T=24800 210235 1 270 $X=11790 $Y=198830
X11 A20_b A20 B20 B20_b 211 215 gnd! vdd! 224 219 PG_Blk $T=38850 210235 1 270 $X=25840 $Y=198830
X12 A19_b A19 B19 B19_b 231 235 gnd! vdd! 244 239 PG_Blk $T=52900 210235 1 270 $X=39890 $Y=198830
X13 A18_b A18 B18 B18_b 250 254 gnd! vdd! 263 258 PG_Blk $T=66950 210235 1 270 $X=53940 $Y=198830
X14 A17_b A17 B17 B17_b 271 275 gnd! vdd! 284 279 PG_Blk $T=81000 210235 1 270 $X=67990 $Y=198830
X15 A16_b A16 B16 B16_b 291 295 gnd! vdd! 304 299 PG_Blk $T=95050 210235 1 270 $X=82040 $Y=198830
X16 A15_b A15 B15 B15_b 309 313 gnd! vdd! 322 317 PG_Blk $T=109100 210235 1 270 $X=96090 $Y=198830
X17 A14_b A14 B14 B14_b 326 329 gnd! vdd! 335 332 PG_Blk $T=123150 210235 1 270 $X=110140 $Y=198830
X18 A13_b A13 B13 B13_b 338 341 gnd! vdd! 347 344 PG_Blk $T=137200 210235 1 270 $X=124190 $Y=198830
X19 A12_b A12 B12 B12_b 350 353 gnd! vdd! 359 356 PG_Blk $T=151250 210235 1 270 $X=138240 $Y=198830
X20 A11_b A11 B11 B11_b 362 365 gnd! vdd! 371 368 PG_Blk $T=165300 210235 1 270 $X=152290 $Y=198830
X21 A10_b A10 B10 B10_b 374 377 gnd! vdd! 383 380 PG_Blk $T=179350 210235 1 270 $X=166340 $Y=198830
X22 A9_b A9 B9 B9_b 386 389 gnd! vdd! 395 392 PG_Blk $T=193400 210235 1 270 $X=180390 $Y=198830
X23 A8_b A8 B8 B8_b 398 401 gnd! vdd! 407 404 PG_Blk $T=207450 210235 1 270 $X=194440 $Y=198830
X24 A7_b A7 B7 B7_b 410 413 gnd! vdd! 419 416 PG_Blk $T=221500 210235 1 270 $X=208490 $Y=198830
X25 A6_b A6 B6 B6_b 421 423 gnd! vdd! 427 425 PG_Blk $T=235550 210235 1 270 $X=222540 $Y=198830
X26 A5_b A5 B5 B5_b 429 431 gnd! vdd! 435 433 PG_Blk $T=249600 210235 1 270 $X=236590 $Y=198830
X27 A4_b A4 B4 B4_b 437 439 gnd! vdd! 443 441 PG_Blk $T=263650 210235 1 270 $X=250640 $Y=198830
X28 A3_b A3 B3 B3_b 445 447 gnd! vdd! 451 449 PG_Blk $T=277700 210235 1 270 $X=264690 $Y=198830
X29 A2_b A2 B2 B2_b 452 453 gnd! vdd! 455 454 PG_Blk $T=291750 210235 1 270 $X=278740 $Y=198830
X30 A1_b A1 B1 B1_b 456 457 gnd! vdd! 459 458 PG_Blk $T=305800 210235 1 270 $X=292790 $Y=198830
X31 A0_b A0 B0 B0_b 738 460 gnd! vdd! 323 318 PG_Blk $T=319850 210235 1 270 $X=306840 $Y=198830
X32 S31 5 6 7 4 gnd! vdd! SP_XOR $T=-128585 36780 1 270 $X=-132190 $Y=30380
X33 S30 15 26 27 11 gnd! vdd! SP_XOR $T=-114580 36780 1 270 $X=-118185 $Y=30380
X34 S29 35 46 47 31 gnd! vdd! SP_XOR $T=-100530 36780 1 270 $X=-104135 $Y=30380
X35 S28 55 66 67 51 gnd! vdd! SP_XOR $T=-86480 36780 1 270 $X=-90085 $Y=30380
X36 S27 75 86 87 71 gnd! vdd! SP_XOR $T=-72430 36780 1 270 $X=-76035 $Y=30380
X37 S26 94 106 107 90 gnd! vdd! SP_XOR $T=-58380 36780 1 270 $X=-61985 $Y=30380
X38 S25 115 126 127 111 gnd! vdd! SP_XOR $T=-44330 36780 1 270 $X=-47935 $Y=30380
X39 S24 135 146 147 131 gnd! vdd! SP_XOR $T=-30280 36780 1 270 $X=-33885 $Y=30380
X40 S23 155 166 167 151 gnd! vdd! SP_XOR $T=-16230 36780 1 270 $X=-19835 $Y=30380
X41 S22 174 186 187 170 gnd! vdd! SP_XOR $T=-2180 36780 1 270 $X=-5785 $Y=30380
X42 S21 195 206 207 191 gnd! vdd! SP_XOR $T=11870 36780 1 270 $X=8265 $Y=30380
X43 S20 215 226 227 211 gnd! vdd! SP_XOR $T=25920 36780 1 270 $X=22315 $Y=30380
X44 S19 235 246 247 231 gnd! vdd! SP_XOR $T=39970 36780 1 270 $X=36365 $Y=30380
X45 S18 254 266 267 250 gnd! vdd! SP_XOR $T=54020 36780 1 270 $X=50415 $Y=30380
X46 S17 275 286 287 271 gnd! vdd! SP_XOR $T=68070 36780 1 270 $X=64465 $Y=30380
X47 S16 295 20 25 291 gnd! vdd! SP_XOR $T=82120 36780 1 270 $X=78515 $Y=30380
X48 S15 313 40 45 309 gnd! vdd! SP_XOR $T=96170 36780 1 270 $X=92565 $Y=30380
X49 S14 329 60 65 326 gnd! vdd! SP_XOR $T=110220 36780 1 270 $X=106615 $Y=30380
X50 S13 341 80 85 338 gnd! vdd! SP_XOR $T=124270 36780 1 270 $X=120665 $Y=30380
X51 S12 353 100 105 350 gnd! vdd! SP_XOR $T=138320 36780 1 270 $X=134715 $Y=30380
X52 S11 365 120 125 362 gnd! vdd! SP_XOR $T=152370 36780 1 270 $X=148765 $Y=30380
X53 S10 377 140 145 374 gnd! vdd! SP_XOR $T=166420 36780 1 270 $X=162815 $Y=30380
X54 S9 389 160 165 386 gnd! vdd! SP_XOR $T=180470 36780 1 270 $X=176865 $Y=30380
X55 S8 401 180 185 398 gnd! vdd! SP_XOR $T=194520 36780 1 270 $X=190915 $Y=30380
X56 S7 413 200 205 410 gnd! vdd! SP_XOR $T=208570 36780 1 270 $X=204965 $Y=30380
X57 S6 423 220 225 421 gnd! vdd! SP_XOR $T=222620 36780 1 270 $X=219015 $Y=30380
X58 S5 431 240 245 429 gnd! vdd! SP_XOR $T=236670 36780 1 270 $X=233065 $Y=30380
X59 S4 439 260 265 437 gnd! vdd! SP_XOR $T=250720 36780 1 270 $X=247115 $Y=30380
X60 S3 447 280 285 445 gnd! vdd! SP_XOR $T=264770 36780 1 270 $X=261165 $Y=30380
X61 S2 453 300 305 452 gnd! vdd! SP_XOR $T=278820 36780 1 270 $X=275215 $Y=30380
X62 S1 457 318 323 456 gnd! vdd! SP_XOR $T=295545 36780 1 270 $X=291940 $Y=30380
X63 S0 460 gnd! vdd! 738 gnd! vdd! SP_XOR $T=309595 36780 1 270 $X=305990 $Y=30380
X64 25 20 479 478 476 475 gnd! OV gnd! vdd! GREY_CELL $T=-119165 54165 1 270 $X=-123535 $Y=45830
X65 45 40 501 500 498 497 7 6 gnd! vdd! GREY_CELL $T=-105115 54165 1 270 $X=-109485 $Y=45830
X66 65 60 519 518 516 515 27 26 gnd! vdd! GREY_CELL $T=-91065 54165 1 270 $X=-95435 $Y=45830
X67 85 80 536 535 533 532 47 46 gnd! vdd! GREY_CELL $T=-77015 54165 1 270 $X=-81385 $Y=45830
X68 105 100 550 549 547 546 67 66 gnd! vdd! GREY_CELL $T=-62965 54165 1 270 $X=-67335 $Y=45830
X69 125 120 563 562 560 559 87 86 gnd! vdd! GREY_CELL $T=-48915 54165 1 270 $X=-53285 $Y=45830
X70 145 140 576 575 573 572 107 106 gnd! vdd! GREY_CELL $T=-34865 54165 1 270 $X=-39235 $Y=45830
X71 165 160 589 588 586 585 127 126 gnd! vdd! GREY_CELL $T=-20815 54165 1 270 $X=-25185 $Y=45830
X72 185 180 599 598 596 595 147 146 gnd! vdd! GREY_CELL $T=-6765 54165 1 270 $X=-11135 $Y=45830
X73 205 200 608 607 605 604 167 166 gnd! vdd! GREY_CELL $T=7285 54165 1 270 $X=2915 $Y=45830
X74 225 220 617 616 614 613 187 186 gnd! vdd! GREY_CELL $T=21335 54165 1 270 $X=16965 $Y=45830
X75 245 240 626 625 623 622 207 206 gnd! vdd! GREY_CELL $T=35385 54165 1 270 $X=31015 $Y=45830
X76 265 260 635 634 632 631 227 226 gnd! vdd! GREY_CELL $T=49435 54165 1 270 $X=45065 $Y=45830
X77 285 280 644 643 641 640 247 246 gnd! vdd! GREY_CELL $T=63485 54165 1 270 $X=59115 $Y=45830
X78 305 300 653 652 650 649 267 266 gnd! vdd! GREY_CELL $T=77535 54165 1 270 $X=73165 $Y=45830
X79 323 318 662 661 659 658 287 286 gnd! vdd! GREY_CELL $T=91585 54165 1 270 $X=87215 $Y=45830
X80 185 180 181 176 172 168 25 20 gnd! vdd! GREY_CELL $T=105635 95560 1 270 $X=101265 $Y=87225
X81 205 200 201 196 192 188 45 40 gnd! vdd! GREY_CELL $T=119685 95560 1 270 $X=115315 $Y=87225
X82 225 220 221 216 212 208 65 60 gnd! vdd! GREY_CELL $T=133735 95560 1 270 $X=129365 $Y=87225
X83 245 240 241 236 232 228 85 80 gnd! vdd! GREY_CELL $T=147785 95560 1 270 $X=143415 $Y=87225
X84 265 260 261 256 252 248 105 100 gnd! vdd! GREY_CELL $T=161835 95560 1 270 $X=157465 $Y=87225
X85 285 280 281 276 272 268 125 120 gnd! vdd! GREY_CELL $T=175885 95560 1 270 $X=171515 $Y=87225
X86 305 300 301 296 292 288 145 140 gnd! vdd! GREY_CELL $T=189935 95560 1 270 $X=185565 $Y=87225
X87 323 318 319 314 310 306 165 160 gnd! vdd! GREY_CELL $T=203985 95560 1 270 $X=199615 $Y=87225
X88 265 260 381 378 375 372 185 180 gnd! vdd! GREY_CELL $T=218035 137105 1 270 $X=213665 $Y=128770
X89 285 280 393 390 387 384 205 200 gnd! vdd! GREY_CELL $T=232085 137105 1 270 $X=227715 $Y=128770
X90 305 300 405 402 399 396 225 220 gnd! vdd! GREY_CELL $T=246135 137105 1 270 $X=241765 $Y=128770
X91 323 318 417 414 411 408 245 240 gnd! vdd! GREY_CELL $T=260185 137105 1 270 $X=255815 $Y=128770
X92 305 300 442 440 438 436 265 260 gnd! vdd! GREY_CELL $T=274235 169410 1 270 $X=269865 $Y=161075
X93 323 318 450 448 446 444 285 280 gnd! vdd! GREY_CELL $T=288285 169410 1 270 $X=283915 $Y=161075
X94 323 318 459 458 457 456 305 300 gnd! vdd! GREY_CELL $T=302445 192410 1 270 $X=298075 $Y=184075
X95 8 12 471 480 464 467 21 gnd! vdd! 16 479 478 476 475 BLACK_CELL $T=-113550 93125 1 270 $X=-128595 $Y=84525
X96 9 13 472 481 465 468 22 gnd! vdd! 17 480 471 467 464 BLACK_CELL $T=-113550 134670 1 270 $X=-128595 $Y=126070
X97 10 14 473 482 466 469 23 gnd! vdd! 18 481 472 468 465 BLACK_CELL $T=-113550 166970 1 270 $X=-128595 $Y=158370
X98 11 15 474 483 4 5 24 gnd! vdd! 19 482 473 469 466 BLACK_CELL $T=-113550 189975 1 270 $X=-128595 $Y=181375
X99 28 32 494 502 487 490 41 gnd! vdd! 36 501 500 498 497 BLACK_CELL $T=-99500 93125 1 270 $X=-114545 $Y=84525
X100 29 33 495 503 488 491 42 gnd! vdd! 37 502 494 490 487 BLACK_CELL $T=-99500 134670 1 270 $X=-114545 $Y=126070
X101 30 34 496 504 489 492 43 gnd! vdd! 38 503 495 491 488 BLACK_CELL $T=-99500 166970 1 270 $X=-114545 $Y=158370
X102 31 35 19 24 11 15 44 gnd! vdd! 39 504 496 492 489 BLACK_CELL $T=-99500 189975 1 270 $X=-114545 $Y=181375
X103 48 52 513 520 508 510 61 gnd! vdd! 56 519 518 516 515 BLACK_CELL $T=-85450 93125 1 270 $X=-100495 $Y=84525
X104 49 53 514 521 509 511 62 gnd! vdd! 57 520 513 510 508 BLACK_CELL $T=-85450 134670 1 270 $X=-100495 $Y=126070
X105 50 54 18 23 10 14 63 gnd! vdd! 58 521 514 511 509 BLACK_CELL $T=-85450 166970 1 270 $X=-100495 $Y=158370
X106 51 55 39 44 31 35 64 gnd! vdd! 59 23 18 14 10 BLACK_CELL $T=-85450 189975 1 270 $X=-100495 $Y=181375
X107 68 72 530 537 525 527 81 gnd! vdd! 76 536 535 533 532 BLACK_CELL $T=-71400 93125 1 270 $X=-86445 $Y=84525
X108 69 73 531 538 526 528 82 gnd! vdd! 77 537 530 527 525 BLACK_CELL $T=-71400 134670 1 270 $X=-86445 $Y=126070
X109 70 74 38 43 30 34 83 gnd! vdd! 78 538 531 528 526 BLACK_CELL $T=-71400 166970 1 270 $X=-86445 $Y=158370
X110 71 75 59 64 51 55 84 gnd! vdd! 79 43 38 34 30 BLACK_CELL $T=-71400 189975 1 270 $X=-86445 $Y=181375
X111 88 92 545 551 542 543 101 gnd! vdd! 96 550 549 547 546 BLACK_CELL $T=-57350 93125 1 270 $X=-72395 $Y=84525
X112 89 93 17 22 9 13 102 gnd! vdd! 97 551 545 543 542 BLACK_CELL $T=-57350 134670 1 270 $X=-72395 $Y=126070
X113 91 95 58 63 50 54 104 gnd! vdd! 99 22 17 13 9 BLACK_CELL $T=-57350 166970 1 270 $X=-72395 $Y=158370
X114 90 94 79 84 71 75 103 gnd! vdd! 98 63 58 54 50 BLACK_CELL $T=-57350 189975 1 270 $X=-72395 $Y=181375
X115 108 112 558 564 555 556 121 gnd! vdd! 116 563 562 560 559 BLACK_CELL $T=-43300 93125 1 270 $X=-58345 $Y=84525
X116 109 113 37 42 29 33 122 gnd! vdd! 117 564 558 556 555 BLACK_CELL $T=-43300 134670 1 270 $X=-58345 $Y=126070
X117 110 114 78 83 70 74 123 gnd! vdd! 118 42 37 33 29 BLACK_CELL $T=-43300 166970 1 270 $X=-58345 $Y=158370
X118 111 115 98 103 90 94 124 gnd! vdd! 119 83 78 74 70 BLACK_CELL $T=-43300 189975 1 270 $X=-58345 $Y=181375
X119 128 132 571 577 568 569 141 gnd! vdd! 136 576 575 573 572 BLACK_CELL $T=-29250 93125 1 270 $X=-44295 $Y=84525
X120 129 133 57 62 49 53 142 gnd! vdd! 137 577 571 569 568 BLACK_CELL $T=-29250 134670 1 270 $X=-44295 $Y=126070
X121 130 134 99 104 91 95 143 gnd! vdd! 138 62 57 53 49 BLACK_CELL $T=-29250 166970 1 270 $X=-44295 $Y=158370
X122 131 135 119 124 111 115 144 gnd! vdd! 139 104 99 95 91 BLACK_CELL $T=-29250 189975 1 270 $X=-44295 $Y=181375
X123 148 152 584 590 581 582 161 gnd! vdd! 156 589 588 586 585 BLACK_CELL $T=-15200 93125 1 270 $X=-30245 $Y=84525
X124 149 153 77 82 69 73 162 gnd! vdd! 157 590 584 582 581 BLACK_CELL $T=-15200 134670 1 270 $X=-30245 $Y=126070
X125 150 154 118 123 110 114 163 gnd! vdd! 158 82 77 73 69 BLACK_CELL $T=-15200 166970 1 270 $X=-30245 $Y=158370
X126 151 155 139 144 131 135 164 gnd! vdd! 159 123 118 114 110 BLACK_CELL $T=-15200 189975 1 270 $X=-30245 $Y=181375
X127 168 172 16 21 8 12 181 gnd! vdd! 176 599 598 596 595 BLACK_CELL $T=-1150 93125 1 270 $X=-16195 $Y=84525
X128 169 173 97 102 89 93 182 gnd! vdd! 177 21 16 12 8 BLACK_CELL $T=-1150 134670 1 270 $X=-16195 $Y=126070
X129 171 175 138 143 130 134 184 gnd! vdd! 179 102 97 93 89 BLACK_CELL $T=-1150 166970 1 270 $X=-16195 $Y=158370
X130 170 174 159 164 151 155 183 gnd! vdd! 178 143 138 134 130 BLACK_CELL $T=-1150 189975 1 270 $X=-16195 $Y=181375
X131 188 192 36 41 28 32 201 gnd! vdd! 196 608 607 605 604 BLACK_CELL $T=12900 93125 1 270 $X=-2145 $Y=84525
X132 189 193 117 122 109 113 202 gnd! vdd! 197 41 36 32 28 BLACK_CELL $T=12900 134670 1 270 $X=-2145 $Y=126070
X133 190 194 158 163 150 154 203 gnd! vdd! 198 122 117 113 109 BLACK_CELL $T=12900 166970 1 270 $X=-2145 $Y=158370
X134 191 195 178 183 170 174 204 gnd! vdd! 199 163 158 154 150 BLACK_CELL $T=12900 189975 1 270 $X=-2145 $Y=181375
X135 208 212 56 61 48 52 221 gnd! vdd! 216 617 616 614 613 BLACK_CELL $T=26950 93125 1 270 $X=11905 $Y=84525
X136 209 213 137 142 129 133 222 gnd! vdd! 217 61 56 52 48 BLACK_CELL $T=26950 134670 1 270 $X=11905 $Y=126070
X137 210 214 179 184 171 175 223 gnd! vdd! 218 142 137 133 129 BLACK_CELL $T=26950 166970 1 270 $X=11905 $Y=158370
X138 211 215 199 204 191 195 224 gnd! vdd! 219 184 179 175 171 BLACK_CELL $T=26950 189975 1 270 $X=11905 $Y=181375
X139 228 232 76 81 68 72 241 gnd! vdd! 236 626 625 623 622 BLACK_CELL $T=41000 93125 1 270 $X=25955 $Y=84525
X140 229 233 157 162 149 153 242 gnd! vdd! 237 81 76 72 68 BLACK_CELL $T=41000 134670 1 270 $X=25955 $Y=126070
X141 230 234 198 203 190 194 243 gnd! vdd! 238 162 157 153 149 BLACK_CELL $T=41000 166970 1 270 $X=25955 $Y=158370
X142 231 235 219 224 211 215 244 gnd! vdd! 239 203 198 194 190 BLACK_CELL $T=41000 189975 1 270 $X=25955 $Y=181375
X143 248 252 96 101 88 92 261 gnd! vdd! 256 635 634 632 631 BLACK_CELL $T=55050 93125 1 270 $X=40005 $Y=84525
X144 249 253 177 182 169 173 262 gnd! vdd! 257 101 96 92 88 BLACK_CELL $T=55050 134670 1 270 $X=40005 $Y=126070
X145 251 255 218 223 210 214 264 gnd! vdd! 259 182 177 173 169 BLACK_CELL $T=55050 166970 1 270 $X=40005 $Y=158370
X146 250 254 239 244 231 235 263 gnd! vdd! 258 223 218 214 210 BLACK_CELL $T=55050 189975 1 270 $X=40005 $Y=181375
X147 268 272 116 121 108 112 281 gnd! vdd! 276 644 643 641 640 BLACK_CELL $T=69100 93125 1 270 $X=54055 $Y=84525
X148 269 273 197 202 189 193 282 gnd! vdd! 277 121 116 112 108 BLACK_CELL $T=69100 134670 1 270 $X=54055 $Y=126070
X149 270 274 238 243 230 234 283 gnd! vdd! 278 202 197 193 189 BLACK_CELL $T=69100 166970 1 270 $X=54055 $Y=158370
X150 271 275 258 263 250 254 284 gnd! vdd! 279 243 238 234 230 BLACK_CELL $T=69100 189975 1 270 $X=54055 $Y=181375
X151 288 292 136 141 128 132 301 gnd! vdd! 296 653 652 650 649 BLACK_CELL $T=83150 93125 1 270 $X=68105 $Y=84525
X152 289 293 217 222 209 213 302 gnd! vdd! 297 141 136 132 128 BLACK_CELL $T=83150 134670 1 270 $X=68105 $Y=126070
X153 290 294 259 264 251 255 303 gnd! vdd! 298 222 217 213 209 BLACK_CELL $T=83150 166970 1 270 $X=68105 $Y=158370
X154 291 295 279 284 271 275 304 gnd! vdd! 299 264 259 255 251 BLACK_CELL $T=83150 189975 1 270 $X=68105 $Y=181375
X155 306 310 156 161 148 152 319 gnd! vdd! 314 662 661 659 658 BLACK_CELL $T=97200 93125 1 270 $X=82155 $Y=84525
X156 307 311 237 242 229 233 320 gnd! vdd! 315 161 156 152 148 BLACK_CELL $T=97200 134670 1 270 $X=82155 $Y=126070
X157 308 312 278 283 270 274 321 gnd! vdd! 316 242 237 233 229 BLACK_CELL $T=97200 166970 1 270 $X=82155 $Y=158370
X158 309 313 299 304 291 295 322 gnd! vdd! 317 283 278 274 270 BLACK_CELL $T=97200 189975 1 270 $X=82155 $Y=181375
X159 324 327 257 262 249 253 333 gnd! vdd! 330 181 176 172 168 BLACK_CELL $T=111250 134670 1 270 $X=96205 $Y=126070
X160 325 328 298 303 290 294 334 gnd! vdd! 331 262 257 253 249 BLACK_CELL $T=111250 166970 1 270 $X=96205 $Y=158370
X161 326 329 317 322 309 313 335 gnd! vdd! 332 303 298 294 290 BLACK_CELL $T=111250 189975 1 270 $X=96205 $Y=181375
X162 336 339 277 282 269 273 345 gnd! vdd! 342 201 196 192 188 BLACK_CELL $T=125300 134670 1 270 $X=110255 $Y=126070
X163 337 340 316 321 308 312 346 gnd! vdd! 343 282 277 273 269 BLACK_CELL $T=125300 166970 1 270 $X=110255 $Y=158370
X164 338 341 332 335 326 329 347 gnd! vdd! 344 321 316 312 308 BLACK_CELL $T=125300 189975 1 270 $X=110255 $Y=181375
X165 348 351 297 302 289 293 357 gnd! vdd! 354 221 216 212 208 BLACK_CELL $T=139350 134670 1 270 $X=124305 $Y=126070
X166 349 352 331 334 325 328 358 gnd! vdd! 355 302 297 293 289 BLACK_CELL $T=139350 166970 1 270 $X=124305 $Y=158370
X167 350 353 344 347 338 341 359 gnd! vdd! 356 334 331 328 325 BLACK_CELL $T=139350 189975 1 270 $X=124305 $Y=181375
X168 360 363 315 320 307 311 369 gnd! vdd! 366 241 236 232 228 BLACK_CELL $T=153400 134670 1 270 $X=138355 $Y=126070
X169 361 364 343 346 337 340 370 gnd! vdd! 367 320 315 311 307 BLACK_CELL $T=153400 166970 1 270 $X=138355 $Y=158370
X170 362 365 356 359 350 353 371 gnd! vdd! 368 346 343 340 337 BLACK_CELL $T=153400 189975 1 270 $X=138355 $Y=181375
X171 372 375 330 333 324 327 381 gnd! vdd! 378 261 256 252 248 BLACK_CELL $T=167450 134670 1 270 $X=152405 $Y=126070
X172 373 376 355 358 349 352 382 gnd! vdd! 379 333 330 327 324 BLACK_CELL $T=167450 166970 1 270 $X=152405 $Y=158370
X173 374 377 368 371 362 365 383 gnd! vdd! 380 358 355 352 349 BLACK_CELL $T=167450 189975 1 270 $X=152405 $Y=181375
X174 384 387 342 345 336 339 393 gnd! vdd! 390 281 276 272 268 BLACK_CELL $T=181500 134670 1 270 $X=166455 $Y=126070
X175 385 388 367 370 361 364 394 gnd! vdd! 391 345 342 339 336 BLACK_CELL $T=181500 166970 1 270 $X=166455 $Y=158370
X176 386 389 380 383 374 377 395 gnd! vdd! 392 370 367 364 361 BLACK_CELL $T=181500 189975 1 270 $X=166455 $Y=181375
X177 396 399 354 357 348 351 405 gnd! vdd! 402 301 296 292 288 BLACK_CELL $T=195550 134670 1 270 $X=180505 $Y=126070
X178 397 400 379 382 373 376 406 gnd! vdd! 403 357 354 351 348 BLACK_CELL $T=195550 166970 1 270 $X=180505 $Y=158370
X179 398 401 392 395 386 389 407 gnd! vdd! 404 382 379 376 373 BLACK_CELL $T=195550 189975 1 270 $X=180505 $Y=181375
X180 408 411 366 369 360 363 417 gnd! vdd! 414 319 314 310 306 BLACK_CELL $T=209600 134670 1 270 $X=194555 $Y=126070
X181 409 412 391 394 385 388 418 gnd! vdd! 415 369 366 363 360 BLACK_CELL $T=209600 166970 1 270 $X=194555 $Y=158370
X182 410 413 404 407 398 401 419 gnd! vdd! 416 394 391 388 385 BLACK_CELL $T=209600 189975 1 270 $X=194555 $Y=181375
X183 420 422 403 406 397 400 426 gnd! vdd! 424 381 378 375 372 BLACK_CELL $T=223650 166970 1 270 $X=208605 $Y=158370
X184 421 423 416 419 410 413 427 gnd! vdd! 425 406 403 400 397 BLACK_CELL $T=223650 189975 1 270 $X=208605 $Y=181375
X185 428 430 415 418 409 412 434 gnd! vdd! 432 393 390 387 384 BLACK_CELL $T=237700 166970 1 270 $X=222655 $Y=158370
X186 429 431 425 427 421 423 435 gnd! vdd! 433 418 415 412 409 BLACK_CELL $T=237700 189975 1 270 $X=222655 $Y=181375
X187 436 438 424 426 420 422 442 gnd! vdd! 440 405 402 399 396 BLACK_CELL $T=251750 166970 1 270 $X=236705 $Y=158370
X188 437 439 433 435 429 431 443 gnd! vdd! 441 426 424 422 420 BLACK_CELL $T=251750 189975 1 270 $X=236705 $Y=181375
X189 444 446 432 434 428 430 450 gnd! vdd! 448 417 414 411 408 BLACK_CELL $T=265800 166970 1 270 $X=250755 $Y=158370
X190 445 447 441 443 437 439 451 gnd! vdd! 449 434 432 430 428 BLACK_CELL $T=265800 189975 1 270 $X=250755 $Y=181375
X191 452 453 449 451 445 447 455 gnd! vdd! 454 442 440 438 436 BLACK_CELL $T=279850 189975 1 270 $X=264805 $Y=181375
X192 456 457 454 455 452 453 459 gnd! vdd! 458 450 448 446 444 BLACK_CELL $T=293900 189975 1 270 $X=278855 $Y=181375
.ENDS
***************************************
