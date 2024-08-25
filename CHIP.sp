************************************************************************
* auCdl Netlist:
* 
* Library Name:  final_project
* Top Cell Name: acc_min_max_v3
* View Name:     schematic
* Netlisted on:  Jan 14 05:30:18 2024
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM



************************************************************************
* Library Name: final_project
* Cell Name:    NAND2
* View Name:    schematic
************************************************************************

.SUBCKT NAND2 Vdd Vin1 Vin2 Vout Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vss:I Vout:O
MM3 Vout Vin2 Vdd Vdd P_18 W=1.5u L=180.00n
MM1 Vout Vin1 Vdd Vdd P_18 W=1.5u L=180.00n
MM0 Vout Vin1 net036 Vss N_18 W=500.0n L=180.00n
MM2 net036 Vin2 Vss Vss N_18 W=500.0n L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    INV
* View Name:    schematic
************************************************************************

.SUBCKT INV Vdd Vin Vout Vss
*.PININFO Vdd:I Vin:I Vss:I Vout:O
MM1 Vout Vin Vdd Vdd P_18 W=1.5u L=180.00n
MM2 Vout Vin Vss Vss N_18 W=500.0n L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    INV3
* View Name:    schematic
************************************************************************

.SUBCKT INV3 Vdd Vin Vout Vss
*.PININFO Vdd:I Vin:I Vss:I Vout:O
MM1 Vout Vin Vdd Vdd P_18 W=1.5u L=180.00n  m=3
MM2 Vout Vin Vss Vss N_18 W=500.0n L=180.00n  m=3
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    INV6
* View Name:    schematic
************************************************************************

.SUBCKT INV6 Vdd Vin Vout Vss
*.PININFO Vdd:I Vin:I Vss:I Vout:O
MM1 Vout Vin Vdd Vdd P_18 W=1.5u L=180.00n  m=6
MM2 Vout Vin Vss Vss N_18 W=500.0n L=180.00n  m=6
.ENDS


************************************************************************
* Library Name: final_project
* Cell Name:    INV9
* View Name:    schematic
************************************************************************

.SUBCKT INV9 Vdd Vin Vout Vss
*.PININFO Vdd:I Vin:I Vss:I Vout:O
MM1 Vout Vin Vdd Vdd P_18 W=1.5u L=180.00n  m=9
MM2 Vout Vin Vss Vss N_18 W=500.0n L=180.00n  m=9
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    INV27
* View Name:    schematic
************************************************************************

.SUBCKT INV27 Vdd Vin Vout Vss
*.PININFO Vdd:I Vin:I Vss:I Vout:O
MM1 Vout Vin Vdd Vdd P_18 W=1.5u L=180.00n  m=27
MM2 Vout Vin Vss Vss N_18 W=500.0n L=180.00n  m=27
.ENDS



************************************************************************
* Library Name: final_project
* Cell Name:    AND2
* View Name:    schematic
************************************************************************

.SUBCKT AND2 Vdd Vin1 Vin2 Vout Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vss:I Vout:O
XI1 Vdd Vin1 Vin2 net6 Vss / NAND2
XI0 Vdd net6 Vout Vss / INV
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    NOR
* View Name:    schematic
************************************************************************

.SUBCKT NOR Vdd Vin1 Vin2 Vout Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vss:I Vout:O
MM2 Vout Vin2 Vss Vss N_18 W=500.0n L=180.00n
MM0 Vout Vin1 Vss Vss N_18 W=500.0n L=180.00n
MM1 Vout Vin1 net17 Vdd P_18 W=1.5u L=180.00n
MM3 net17 Vin2 Vdd Vdd P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    OR2
* View Name:    schematic
************************************************************************

.SUBCKT OR2 Vdd Vin1 Vin2 Vout Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vss:I Vout:O
XI1 Vdd net12 Vout Vss / INV
XI0 Vdd Vin1 Vin2 net12 Vss / NOR
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    and_or_block
* View Name:    schematic
************************************************************************

.SUBCKT and_or_block Ci Ci-1 Gi Pi Vdd Vss
*.PININFO Ci-1:I Gi:I Pi:I Vdd:I Vss:I Ci:O
XI1 Vdd Ci-1 Pi net13 Vss / AND2
XI0 Vdd net13 Gi Ci Vss / OR2
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    XOR
* View Name:    schematic
************************************************************************

.SUBCKT XOR Vdd Vin1 Vin2 Vout Vss
*.PININFO Vdd:I Vin1:I Vin2:I Vss:I Vout:O
MM6 net6 Vin1 Vss Vss N_18 W=500.0n L=180.00n
MM7 net10 net39 Vss Vss N_18 W=500.0n L=180.00n
MM2 Vout net43 net10 Vss N_18 W=500.0n L=180.00n
MM0 Vout Vin2 net6 Vss N_18 W=500.0n L=180.00n
MM5 Vout net43 net25 Vdd P_18 W=1.5u L=180.00n
MM4 net25 Vin1 Vdd Vdd P_18 W=1.5u L=180.00n
MM3 net37 net39 Vdd Vdd P_18 W=1.5u L=180.00n
MM1 Vout Vin2 net37 Vdd P_18 W=1.5u L=180.00n
XI4 Vdd Vin1 net39 Vss / INV
XI9 Vdd Vin2 net43 Vss / INV
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    adder_ripple
* View Name:    schematic
************************************************************************

.SUBCKT adder_ripple A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 A16 B1 
+ B2 B3 B4 B5 B6 B7 B8 B9 B10 B11 B12 B13 B14 B15 B16 Cin Vdd Vss s1 s2 s3 s4 
+ s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16
*.PININFO A1:I A2:I A3:I A4:I A5:I A6:I A7:I A8:I A9:I A10:I A11:I A12:I A13:I 
*.PININFO A14:I A15:I A16:I B1:I B2:I B3:I B4:I B5:I B6:I B7:I B8:I B9:I B10:I 
*.PININFO B11:I B12:I B13:I B14:I B15:I B16:I Cin:I Vdd:I Vss:I s1:O s2:O s3:O 
*.PININFO s4:O s5:O s6:O s7:O s8:O s9:O s10:O s11:O s12:O s13:O s14:O s15:O 
*.PININFO s16:O
XI121 net153 net54 G7 P7 Vdd Vss / and_or_block
XI118 net72 net60 G4 P4 Vdd Vss / and_or_block
XI120 net54 net66 G6 P6 Vdd Vss / and_or_block
XI119 net66 net72 G5 P5 Vdd Vss / and_or_block
XI90 net183 net178 G2 P2 Vdd Vss / and_or_block
XI91 net60 net183 G3 P3 Vdd Vss / and_or_block
XI89 net178 Cin G1 P1 Vdd Vss / and_or_block
XI161 net108 net96 G9 P9 Vdd Vss / and_or_block
XI159 net198 net102 G11 P11 Vdd Vss / and_or_block
XI160 net102 net108 G10 P10 Vdd Vss / and_or_block
XI166 net208 net202 G13 P13 Vdd Vss / and_or_block
XI162 net96 net153 G8 P8 Vdd Vss / and_or_block
XI165 net202 net198 G12 P12 Vdd Vss / and_or_block
XI167 net138 net208 G14 P14 Vdd Vss / and_or_block
XI168 net298 net138 G15 P15 Vdd Vss / and_or_block
XI181 Vdd net138 P15 s15 Vss / XOR
XI180 Vdd net208 P14 s14 Vss / XOR
XI179 Vdd P13 net202 s13 Vss / XOR
XI178 Vdd net198 P12 s12 Vss / XOR
XI177 Vdd net102 P11 s11 Vss / XOR
XI176 Vdd net108 P10 s10 Vss / XOR
XI175 Vdd net96 P9 s9 Vss / XOR
XI174 Vdd net153 P8 s8 Vss / XOR
XI173 Vdd net54 P7 s7 Vss / XOR
XI172 Vdd net66 P6 s6 Vss / XOR
XI171 Vdd net72 P5 s5 Vss / XOR
XI170 Vdd net60 P4 s4 Vss / XOR
XI93 Vdd net178 P2 s2 Vss / XOR
XI96 Vdd net183 P3 s3 Vss / XOR
XI97 Vdd Cin P1 s1 Vss / XOR
XI140 Vdd A14 B14 P14 Vss / XOR
XI134 Vdd A16 B16 P16 Vss / XOR
XI137 Vdd A15 B15 P15 Vss / XOR
XI149 Vdd A13 B13 P13 Vss / XOR
XI143 Vdd A11 B11 P11 Vss / XOR
XI146 Vdd A12 B12 P12 Vss / XOR
XI106 Vdd A5 B5 P5 Vss / XOR
XI114 Vdd A7 B7 P7 Vss / XOR
XI109 Vdd A6 B6 P6 Vss / XOR
XI86 Vdd A3 B3 P3 Vss / XOR
XI26 Vdd A1 B1 P1 Vss / XOR
XI101 Vdd A4 B4 P4 Vss / XOR
XI125 Vdd A9 B9 P9 Vss / XOR
XI80 Vdd A2 B2 P2 Vss / XOR
XI122 Vdd A8 B8 P8 Vss / XOR
XI128 Vdd A10 B10 P10 Vss / XOR
XI182 Vdd net298 P16 s16 Vss / XOR
XI155 Vdd A11 B11 G11 Vss / AND2
XI153 Vdd A15 B15 G15 Vss / AND2
XI154 Vdd A14 B14 G14 Vss / AND2
XI111 Vdd A7 B7 G7 Vss / AND2
XI156 Vdd A12 B12 G12 Vss / AND2
XI157 Vdd A13 B13 G13 Vss / AND2
XI10 Vdd A1 B1 G1 Vss / AND2
XI110 Vdd A6 B6 G6 Vss / AND2
XI103 Vdd A5 B5 G5 Vss / AND2
XI82 Vdd A2 B2 G2 Vss / AND2
XI102 Vdd A4 B4 G4 Vss / AND2
XI88 Vdd A3 B3 G3 Vss / AND2
XI133 Vdd A10 B10 G10 Vss / AND2
XI131 Vdd A8 B8 G8 Vss / AND2
XI132 Vdd A9 B9 G9 Vss / AND2
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    PG_16
* View Name:    schematic
************************************************************************

.SUBCKT PG_16 A1 A2 A3 A4 A5 A6 A7 A8 A9 A10 A11 A12 A13 A14 A15 A16 B1 B2 B3 
+ B4 B5 B6 B7 B8 B9 B10 B11 B12 B13 B14 B15 B16 Cin Vdd Vss s16
*.PININFO A1:I A2:I A3:I A4:I A5:I A6:I A7:I A8:I A9:I A10:I A11:I A12:I A13:I 
*.PININFO A14:I A15:I A16:I B1:I B2:I B3:I B4:I B5:I B6:I B7:I B8:I B9:I B10:I 
*.PININFO B11:I B12:I B13:I B14:I B15:I B16:I Cin:I Vdd:I Vss:I s16:O
XI153 Vdd A15 B15 G15 Vss / AND2
XI154 Vdd A14 B14 G14 Vss / AND2
XI155 Vdd A11 B11 G11 Vss / AND2
XI156 Vdd A12 B12 G12 Vss / AND2
XI157 Vdd A13 B13 G13 Vss / AND2
XI111 Vdd A7 B7 G7 Vss / AND2
XI110 Vdd A6 B6 G6 Vss / AND2
XI103 Vdd A5 B5 G5 Vss / AND2
XI10 Vdd A1 B1 G1 Vss / AND2
XI102 Vdd A4 B4 G4 Vss / AND2
XI88 Vdd A3 B3 G3 Vss / AND2
XI82 Vdd A2 B2 G2 Vss / AND2
XI131 Vdd A8 B8 G8 Vss / AND2
XI132 Vdd A9 B9 G9 Vss / AND2
XI133 Vdd A10 B10 G10 Vss / AND2
XI134 Vdd A16 B16 P16 Vss / XOR
XI137 Vdd A15 B15 P15 Vss / XOR
XI140 Vdd A14 B14 P14 Vss / XOR
XI143 Vdd A11 B11 P11 Vss / XOR
XI146 Vdd A12 B12 P12 Vss / XOR
XI149 Vdd A13 B13 P13 Vss / XOR
XI114 Vdd A7 B7 P7 Vss / XOR
XI109 Vdd A6 B6 P6 Vss / XOR
XI106 Vdd A5 B5 P5 Vss / XOR
XI26 Vdd A1 B1 P1 Vss / XOR
XI101 Vdd A4 B4 P4 Vss / XOR
XI86 Vdd A3 B3 P3 Vss / XOR
XI80 Vdd A2 B2 P2 Vss / XOR
XI122 Vdd A8 B8 P8 Vss / XOR
XI125 Vdd A9 B9 P9 Vss / XOR
XI128 Vdd A10 B10 P10 Vss / XOR
XI182 Vdd net198 P16 s16 Vss / XOR
XI121 net264 net204 G7 P7 Vdd Vss / and_or_block
XI120 net204 net210 G6 P6 Vdd Vss / and_or_block
XI119 net210 net216 G5 P5 Vdd Vss / and_or_block
XI118 net216 net222 G4 P4 Vdd Vss / and_or_block
XI91 net222 net228 G3 P3 Vdd Vss / and_or_block
XI89 net240 Cin G1 P1 Vdd Vss / and_or_block
XI90 net228 net240 G2 P2 Vdd Vss / and_or_block
XI159 net270 net246 G11 P11 Vdd Vss / and_or_block
XI160 net246 net252 G10 P10 Vdd Vss / and_or_block
XI161 net252 net258 G9 P9 Vdd Vss / and_or_block
XI162 net258 net264 G8 P8 Vdd Vss / and_or_block
XI165 net276 net270 G12 P12 Vdd Vss / and_or_block
XI166 net282 net276 G13 P13 Vdd Vss / and_or_block
XI167 net288 net282 G14 P14 Vdd Vss / and_or_block
XI168 net198 net288 G15 P15 Vdd Vss / and_or_block
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    flip_flop
* View Name:    schematic
************************************************************************

.SUBCKT flip_flop CLK D Q QB Vdd Vss
*.PININFO CLK:I D:I Vdd:I Vss:I Q:O QB:O
XI1 Vdd net0180 net35 Vss / INV
XI0 Vdd CLK net0180 Vss / INV
MM0 net54 net15 Vss Vss N_18 W=500.0n L=180.00n
MM38 net15 net35 net14 Vss N_18 W=500.0n L=180.00n
MM6 net15 net58 Vss Vss N_18 W=500.0n L=180.00n
MM15 Q net14 Vss Vss N_18 W=500.0n L=180.00n
MM16 QB Q Vss Vss N_18 W=500.0n L=180.00n
MM19 net27 D Vss Vss N_18 W=500.0n L=180.00n
MM18 net31 net27 Vss Vss N_18 W=500.0n L=180.00n
MM26 CLKB net35 Vss Vss N_18 W=500.0n L=180.00n
MM40 net14 CLKB QB Vss N_18 W=500.0n L=180.00n
MM36 net58 net35 net54 Vss N_18 W=500.0n L=180.00n
MM28 net31 CLKB net58 Vss N_18 W=500.0n L=180.00n
MM1 net54 net15 Vdd Vdd P_18 W=1.5u L=180.00n
MM3 net15 net58 Vdd Vdd P_18 W=1.5u L=180.00n
MM37 net15 CLKB net14 Vdd P_18 W=1.5u L=180.00n
MM13 Q net14 Vdd Vdd P_18 W=1.5u L=180.00n
MM14 QB Q Vdd Vdd P_18 W=1.5u L=180.00n
MM17 net31 net27 Vdd Vdd P_18 W=1.5u L=180.00n
MM20 net27 D Vdd Vdd P_18 W=1.5u L=180.00n
MM25 CLKB net35 Vdd Vdd P_18 W=1.5u L=180.00n
MM39 net14 net35 QB Vdd P_18 W=1.5u L=180.00n
MM35 net58 CLKB net54 Vdd P_18 W=1.5u L=180.00n
MM27 net31 net35 net58 Vdd P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    flip_flop_16
* View Name:    schematic
************************************************************************

.SUBCKT flip_flop_16 CLK Q1 Q2 Q3 Q4 Q5 Q6 Q7 Q8 Q9 Q10 Q11 Q12 Q13 Q14 Q15 
+ Q16 Vdd Vss in1 in2 in3 in4 in5 in6 in7 in8 in9 in10 in11 in12 in13 in14 
+ in15 in16
*.PININFO CLK:I Vdd:I Vss:I in1:I in2:I in3:I in4:I in5:I in6:I in7:I in8:I 
*.PININFO in9:I in10:I in11:I in12:I in13:I in14:I in15:I in16:I Q1:O Q2:O 
*.PININFO Q3:O Q4:O Q5:O Q6:O Q7:O Q8:O Q9:O Q10:O Q11:O Q12:O Q13:O Q14:O 
*.PININFO Q15:O Q16:O
XI31 CLK in14 Q14 bar_Q14 Vdd Vss / flip_flop
XI30 CLK in16 Q16 bar_Q16 Vdd Vss / flip_flop
XI29 CLK in15 Q15 bar_Q15 Vdd Vss / flip_flop
XI28 CLK in13 Q13 bar_Q13 Vdd Vss / flip_flop
XI27 CLK in9 Q9 bar_Q9 Vdd Vss / flip_flop
XI26 CLK in11 Q11 bar_Q11 Vdd Vss / flip_flop
XI25 CLK in12 Q12 bar_Q12 Vdd Vss / flip_flop
XI24 CLK in10 Q10 bar_Q10 Vdd Vss / flip_flop
XI23 CLK in6 Q6 bar_Q6 Vdd Vss / flip_flop
XI22 CLK in8 Q8 bar_Q8 Vdd Vss / flip_flop
XI21 CLK in7 Q7 bar_Q7 Vdd Vss / flip_flop
XI20 CLK in4 Q4 bar_Q4 Vdd Vss / flip_flop
XI19 CLK in5 Q5 bar_Q5 Vdd Vss / flip_flop
XI18 CLK in3 Q3 bar_Q3 Vdd Vss / flip_flop
XI17 CLK in2 Q2 bar_Q2 Vdd Vss / flip_flop
XI0 CLK in1 Q1 bar_Q1 Vdd Vss / flip_flop
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    AND_OR_max
* View Name:    schematic
************************************************************************

.SUBCKT AND_OR_max Vdd Vss connect_clear i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 
+ i12 i13 i14 i15 o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15
*.PININFO Vdd:I Vss:I connect_clear:I i0:I i1:I i2:I i3:I i4:I i5:I i6:I i7:I 
*.PININFO i8:I i9:I i10:I i11:I i12:I i13:I i14:I i15:I o0:O o1:O o2:O o3:O 
*.PININFO o4:O o5:O o6:O o7:O o8:O o9:O o10:O o11:O o12:O o13:O o14:O o15:O
XI16 Vdd i15 net116 o15 Vss / OR2
XI6 Vdd i5 connect_clear o5 Vss / AND2
XI7 Vdd i6 connect_clear o6 Vss / AND2
XI8 Vdd i7 connect_clear o7 Vss / AND2
XI9 Vdd i8 connect_clear o8 Vss / AND2
XI10 Vdd i9 connect_clear o9 Vss / AND2
XI11 Vdd i10 connect_clear o10 Vss / AND2
XI12 Vdd i11 connect_clear o11 Vss / AND2
XI13 Vdd i12 connect_clear o12 Vss / AND2
XI14 Vdd i13 connect_clear o13 Vss / AND2
XI15 Vdd i14 connect_clear o14 Vss / AND2
XI1 Vdd i0 connect_clear o0 Vss / AND2
XI5 Vdd i4 connect_clear o4 Vss / AND2
XI4 Vdd i3 connect_clear o3 Vss / AND2
XI3 Vdd i2 connect_clear o2 Vss / AND2
XI2 Vdd i1 connect_clear o1 Vss / AND2
MM1 net116 connect_clear Vss Vss N_18 W=500.0n L=180.00n m=1
MM0 net116 connect_clear Vdd Vdd P_18 W=1.5u L=180.00n m=1
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    AND_OR_min
* View Name:    schematic
************************************************************************

.SUBCKT AND_OR_min Vdd Vss connect_clear i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 i11 
+ i12 i13 i14 i15 o0 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15
*.PININFO Vdd:I Vss:I connect_clear:I i0:I i1:I i2:I i3:I i4:I i5:I i6:I i7:I 
*.PININFO i8:I i9:I i10:I i11:I i12:I i13:I i14:I i15:I o0:O o1:O o2:O o3:O 
*.PININFO o4:O o5:O o6:O o7:O o8:O o9:O o10:O o11:O o12:O o13:O o14:O o15:O
MM0 net40 connect_clear Vdd Vdd P_18 W=1.5u L=180.00n m=1
MM1 net40 connect_clear Vss Vss N_18 W=500.0n L=180.00n m=1
XI16 Vdd i15 connect_clear o15 Vss / AND2
XI29 Vdd i2 net40 o2 Vss / OR2
XI28 Vdd i3 net40 o3 Vss / OR2
XI27 Vdd i4 net40 o4 Vss / OR2
XI26 Vdd i5 net40 o5 Vss / OR2
XI25 Vdd i6 net40 o6 Vss / OR2
XI24 Vdd i7 net40 o7 Vss / OR2
XI23 Vdd i8 net40 o8 Vss / OR2
XI22 Vdd i9 net40 o9 Vss / OR2
XI21 Vdd i10 net40 o10 Vss / OR2
XI20 Vdd i11 net40 o11 Vss / OR2
XI19 Vdd i12 net40 o12 Vss / OR2
XI18 Vdd i13 net40 o13 Vss / OR2
XI17 Vdd i14 net40 o14 Vss / OR2
XI31 Vdd i0 net40 o0 Vss / OR2
XI30 Vdd i1 net40 o1 Vss / OR2
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    AND16
* View Name:    schematic
************************************************************************

.SUBCKT AND16 Vdd Vss in1 in2 in3 in4 in5 in6 in7 in8 in9 in10 in11 in12 in13 
+ in14 in15 in16 out1 out2 out3 out4 out5 out6 out7 out8 out9 out10 out11 
+ out12 out13 out14 out15 out16 r_clear
*.PININFO Vdd:I Vss:I in1:I in2:I in3:I in4:I in5:I in6:I in7:I in8:I in9:I 
*.PININFO in10:I in11:I in12:I in13:I in14:I in15:I in16:I r_clear:I out1:O 
*.PININFO out2:O out3:O out4:O out5:O out6:O out7:O out8:O out9:O out10:O 
*.PININFO out11:O out12:O out13:O out14:O out15:O out16:O
XI30 Vdd r_clear in16 out16 Vss / AND2
XI28 Vdd r_clear in14 out14 Vss / AND2
XI29 Vdd r_clear in15 out15 Vss / AND2
XI27 Vdd r_clear in13 out13 Vss / AND2
XI26 Vdd r_clear in12 out12 Vss / AND2
XI25 Vdd r_clear in11 out11 Vss / AND2
XI24 Vdd r_clear in10 out10 Vss / AND2
XI23 Vdd r_clear in9 out9 Vss / AND2
XI22 Vdd r_clear in8 out8 Vss / AND2
XI21 Vdd r_clear in7 out7 Vss / AND2
XI20 Vdd r_clear in6 out6 Vss / AND2
XI19 Vdd r_clear in5 out5 Vss / AND2
XI18 Vdd r_clear in4 out4 Vss / AND2
XI17 Vdd r_clear in3 out3 Vss / AND2
XI16 Vdd r_clear in2 out2 Vss / AND2
XI0 Vdd in1 r_clear out1 Vss / AND2
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    MUX
* View Name:    schematic
************************************************************************

.SUBCKT MUX S Vdd Vin0 Vin1 Vout Vss
*.PININFO S:I Vdd:I Vin0:I Vin1:I Vss:I Vout:O
MM4 net7 S Vss Vss N_18 W=500.0n L=180.00n
MM3 Vin1 S Vout Vss N_18 W=500.0n L=180.00n
MM2 Vin0 net7 Vout Vss N_18 W=500.0n L=180.00n
MM5 net7 S Vdd Vdd P_18 W=1.5u L=180.00n
MM1 Vin0 S Vout Vdd P_18 W=1.5u L=180.00n
MM0 Vin1 net7 Vout Vdd P_18 W=1.5u L=180.00n
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    MUX_16
* View Name:    schematic
************************************************************************

.SUBCKT MUX_16 S15 Vdd Vin0_1 Vin0_2 Vin0_3 Vin0_4 Vin0_5 Vin0_6 Vin0_7 Vin0_8 
+ Vin0_9 Vin0_10 Vin0_11 Vin0_12 Vin0_13 Vin0_14 Vin0_15 Vin0_16 Vin1_1 Vin1_2 
+ Vin1_3 Vin1_4 Vin1_5 Vin1_6 Vin1_7 Vin1_8 Vin1_9 Vin1_10 Vin1_11 Vin1_12 
+ Vin1_13 Vin1_14 Vin1_15 Vin1_16 Vout1 Vout2 Vout3 Vout4 Vout5 Vout6 Vout7 
+ Vout8 Vout9 Vout10 Vout11 Vout12 Vout13 Vout14 Vout15 Vout16 Vss
*.PININFO S15:I Vdd:I Vin0_1:I Vin0_2:I Vin0_3:I Vin0_4:I Vin0_5:I Vin0_6:I 
*.PININFO Vin0_7:I Vin0_8:I Vin0_9:I Vin0_10:I Vin0_11:I Vin0_12:I Vin0_13:I 
*.PININFO Vin0_14:I Vin0_15:I Vin0_16:I Vin1_1:I Vin1_2:I Vin1_3:I Vin1_4:I 
*.PININFO Vin1_5:I Vin1_6:I Vin1_7:I Vin1_8:I Vin1_9:I Vin1_10:I Vin1_11:I 
*.PININFO Vin1_12:I Vin1_13:I Vin1_14:I Vin1_15:I Vin1_16:I Vss:I Vout1:O 
*.PININFO Vout2:O Vout3:O Vout4:O Vout5:O Vout6:O Vout7:O Vout8:O Vout9:O 
*.PININFO Vout10:O Vout11:O Vout12:O Vout13:O Vout14:O Vout15:O Vout16:O
XI16 S15 Vdd Vin0_13 Vin1_13 Vout13 Vss / MUX
XI18 S15 Vdd Vin0_16 Vin1_16 Vout16 Vss / MUX
XI17 S15 Vdd Vin0_14 Vin1_14 Vout14 Vss / MUX
XI20 S15 Vdd Vin0_11 Vin1_11 Vout11 Vss / MUX
XI19 S15 Vdd Vin0_15 Vin1_15 Vout15 Vss / MUX
XI22 S15 Vdd Vin0_10 Vin1_10 Vout10 Vss / MUX
XI21 S15 Vdd Vin0_12 Vin1_12 Vout12 Vss / MUX
XI8 S15 Vdd Vin0_6 Vin1_6 Vout6 Vss / MUX
XI7 S15 Vdd Vin0_7 Vin1_7 Vout7 Vss / MUX
XI6 S15 Vdd Vin0_9 Vin1_9 Vout9 Vss / MUX
XI5 S15 Vdd Vin0_8 Vin1_8 Vout8 Vss / MUX
XI4 S15 Vdd Vin0_4 Vin1_4 Vout4 Vss / MUX
XI3 S15 Vdd Vin0_5 Vin1_5 Vout5 Vss / MUX
XI2 S15 Vdd Vin0_3 Vin1_3 Vout3 Vss / MUX
XI1 S15 Vdd Vin0_2 Vin1_2 Vout2 Vss / MUX
XI0 S15 Vdd Vin0_1 Vin1_1 Vout1 Vss / MUX
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    inv_16
* View Name:    schematic
************************************************************************

.SUBCKT inv_16 Vdd Vss in1 in2 in3 in4 in5 in6 in7 in8 in9 in10 in11 in12 in13 
+ in14 in15 in16 o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16
*.PININFO Vdd:I Vss:I in1:I in2:I in3:I in4:I in5:I in6:I in7:I in8:I in9:I 
*.PININFO in10:I in11:I in12:I in13:I in14:I in15:I in16:I o1:O o2:O o3:O o4:O 
*.PININFO o5:O o6:O o7:O o8:O o9:O o10:O o11:O o12:O o13:O o14:O o15:O o16:O
XI15 Vdd in10 o10 Vss / INV
XI14 Vdd in12 o12 Vss / INV
XI13 Vdd in11 o11 Vss / INV
XI12 Vdd in15 o15 Vss / INV
XI11 Vdd in16 o16 Vss / INV
XI10 Vdd in14 o14 Vss / INV
XI9 Vdd in13 o13 Vss / INV
XI8 Vdd in6 o6 Vss / INV
XI7 Vdd in7 o7 Vss / INV
XI6 Vdd in9 o9 Vss / INV
XI5 Vdd in8 o8 Vss / INV
XI4 Vdd in4 o4 Vss / INV
XI3 Vdd in5 o5 Vss / INV
XI2 Vdd in3 o3 Vss / INV
XI1 Vdd in2 o2 Vss / INV
XI0 Vdd in1 o1 Vss / INV
.ENDS

************************************************************************
* Library Name: final_project
* Cell Name:    acc_min_max_v3
* View Name:    schematic
************************************************************************

.SUBCKT acc_min_max_v3 CLEAR CLK Cin1 Cin2 Q Vdd Vss a0 a1 a2 a3 a4 a5 a6 a7 
+ a8 a9 a10 a11 a12 a13 a14 a15 acc0 acc1 acc2 acc3 acc4 acc5 acc6 acc7 acc8 
+ acc9 acc10 acc11 acc12 acc13 acc14 acc15 max0 max1 max2 max3 max4 max5 max6 
+ max7 max8 max9 max10 max11 max12 max13 max14 max15 min0 min1 min2 min3 min4 
+ min5 min6 min7 min8 min9 min10 min11 min12 min13 min14 min15
*.PININFO CLEAR:I CLK:I Cin1:I Cin2:I Vdd:I Vss:I a0:I a1:I a2:I a3:I a4:I 
*.PININFO a5:I a6:I a7:I a8:I a9:I a10:I a11:I a12:I a13:I a14:I a15:I Q:O 
*.PININFO acc0:O acc1:O acc2:O acc3:O acc4:O acc5:O acc6:O acc7:O acc8:O 
*.PININFO acc9:O acc10:O acc11:O acc12:O acc13:O acc14:O acc15:O max0:O max1:O 
*.PININFO max2:O max3:O max4:O max5:O max6:O max7:O max8:O max9:O max10:O 
*.PININFO max11:O max12:O max13:O max14:O max15:O min0:O min1:O min2:O min3:O 
*.PININFO min4:O min5:O min6:O min7:O min8:O min9:O min10:O min11:O min12:O 
*.PININFO min13:O min14:O min15:O
XI9 net256 net255 net254 net253 net252 net251 net250 net249 net248 net247 
+ net246 net245 net244 net243 net242 net241 acc0 acc1 acc2 acc3 acc4 acc5 acc6 
+ acc7 acc8 acc9 acc10 acc11 acc12 acc13 acc14 acc15 Cin1 Vdd Vss net192 
+ net191 net190 net189 net188 net187 net186 net185 net184 net183 net182 net181 
+ net180 net179 net178 net177 / adder_ripple
XI0 min0 min1 min2 min3 min4 min5 min6 min7 min8 min9 min10 min11 min12 min13 
+ min14 min15 net609 net608 net607 net606 net605 net604 net603 net602 net601 
+ net600 net599 net598 net597 net596 net595 net594 Cin2 Vdd Vss net141 / PG_16
XI1 max0 max1 max2 max3 max4 max5 max6 max7 max8 max9 max10 max11 max12 max13 
+ max14 max15 net643 net642 net641 net640 net639 net638 net637 net636 net635 
+ net634 net633 net632 net631 net630 net629 net628 Cin2 Vdd Vss net105 / PG_16
XI2 Vdd net141 net0858 Vss / INV
XI3 Vdd net0855 net01249 Vss / INV6
XI6 Vdd net0858 net0859 Vss / INV6
XI7 Vdd net105 net0855 Vss / INV
XI24 Vdd net206 net202 Vss / INV
XI25 Vdd CLEAR net206 Vss / INV
XI28 Vdd net214 net210 Vss / INV6
XI27 Vdd net218 net214 Vss / INV3
XI26 Vdd CLK net218 Vss / INV
XI29 Vdd net210 net222 Vss / INV6
XI10 net222 net256 net255 net254 net253 net252 net251 net250 net249 net248 
+ net247 net246 net245 net244 net243 net242 net241 Vdd Vss net677 net676 
+ net675 net674 net673 net672 net671 net670 net669 net668 net667 net666 net665 
+ net664 net663 net662 / flip_flop_16
XI11 net222 acc0 acc1 acc2 acc3 acc4 acc5 acc6 acc7 acc8 acc9 acc10 acc11 
+ acc12 acc13 acc14 acc15 Vdd Vss net467 net466 net465 net464 net463 net462 
+ net461 net460 net459 net458 net457 net456 net455 net454 net453 net452 / 
+ flip_flop_16
XI12 net222 min0 min1 min2 min3 min4 min5 min6 min7 min8 min9 min10 min11 
+ min12 min13 min14 min15 Vdd Vss net432 net431 net430 net429 net428 net427 
+ net426 net425 net424 net423 net422 net421 net420 net419 net418 net417 / 
+ flip_flop_16
XI13 net222 max0 max1 max2 max3 max4 max5 max6 max7 max8 max9 max10 max11 
+ max12 max13 max14 max15 Vdd Vss net397 net396 net395 net394 net393 net392 
+ net391 net390 net389 net388 net387 net386 net385 net384 net383 net382 / 
+ flip_flop_16
XI14 Vdd Vss net198 net574 net573 net572 net571 net570 net569 net568 net567 
+ net566 net565 net564 net563 net562 net561 net560 net559 net397 net396 net395 
+ net394 net393 net392 net391 net390 net389 net388 net387 net386 net385 net384 
+ net383 net382 / AND_OR_max
XI15 Vdd Vss net198 net523 net522 net521 net520 net519 net518 net517 net516 
+ net515 net514 net513 net512 net511 net510 net509 net508 net432 net431 net430 
+ net429 net428 net427 net426 net425 net424 net423 net422 net421 net420 net419 
+ net418 net417 / AND_OR_min
XI16 Vdd Vss net192 net191 net190 net189 net188 net187 net186 net185 net184 
+ net183 net182 net181 net180 net179 net178 net177 net467 net466 net465 net464 
+ net463 net462 net461 net460 net459 net458 net457 net456 net455 net454 net453 
+ net452 net198 / AND16
XI17 net222 net202 Q net198 Vdd Vss / flip_flop
XI18 net0859 Vdd net256 net255 net254 net253 net252 net251 net250 net249 
+ net248 net247 net246 net245 net244 net243 net242 net241 min0 min1 min2 min3 
+ min4 min5 min6 min7 min8 min9 min10 min11 min12 min13 min14 min15 net523 
+ net522 net521 net520 net519 net518 net517 net516 net515 net514 net513 net512 
+ net511 net510 net509 net508 Vss / MUX_16
XI19 net01249 Vdd max0 max1 max2 max3 max4 max5 max6 max7 max8 max9 max10 
+ max11 max12 max13 max14 max15 net256 net255 net254 net253 net252 net251 
+ net250 net249 net248 net247 net246 net245 net244 net243 net242 net241 net574 
+ net573 net572 net571 net570 net569 net568 net567 net566 net565 net564 net563 
+ net562 net561 net560 net559 Vss / MUX_16
XI20 Vdd Vss net256 net255 net254 net253 net252 net251 net250 net249 net248 
+ net247 net246 net245 net244 net243 net242 net241 net609 net608 net607 net606 
+ net605 net604 net603 net602 net601 net600 net599 net598 net597 net596 net595 
+ net594 / inv_16
XI21 Vdd Vss net256 net255 net254 net253 net252 net251 net250 net249 net248 
+ net247 net246 net245 net244 net243 net242 net241 net643 net642 net641 net640 
+ net639 net638 net637 net636 net635 net634 net633 net632 net631 net630 net629 
+ net628 / inv_16
XI22 Vdd Vss net711 net710 net709 net708 net707 net706 net705 net704 net703 
+ net702 net701 net700 net699 net698 net697 net696 net677 net676 net675 net674 
+ net673 net672 net671 net670 net669 net668 net667 net666 net665 net664 net663 
+ net662 / inv_16
XI23 Vdd Vss a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 net711 
+ net710 net709 net708 net707 net706 net705 net704 net703 net702 net701 net700 
+ net699 net698 net697 net696 / inv_16
.ENDS

