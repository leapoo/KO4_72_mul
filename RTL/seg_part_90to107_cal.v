`include "define.v" 
 
 module seg_part_90to107_cal (
 //input
 row_0,
 row_1,
 row_2,
 row_3,
 row_4,
 row_5,
 row_6,
 row_7,
 row_8,
 row_9,
 row_10,
 row_11,
 row_12,
 row_13,
 row_14,
 row_15,
 row_16,
 
 
 
 //output
 result
 
 );
 
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_0;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_1;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_2;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_3;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_4;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_5;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_6;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_7;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_8;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_9;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_10;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_11;  
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_12;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_13;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_14;  
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_15;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_16;
 
 
 output [`DATA_WIDTH/`KO_PARAMETER-1+7:0] result;
 
 wire [`DATA_WIDTH/`KO_PARAMETER-1+7:0] cal_result;
 
 //For Step 1
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_1  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_2  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_3  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_4  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_5  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_6  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+2:0] pp_0_row_7  ;
 
 
 //For Step2
 //For 2nd  3to2 compressor
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+4:0] pp_1_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+4:0] pp_1_row_1  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+4:0] pp_1_row_2  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+4:0] pp_1_row_3  ;
 
 
 //For 3rd  3to2 compressor
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+5:0] pp_2_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+5:0] pp_2_row_1  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+5:0] pp_2_row_2  ;
 
 
 //result
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+6:0] pp_3_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER-1+6:0] pp_3_row_1  ;
 
 
 //Step1 1st 7to3 compressor Auto Generate Code Begin
 compressor_7to3	compressor_7to3_s1_1st_u0	(.in0(row_0[0]),	.in1(row_1[0]),	.in2(row_2[0]),.in3(row_3[0]),	.in4(row_4[0]),	.in5(row_5[0]),	.in6(row_6[0]),	.out0(pp_0_row_0[0]),	.out1(pp_0_row_0[0+1]),	.out2(pp_0_row_0[0+2]));
 compressor_7to3	compressor_7to3_s1_1st_u1	(.in0(row_0[1]),	.in1(row_1[1]),	.in2(row_2[1]),.in3(row_3[1]),	.in4(row_4[1]),	.in5(row_5[1]),	.in6(row_6[1]),	.out0(pp_0_row_1[1]),	.out1(pp_0_row_1[1+1]),	.out2(pp_0_row_1[1+2]));
 compressor_7to3	compressor_7to3_s1_1st_u2	(.in0(row_0[2]),	.in1(row_1[2]),	.in2(row_2[2]),.in3(row_3[2]),	.in4(row_4[2]),	.in5(row_5[2]),	.in6(row_6[2]),	.out0(pp_0_row_2[2]),	.out1(pp_0_row_2[2+1]),	.out2(pp_0_row_2[2+2]));
 compressor_7to3	compressor_7to3_s1_1st_u3	(.in0(row_0[3]),	.in1(row_1[3]),	.in2(row_2[3]),.in3(row_3[3]),	.in4(row_4[3]),	.in5(row_5[3]),	.in6(row_6[3]),	.out0(pp_0_row_0[3]),	.out1(pp_0_row_0[3+1]),	.out2(pp_0_row_0[3+2]));
 compressor_7to3	compressor_7to3_s1_1st_u4	(.in0(row_0[4]),	.in1(row_1[4]),	.in2(row_2[4]),.in3(row_3[4]),	.in4(row_4[4]),	.in5(row_5[4]),	.in6(row_6[4]),	.out0(pp_0_row_1[4]),	.out1(pp_0_row_1[4+1]),	.out2(pp_0_row_1[4+2]));
 compressor_7to3	compressor_7to3_s1_1st_u5	(.in0(row_0[5]),	.in1(row_1[5]),	.in2(row_2[5]),.in3(row_3[5]),	.in4(row_4[5]),	.in5(row_5[5]),	.in6(row_6[5]),	.out0(pp_0_row_2[5]),	.out1(pp_0_row_2[5+1]),	.out2(pp_0_row_2[5+2]));
 compressor_7to3	compressor_7to3_s1_1st_u6	(.in0(row_0[6]),	.in1(row_1[6]),	.in2(row_2[6]),.in3(row_3[6]),	.in4(row_4[6]),	.in5(row_5[6]),	.in6(row_6[6]),	.out0(pp_0_row_0[6]),	.out1(pp_0_row_0[6+1]),	.out2(pp_0_row_0[6+2]));
 compressor_7to3	compressor_7to3_s1_1st_u7	(.in0(row_0[7]),	.in1(row_1[7]),	.in2(row_2[7]),.in3(row_3[7]),	.in4(row_4[7]),	.in5(row_5[7]),	.in6(row_6[7]),	.out0(pp_0_row_1[7]),	.out1(pp_0_row_1[7+1]),	.out2(pp_0_row_1[7+2]));
 compressor_7to3	compressor_7to3_s1_1st_u8	(.in0(row_0[8]),	.in1(row_1[8]),	.in2(row_2[8]),.in3(row_3[8]),	.in4(row_4[8]),	.in5(row_5[8]),	.in6(row_6[8]),	.out0(pp_0_row_2[8]),	.out1(pp_0_row_2[8+1]),	.out2(pp_0_row_2[8+2]));
 compressor_7to3	compressor_7to3_s1_1st_u9	(.in0(row_0[9]),	.in1(row_1[9]),	.in2(row_2[9]),.in3(row_3[9]),	.in4(row_4[9]),	.in5(row_5[9]),	.in6(row_6[9]),	.out0(pp_0_row_0[9]),	.out1(pp_0_row_0[9+1]),	.out2(pp_0_row_0[9+2]));
 compressor_7to3	compressor_7to3_s1_1st_u10	(.in0(row_0[10]),	.in1(row_1[10]),	.in2(row_2[10]),.in3(row_3[10]),	.in4(row_4[10]),	.in5(row_5[10]),	.in6(row_6[10]),	.out0(pp_0_row_1[10]),	.out1(pp_0_row_1[10+1]),	.out2(pp_0_row_1[10+2]));
 compressor_7to3	compressor_7to3_s1_1st_u11	(.in0(row_0[11]),	.in1(row_1[11]),	.in2(row_2[11]),.in3(row_3[11]),	.in4(row_4[11]),	.in5(row_5[11]),	.in6(row_6[11]),	.out0(pp_0_row_2[11]),	.out1(pp_0_row_2[11+1]),	.out2(pp_0_row_2[11+2]));
 compressor_7to3	compressor_7to3_s1_1st_u12	(.in0(row_0[12]),	.in1(row_1[12]),	.in2(row_2[12]),.in3(row_3[12]),	.in4(row_4[12]),	.in5(row_5[12]),	.in6(row_6[12]),	.out0(pp_0_row_0[12]),	.out1(pp_0_row_0[12+1]),	.out2(pp_0_row_0[12+2]));
 compressor_7to3	compressor_7to3_s1_1st_u13	(.in0(row_0[13]),	.in1(row_1[13]),	.in2(row_2[13]),.in3(row_3[13]),	.in4(row_4[13]),	.in5(row_5[13]),	.in6(row_6[13]),	.out0(pp_0_row_1[13]),	.out1(pp_0_row_1[13+1]),	.out2(pp_0_row_1[13+2]));
 compressor_7to3	compressor_7to3_s1_1st_u14	(.in0(row_0[14]),	.in1(row_1[14]),	.in2(row_2[14]),.in3(row_3[14]),	.in4(row_4[14]),	.in5(row_5[14]),	.in6(row_6[14]),	.out0(pp_0_row_2[14]),	.out1(pp_0_row_2[14+1]),	.out2(pp_0_row_2[14+2]));
 compressor_7to3	compressor_7to3_s1_1st_u15	(.in0(row_0[15]),	.in1(row_1[15]),	.in2(row_2[15]),.in3(row_3[15]),	.in4(row_4[15]),	.in5(row_5[15]),	.in6(row_6[15]),	.out0(pp_0_row_0[15]),	.out1(pp_0_row_0[15+1]),	.out2(pp_0_row_0[15+2]));
 compressor_7to3	compressor_7to3_s1_1st_u16	(.in0(row_0[16]),	.in1(row_1[16]),	.in2(row_2[16]),.in3(row_3[16]),	.in4(row_4[16]),	.in5(row_5[16]),	.in6(row_6[16]),	.out0(pp_0_row_1[16]),	.out1(pp_0_row_1[16+1]),	.out2(pp_0_row_1[16+2]));
 compressor_7to3	compressor_7to3_s1_1st_u17	(.in0(row_0[17]),	.in1(row_1[17]),	.in2(row_2[17]),.in3(row_3[17]),	.in4(row_4[17]),	.in5(row_5[17]),	.in6(row_6[17]),	.out0(pp_0_row_2[17]),	.out1(pp_0_row_2[17+1]),	.out2(pp_0_row_2[17+2]));
 
 
 //Auto Generate Code End
 
 //Step1 2nd 7to3 compressor Auto Generate Code Begin
 compressor_7to3	compressor_7to3_s1_2nd_u0	(.in0(row_7[0]),	.in1(row_8[0]),	.in2(row_9[0]),.in3(row_10[0]),	.in4(row_11[0]),	.in5(row_12[0]),	.in6(row_13[0]),	.out0(pp_0_row_3[0]),	.out1(pp_0_row_3[0+1]),	.out2(pp_0_row_3[0+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u1	(.in0(row_7[1]),	.in1(row_8[1]),	.in2(row_9[1]),.in3(row_10[1]),	.in4(row_11[1]),	.in5(row_12[1]),	.in6(row_13[1]),	.out0(pp_0_row_4[1]),	.out1(pp_0_row_4[1+1]),	.out2(pp_0_row_4[1+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u2	(.in0(row_7[2]),	.in1(row_8[2]),	.in2(row_9[2]),.in3(row_10[2]),	.in4(row_11[2]),	.in5(row_12[2]),	.in6(row_13[2]),	.out0(pp_0_row_5[2]),	.out1(pp_0_row_5[2+1]),	.out2(pp_0_row_5[2+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u3	(.in0(row_7[3]),	.in1(row_8[3]),	.in2(row_9[3]),.in3(row_10[3]),	.in4(row_11[3]),	.in5(row_12[3]),	.in6(row_13[3]),	.out0(pp_0_row_3[3]),	.out1(pp_0_row_3[3+1]),	.out2(pp_0_row_3[3+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u4	(.in0(row_7[4]),	.in1(row_8[4]),	.in2(row_9[4]),.in3(row_10[4]),	.in4(row_11[4]),	.in5(row_12[4]),	.in6(row_13[4]),	.out0(pp_0_row_4[4]),	.out1(pp_0_row_4[4+1]),	.out2(pp_0_row_4[4+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u5	(.in0(row_7[5]),	.in1(row_8[5]),	.in2(row_9[5]),.in3(row_10[5]),	.in4(row_11[5]),	.in5(row_12[5]),	.in6(row_13[5]),	.out0(pp_0_row_5[5]),	.out1(pp_0_row_5[5+1]),	.out2(pp_0_row_5[5+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u6	(.in0(row_7[6]),	.in1(row_8[6]),	.in2(row_9[6]),.in3(row_10[6]),	.in4(row_11[6]),	.in5(row_12[6]),	.in6(row_13[6]),	.out0(pp_0_row_3[6]),	.out1(pp_0_row_3[6+1]),	.out2(pp_0_row_3[6+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u7	(.in0(row_7[7]),	.in1(row_8[7]),	.in2(row_9[7]),.in3(row_10[7]),	.in4(row_11[7]),	.in5(row_12[7]),	.in6(row_13[7]),	.out0(pp_0_row_4[7]),	.out1(pp_0_row_4[7+1]),	.out2(pp_0_row_4[7+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u8	(.in0(row_7[8]),	.in1(row_8[8]),	.in2(row_9[8]),.in3(row_10[8]),	.in4(row_11[8]),	.in5(row_12[8]),	.in6(row_13[8]),	.out0(pp_0_row_5[8]),	.out1(pp_0_row_5[8+1]),	.out2(pp_0_row_5[8+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u9	(.in0(row_7[9]),	.in1(row_8[9]),	.in2(row_9[9]),.in3(row_10[9]),	.in4(row_11[9]),	.in5(row_12[9]),	.in6(row_13[9]),	.out0(pp_0_row_3[9]),	.out1(pp_0_row_3[9+1]),	.out2(pp_0_row_3[9+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u10	(.in0(row_7[10]),	.in1(row_8[10]),	.in2(row_9[10]),.in3(row_10[10]),	.in4(row_11[10]),	.in5(row_12[10]),	.in6(row_13[10]),	.out0(pp_0_row_4[10]),	.out1(pp_0_row_4[10+1]),	.out2(pp_0_row_4[10+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u11	(.in0(row_7[11]),	.in1(row_8[11]),	.in2(row_9[11]),.in3(row_10[11]),	.in4(row_11[11]),	.in5(row_12[11]),	.in6(row_13[11]),	.out0(pp_0_row_5[11]),	.out1(pp_0_row_5[11+1]),	.out2(pp_0_row_5[11+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u12	(.in0(row_7[12]),	.in1(row_8[12]),	.in2(row_9[12]),.in3(row_10[12]),	.in4(row_11[12]),	.in5(row_12[12]),	.in6(row_13[12]),	.out0(pp_0_row_3[12]),	.out1(pp_0_row_3[12+1]),	.out2(pp_0_row_3[12+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u13	(.in0(row_7[13]),	.in1(row_8[13]),	.in2(row_9[13]),.in3(row_10[13]),	.in4(row_11[13]),	.in5(row_12[13]),	.in6(row_13[13]),	.out0(pp_0_row_4[13]),	.out1(pp_0_row_4[13+1]),	.out2(pp_0_row_4[13+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u14	(.in0(row_7[14]),	.in1(row_8[14]),	.in2(row_9[14]),.in3(row_10[14]),	.in4(row_11[14]),	.in5(row_12[14]),	.in6(row_13[14]),	.out0(pp_0_row_5[14]),	.out1(pp_0_row_5[14+1]),	.out2(pp_0_row_5[14+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u15	(.in0(row_7[15]),	.in1(row_8[15]),	.in2(row_9[15]),.in3(row_10[15]),	.in4(row_11[15]),	.in5(row_12[15]),	.in6(row_13[15]),	.out0(pp_0_row_3[15]),	.out1(pp_0_row_3[15+1]),	.out2(pp_0_row_3[15+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u16	(.in0(row_7[16]),	.in1(row_8[16]),	.in2(row_9[16]),.in3(row_10[16]),	.in4(row_11[16]),	.in5(row_12[16]),	.in6(row_13[16]),	.out0(pp_0_row_4[16]),	.out1(pp_0_row_4[16+1]),	.out2(pp_0_row_4[16+2]));
 compressor_7to3	compressor_7to3_s1_2nd_u17	(.in0(row_7[17]),	.in1(row_8[17]),	.in2(row_9[17]),.in3(row_10[17]),	.in4(row_11[17]),	.in5(row_12[17]),	.in6(row_13[17]),	.out0(pp_0_row_5[17]),	.out1(pp_0_row_5[17+1]),	.out2(pp_0_row_5[17+2]));
 
 
 //Auto Generate Code End
 
 //Step1 3rd 3to2 compressor Auto Generate Code Begin
 compressor_3to2	compressor_3to2_s1_3rd_u0	(.in0(row_14[0]),	.in1(row_15[0]),	.in2(row_16[0]),	.out0(pp_0_row_6[0]),	.out1(pp_0_row_6[0+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u1	(.in0(row_14[1]),	.in1(row_15[1]),	.in2(row_16[1]),	.out0(pp_0_row_7[1]),	.out1(pp_0_row_7[1+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u2	(.in0(row_14[2]),	.in1(row_15[2]),	.in2(row_16[2]),	.out0(pp_0_row_6[2]),	.out1(pp_0_row_6[2+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u3	(.in0(row_14[3]),	.in1(row_15[3]),	.in2(row_16[3]),	.out0(pp_0_row_7[3]),	.out1(pp_0_row_7[3+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u4	(.in0(row_14[4]),	.in1(row_15[4]),	.in2(row_16[4]),	.out0(pp_0_row_6[4]),	.out1(pp_0_row_6[4+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u5	(.in0(row_14[5]),	.in1(row_15[5]),	.in2(row_16[5]),	.out0(pp_0_row_7[5]),	.out1(pp_0_row_7[5+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u6	(.in0(row_14[6]),	.in1(row_15[6]),	.in2(row_16[6]),	.out0(pp_0_row_6[6]),	.out1(pp_0_row_6[6+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u7	(.in0(row_14[7]),	.in1(row_15[7]),	.in2(row_16[7]),	.out0(pp_0_row_7[7]),	.out1(pp_0_row_7[7+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u8	(.in0(row_14[8]),	.in1(row_15[8]),	.in2(row_16[8]),	.out0(pp_0_row_6[8]),	.out1(pp_0_row_6[8+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u9	(.in0(row_14[9]),	.in1(row_15[9]),	.in2(row_16[9]),	.out0(pp_0_row_7[9]),	.out1(pp_0_row_7[9+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u10	(.in0(row_14[10]),	.in1(row_15[10]),	.in2(row_16[10]),	.out0(pp_0_row_6[10]),	.out1(pp_0_row_6[10+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u11	(.in0(row_14[11]),	.in1(row_15[11]),	.in2(row_16[11]),	.out0(pp_0_row_7[11]),	.out1(pp_0_row_7[11+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u12	(.in0(row_14[12]),	.in1(row_15[12]),	.in2(row_16[12]),	.out0(pp_0_row_6[12]),	.out1(pp_0_row_6[12+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u13	(.in0(row_14[13]),	.in1(row_15[13]),	.in2(row_16[13]),	.out0(pp_0_row_7[13]),	.out1(pp_0_row_7[13+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u14	(.in0(row_14[14]),	.in1(row_15[14]),	.in2(row_16[14]),	.out0(pp_0_row_6[14]),	.out1(pp_0_row_6[14+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u15	(.in0(row_14[15]),	.in1(row_15[15]),	.in2(row_16[15]),	.out0(pp_0_row_7[15]),	.out1(pp_0_row_7[15+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u16	(.in0(row_14[16]),	.in1(row_15[16]),	.in2(row_16[16]),	.out0(pp_0_row_6[16]),	.out1(pp_0_row_6[16+1]));
 compressor_3to2	compressor_3to2_s1_3rd_u17	(.in0(row_14[17]),	.in1(row_15[17]),	.in2(row_16[17]),	.out0(pp_0_row_7[17]),	.out1(pp_0_row_7[17+1]));
 
 
 //Auto Generate Code End
 
 
 assign pp_0_row_0 [`DATA_WIDTH/`KO_PARAMETER-1+2:`DATA_WIDTH/`KO_PARAMETER] = 0;
 assign pp_0_row_1 [`DATA_WIDTH/`KO_PARAMETER-1+2] = 0;
 assign pp_0_row_1 [0] = 0;
 assign pp_0_row_2 [1:0] = 0;
 assign pp_0_row_3 [`DATA_WIDTH/`KO_PARAMETER-1+2:`DATA_WIDTH/`KO_PARAMETER] = 0;
 assign pp_0_row_4 [`DATA_WIDTH/`KO_PARAMETER-1+2] = 0;
 assign pp_0_row_4 [0] = 0;
 assign pp_0_row_5 [1:0] = 0;
 assign pp_0_row_6 [`DATA_WIDTH/`KO_PARAMETER-1+2:`DATA_WIDTH/`KO_PARAMETER] = 0;
 assign pp_0_row_7 [`DATA_WIDTH/`KO_PARAMETER-1+2] = 0;
 assign pp_0_row_7 [0] = 0;
 
 
 
 
 //Step2 1st 7to3 compressor Auto Generate Code Begin
 compressor_7to3	compressor_7to3_s2_1st_u0	(.in0(pp_0_row_0[0]),	.in1(pp_0_row_1[0]),	.in2(pp_0_row_2[0]),.in3(pp_0_row_3[0]),	.in4(pp_0_row_4[0]),	.in5(pp_0_row_5[0]),	.in6(pp_0_row_6[0]),	.out0(pp_1_row_0[0]),	.out1(pp_1_row_0[0+1]),	.out2(pp_1_row_0[0+2]));
 compressor_7to3	compressor_7to3_s2_1st_u1	(.in0(pp_0_row_0[1]),	.in1(pp_0_row_1[1]),	.in2(pp_0_row_2[1]),.in3(pp_0_row_3[1]),	.in4(pp_0_row_4[1]),	.in5(pp_0_row_5[1]),	.in6(pp_0_row_6[1]),	.out0(pp_1_row_1[1]),	.out1(pp_1_row_1[1+1]),	.out2(pp_1_row_1[1+2]));
 compressor_7to3	compressor_7to3_s2_1st_u2	(.in0(pp_0_row_0[2]),	.in1(pp_0_row_1[2]),	.in2(pp_0_row_2[2]),.in3(pp_0_row_3[2]),	.in4(pp_0_row_4[2]),	.in5(pp_0_row_5[2]),	.in6(pp_0_row_6[2]),	.out0(pp_1_row_2[2]),	.out1(pp_1_row_2[2+1]),	.out2(pp_1_row_2[2+2]));
 compressor_7to3	compressor_7to3_s2_1st_u3	(.in0(pp_0_row_0[3]),	.in1(pp_0_row_1[3]),	.in2(pp_0_row_2[3]),.in3(pp_0_row_3[3]),	.in4(pp_0_row_4[3]),	.in5(pp_0_row_5[3]),	.in6(pp_0_row_6[3]),	.out0(pp_1_row_0[3]),	.out1(pp_1_row_0[3+1]),	.out2(pp_1_row_0[3+2]));
 compressor_7to3	compressor_7to3_s2_1st_u4	(.in0(pp_0_row_0[4]),	.in1(pp_0_row_1[4]),	.in2(pp_0_row_2[4]),.in3(pp_0_row_3[4]),	.in4(pp_0_row_4[4]),	.in5(pp_0_row_5[4]),	.in6(pp_0_row_6[4]),	.out0(pp_1_row_1[4]),	.out1(pp_1_row_1[4+1]),	.out2(pp_1_row_1[4+2]));
 compressor_7to3	compressor_7to3_s2_1st_u5	(.in0(pp_0_row_0[5]),	.in1(pp_0_row_1[5]),	.in2(pp_0_row_2[5]),.in3(pp_0_row_3[5]),	.in4(pp_0_row_4[5]),	.in5(pp_0_row_5[5]),	.in6(pp_0_row_6[5]),	.out0(pp_1_row_2[5]),	.out1(pp_1_row_2[5+1]),	.out2(pp_1_row_2[5+2]));
 compressor_7to3	compressor_7to3_s2_1st_u6	(.in0(pp_0_row_0[6]),	.in1(pp_0_row_1[6]),	.in2(pp_0_row_2[6]),.in3(pp_0_row_3[6]),	.in4(pp_0_row_4[6]),	.in5(pp_0_row_5[6]),	.in6(pp_0_row_6[6]),	.out0(pp_1_row_0[6]),	.out1(pp_1_row_0[6+1]),	.out2(pp_1_row_0[6+2]));
 compressor_7to3	compressor_7to3_s2_1st_u7	(.in0(pp_0_row_0[7]),	.in1(pp_0_row_1[7]),	.in2(pp_0_row_2[7]),.in3(pp_0_row_3[7]),	.in4(pp_0_row_4[7]),	.in5(pp_0_row_5[7]),	.in6(pp_0_row_6[7]),	.out0(pp_1_row_1[7]),	.out1(pp_1_row_1[7+1]),	.out2(pp_1_row_1[7+2]));
 compressor_7to3	compressor_7to3_s2_1st_u8	(.in0(pp_0_row_0[8]),	.in1(pp_0_row_1[8]),	.in2(pp_0_row_2[8]),.in3(pp_0_row_3[8]),	.in4(pp_0_row_4[8]),	.in5(pp_0_row_5[8]),	.in6(pp_0_row_6[8]),	.out0(pp_1_row_2[8]),	.out1(pp_1_row_2[8+1]),	.out2(pp_1_row_2[8+2]));
 compressor_7to3	compressor_7to3_s2_1st_u9	(.in0(pp_0_row_0[9]),	.in1(pp_0_row_1[9]),	.in2(pp_0_row_2[9]),.in3(pp_0_row_3[9]),	.in4(pp_0_row_4[9]),	.in5(pp_0_row_5[9]),	.in6(pp_0_row_6[9]),	.out0(pp_1_row_0[9]),	.out1(pp_1_row_0[9+1]),	.out2(pp_1_row_0[9+2]));
 compressor_7to3	compressor_7to3_s2_1st_u10	(.in0(pp_0_row_0[10]),	.in1(pp_0_row_1[10]),	.in2(pp_0_row_2[10]),.in3(pp_0_row_3[10]),	.in4(pp_0_row_4[10]),	.in5(pp_0_row_5[10]),	.in6(pp_0_row_6[10]),	.out0(pp_1_row_1[10]),	.out1(pp_1_row_1[10+1]),	.out2(pp_1_row_1[10+2]));
 compressor_7to3	compressor_7to3_s2_1st_u11	(.in0(pp_0_row_0[11]),	.in1(pp_0_row_1[11]),	.in2(pp_0_row_2[11]),.in3(pp_0_row_3[11]),	.in4(pp_0_row_4[11]),	.in5(pp_0_row_5[11]),	.in6(pp_0_row_6[11]),	.out0(pp_1_row_2[11]),	.out1(pp_1_row_2[11+1]),	.out2(pp_1_row_2[11+2]));
 compressor_7to3	compressor_7to3_s2_1st_u12	(.in0(pp_0_row_0[12]),	.in1(pp_0_row_1[12]),	.in2(pp_0_row_2[12]),.in3(pp_0_row_3[12]),	.in4(pp_0_row_4[12]),	.in5(pp_0_row_5[12]),	.in6(pp_0_row_6[12]),	.out0(pp_1_row_0[12]),	.out1(pp_1_row_0[12+1]),	.out2(pp_1_row_0[12+2]));
 compressor_7to3	compressor_7to3_s2_1st_u13	(.in0(pp_0_row_0[13]),	.in1(pp_0_row_1[13]),	.in2(pp_0_row_2[13]),.in3(pp_0_row_3[13]),	.in4(pp_0_row_4[13]),	.in5(pp_0_row_5[13]),	.in6(pp_0_row_6[13]),	.out0(pp_1_row_1[13]),	.out1(pp_1_row_1[13+1]),	.out2(pp_1_row_1[13+2]));
 compressor_7to3	compressor_7to3_s2_1st_u14	(.in0(pp_0_row_0[14]),	.in1(pp_0_row_1[14]),	.in2(pp_0_row_2[14]),.in3(pp_0_row_3[14]),	.in4(pp_0_row_4[14]),	.in5(pp_0_row_5[14]),	.in6(pp_0_row_6[14]),	.out0(pp_1_row_2[14]),	.out1(pp_1_row_2[14+1]),	.out2(pp_1_row_2[14+2]));
 compressor_7to3	compressor_7to3_s2_1st_u15	(.in0(pp_0_row_0[15]),	.in1(pp_0_row_1[15]),	.in2(pp_0_row_2[15]),.in3(pp_0_row_3[15]),	.in4(pp_0_row_4[15]),	.in5(pp_0_row_5[15]),	.in6(pp_0_row_6[15]),	.out0(pp_1_row_0[15]),	.out1(pp_1_row_0[15+1]),	.out2(pp_1_row_0[15+2]));
 compressor_7to3	compressor_7to3_s2_1st_u16	(.in0(pp_0_row_0[16]),	.in1(pp_0_row_1[16]),	.in2(pp_0_row_2[16]),.in3(pp_0_row_3[16]),	.in4(pp_0_row_4[16]),	.in5(pp_0_row_5[16]),	.in6(pp_0_row_6[16]),	.out0(pp_1_row_1[16]),	.out1(pp_1_row_1[16+1]),	.out2(pp_1_row_1[16+2]));
 compressor_7to3	compressor_7to3_s2_1st_u17	(.in0(pp_0_row_0[17]),	.in1(pp_0_row_1[17]),	.in2(pp_0_row_2[17]),.in3(pp_0_row_3[17]),	.in4(pp_0_row_4[17]),	.in5(pp_0_row_5[17]),	.in6(pp_0_row_6[17]),	.out0(pp_1_row_2[17]),	.out1(pp_1_row_2[17+1]),	.out2(pp_1_row_2[17+2]));
 compressor_7to3	compressor_7to3_s2_1st_u18	(.in0(pp_0_row_0[18]),	.in1(pp_0_row_1[18]),	.in2(pp_0_row_2[18]),.in3(pp_0_row_3[18]),	.in4(pp_0_row_4[18]),	.in5(pp_0_row_5[18]),	.in6(pp_0_row_6[18]),	.out0(pp_1_row_0[18]),	.out1(pp_1_row_0[18+1]),	.out2(pp_1_row_0[18+2]));
 compressor_7to3	compressor_7to3_s2_1st_u19	(.in0(pp_0_row_0[19]),	.in1(pp_0_row_1[19]),	.in2(pp_0_row_2[19]),.in3(pp_0_row_3[19]),	.in4(pp_0_row_4[19]),	.in5(pp_0_row_5[19]),	.in6(pp_0_row_6[19]),	.out0(pp_1_row_1[19]),	.out1(pp_1_row_1[19+1]),	.out2(pp_1_row_1[19+2]));
 
 //Auto Generate Code End
 
 
 
 assign pp_1_row_0[`DATA_WIDTH/`KO_PARAMETER+3]=0;
 assign pp_1_row_1[0] =0;
 assign pp_1_row_2[1:0] = 0;
 assign pp_1_row_2[`DATA_WIDTH/`KO_PARAMETER+3:`DATA_WIDTH/`KO_PARAMETER+2] = 0;
 assign pp_1_row_3 = {2'b0,pp_0_row_7};
 
 
 
 //Step3 1st 3to2 compressor Auto Generate Code Begin
 compressor_3to2	compressor_3to2_s3_1st_u0	(.in0(pp_1_row_0[0]),	.in1(pp_1_row_1[0]),	.in2(pp_1_row_2[0]),	.out0(pp_2_row_0[0]),	.out1(pp_2_row_0[0+1]));
 compressor_3to2	compressor_3to2_s3_1st_u1	(.in0(pp_1_row_0[1]),	.in1(pp_1_row_1[1]),	.in2(pp_1_row_2[1]),	.out0(pp_2_row_1[1]),	.out1(pp_2_row_1[1+1]));
 compressor_3to2	compressor_3to2_s3_1st_u2	(.in0(pp_1_row_0[2]),	.in1(pp_1_row_1[2]),	.in2(pp_1_row_2[2]),	.out0(pp_2_row_0[2]),	.out1(pp_2_row_0[2+1]));
 compressor_3to2	compressor_3to2_s3_1st_u3	(.in0(pp_1_row_0[3]),	.in1(pp_1_row_1[3]),	.in2(pp_1_row_2[3]),	.out0(pp_2_row_1[3]),	.out1(pp_2_row_1[3+1]));
 compressor_3to2	compressor_3to2_s3_1st_u4	(.in0(pp_1_row_0[4]),	.in1(pp_1_row_1[4]),	.in2(pp_1_row_2[4]),	.out0(pp_2_row_0[4]),	.out1(pp_2_row_0[4+1]));
 compressor_3to2	compressor_3to2_s3_1st_u5	(.in0(pp_1_row_0[5]),	.in1(pp_1_row_1[5]),	.in2(pp_1_row_2[5]),	.out0(pp_2_row_1[5]),	.out1(pp_2_row_1[5+1]));
 compressor_3to2	compressor_3to2_s3_1st_u6	(.in0(pp_1_row_0[6]),	.in1(pp_1_row_1[6]),	.in2(pp_1_row_2[6]),	.out0(pp_2_row_0[6]),	.out1(pp_2_row_0[6+1]));
 compressor_3to2	compressor_3to2_s3_1st_u7	(.in0(pp_1_row_0[7]),	.in1(pp_1_row_1[7]),	.in2(pp_1_row_2[7]),	.out0(pp_2_row_1[7]),	.out1(pp_2_row_1[7+1]));
 compressor_3to2	compressor_3to2_s3_1st_u8	(.in0(pp_1_row_0[8]),	.in1(pp_1_row_1[8]),	.in2(pp_1_row_2[8]),	.out0(pp_2_row_0[8]),	.out1(pp_2_row_0[8+1]));
 compressor_3to2	compressor_3to2_s3_1st_u9	(.in0(pp_1_row_0[9]),	.in1(pp_1_row_1[9]),	.in2(pp_1_row_2[9]),	.out0(pp_2_row_1[9]),	.out1(pp_2_row_1[9+1]));
 compressor_3to2	compressor_3to2_s3_1st_u10	(.in0(pp_1_row_0[10]),	.in1(pp_1_row_1[10]),	.in2(pp_1_row_2[10]),	.out0(pp_2_row_0[10]),	.out1(pp_2_row_0[10+1]));
 compressor_3to2	compressor_3to2_s3_1st_u11	(.in0(pp_1_row_0[11]),	.in1(pp_1_row_1[11]),	.in2(pp_1_row_2[11]),	.out0(pp_2_row_1[11]),	.out1(pp_2_row_1[11+1]));
 compressor_3to2	compressor_3to2_s3_1st_u12	(.in0(pp_1_row_0[12]),	.in1(pp_1_row_1[12]),	.in2(pp_1_row_2[12]),	.out0(pp_2_row_0[12]),	.out1(pp_2_row_0[12+1]));
 compressor_3to2	compressor_3to2_s3_1st_u13	(.in0(pp_1_row_0[13]),	.in1(pp_1_row_1[13]),	.in2(pp_1_row_2[13]),	.out0(pp_2_row_1[13]),	.out1(pp_2_row_1[13+1]));
 compressor_3to2	compressor_3to2_s3_1st_u14	(.in0(pp_1_row_0[14]),	.in1(pp_1_row_1[14]),	.in2(pp_1_row_2[14]),	.out0(pp_2_row_0[14]),	.out1(pp_2_row_0[14+1]));
 compressor_3to2	compressor_3to2_s3_1st_u15	(.in0(pp_1_row_0[15]),	.in1(pp_1_row_1[15]),	.in2(pp_1_row_2[15]),	.out0(pp_2_row_1[15]),	.out1(pp_2_row_1[15+1]));
 compressor_3to2	compressor_3to2_s3_1st_u16	(.in0(pp_1_row_0[16]),	.in1(pp_1_row_1[16]),	.in2(pp_1_row_2[16]),	.out0(pp_2_row_0[16]),	.out1(pp_2_row_0[16+1]));
 compressor_3to2	compressor_3to2_s3_1st_u17	(.in0(pp_1_row_0[17]),	.in1(pp_1_row_1[17]),	.in2(pp_1_row_2[17]),	.out0(pp_2_row_1[17]),	.out1(pp_2_row_1[17+1]));
 compressor_3to2	compressor_3to2_s3_1st_u18	(.in0(pp_1_row_0[18]),	.in1(pp_1_row_1[18]),	.in2(pp_1_row_2[18]),	.out0(pp_2_row_0[18]),	.out1(pp_2_row_0[18+1]));
 compressor_3to2	compressor_3to2_s3_1st_u19	(.in0(pp_1_row_0[19]),	.in1(pp_1_row_1[19]),	.in2(pp_1_row_2[19]),	.out0(pp_2_row_1[19]),	.out1(pp_2_row_1[19+1]));
 compressor_3to2	compressor_3to2_s3_1st_u20	(.in0(pp_1_row_0[20]),	.in1(pp_1_row_1[20]),	.in2(pp_1_row_2[20]),	.out0(pp_2_row_0[20]),	.out1(pp_2_row_0[20+1]));
 compressor_3to2	compressor_3to2_s3_1st_u21	(.in0(pp_1_row_0[21]),	.in1(pp_1_row_1[21]),	.in2(pp_1_row_2[21]),	.out0(pp_2_row_1[21]),	.out1(pp_2_row_1[21+1]));
 
 //Auto Generate Code End
 
 
 assign pp_2_row_0[`DATA_WIDTH/`KO_PARAMETER+4]=0;
 assign pp_2_row_1[0]=0;
 assign pp_2_row_2 = {1'b0,pp_1_row_3};
 
 
 //Step4 1st 3to2 compressor Auto Generate Code Begin
 compressor_3to2	compressor_3to2_s4_1st_u0	(.in0(pp_2_row_0[0]),	.in1(pp_2_row_1[0]),	.in2(pp_2_row_2[0]),	.out0(pp_3_row_0[0]),	.out1(pp_3_row_0[0+1]));
 compressor_3to2	compressor_3to2_s4_1st_u1	(.in0(pp_2_row_0[1]),	.in1(pp_2_row_1[1]),	.in2(pp_2_row_2[1]),	.out0(pp_3_row_1[1]),	.out1(pp_3_row_1[1+1]));
 compressor_3to2	compressor_3to2_s4_1st_u2	(.in0(pp_2_row_0[2]),	.in1(pp_2_row_1[2]),	.in2(pp_2_row_2[2]),	.out0(pp_3_row_0[2]),	.out1(pp_3_row_0[2+1]));
 compressor_3to2	compressor_3to2_s4_1st_u3	(.in0(pp_2_row_0[3]),	.in1(pp_2_row_1[3]),	.in2(pp_2_row_2[3]),	.out0(pp_3_row_1[3]),	.out1(pp_3_row_1[3+1]));
 compressor_3to2	compressor_3to2_s4_1st_u4	(.in0(pp_2_row_0[4]),	.in1(pp_2_row_1[4]),	.in2(pp_2_row_2[4]),	.out0(pp_3_row_0[4]),	.out1(pp_3_row_0[4+1]));
 compressor_3to2	compressor_3to2_s4_1st_u5	(.in0(pp_2_row_0[5]),	.in1(pp_2_row_1[5]),	.in2(pp_2_row_2[5]),	.out0(pp_3_row_1[5]),	.out1(pp_3_row_1[5+1]));
 compressor_3to2	compressor_3to2_s4_1st_u6	(.in0(pp_2_row_0[6]),	.in1(pp_2_row_1[6]),	.in2(pp_2_row_2[6]),	.out0(pp_3_row_0[6]),	.out1(pp_3_row_0[6+1]));
 compressor_3to2	compressor_3to2_s4_1st_u7	(.in0(pp_2_row_0[7]),	.in1(pp_2_row_1[7]),	.in2(pp_2_row_2[7]),	.out0(pp_3_row_1[7]),	.out1(pp_3_row_1[7+1]));
 compressor_3to2	compressor_3to2_s4_1st_u8	(.in0(pp_2_row_0[8]),	.in1(pp_2_row_1[8]),	.in2(pp_2_row_2[8]),	.out0(pp_3_row_0[8]),	.out1(pp_3_row_0[8+1]));
 compressor_3to2	compressor_3to2_s4_1st_u9	(.in0(pp_2_row_0[9]),	.in1(pp_2_row_1[9]),	.in2(pp_2_row_2[9]),	.out0(pp_3_row_1[9]),	.out1(pp_3_row_1[9+1]));
 compressor_3to2	compressor_3to2_s4_1st_u10	(.in0(pp_2_row_0[10]),	.in1(pp_2_row_1[10]),	.in2(pp_2_row_2[10]),	.out0(pp_3_row_0[10]),	.out1(pp_3_row_0[10+1]));
 compressor_3to2	compressor_3to2_s4_1st_u11	(.in0(pp_2_row_0[11]),	.in1(pp_2_row_1[11]),	.in2(pp_2_row_2[11]),	.out0(pp_3_row_1[11]),	.out1(pp_3_row_1[11+1]));
 compressor_3to2	compressor_3to2_s4_1st_u12	(.in0(pp_2_row_0[12]),	.in1(pp_2_row_1[12]),	.in2(pp_2_row_2[12]),	.out0(pp_3_row_0[12]),	.out1(pp_3_row_0[12+1]));
 compressor_3to2	compressor_3to2_s4_1st_u13	(.in0(pp_2_row_0[13]),	.in1(pp_2_row_1[13]),	.in2(pp_2_row_2[13]),	.out0(pp_3_row_1[13]),	.out1(pp_3_row_1[13+1]));
 compressor_3to2	compressor_3to2_s4_1st_u14	(.in0(pp_2_row_0[14]),	.in1(pp_2_row_1[14]),	.in2(pp_2_row_2[14]),	.out0(pp_3_row_0[14]),	.out1(pp_3_row_0[14+1]));
 compressor_3to2	compressor_3to2_s4_1st_u15	(.in0(pp_2_row_0[15]),	.in1(pp_2_row_1[15]),	.in2(pp_2_row_2[15]),	.out0(pp_3_row_1[15]),	.out1(pp_3_row_1[15+1]));
 compressor_3to2	compressor_3to2_s4_1st_u16	(.in0(pp_2_row_0[16]),	.in1(pp_2_row_1[16]),	.in2(pp_2_row_2[16]),	.out0(pp_3_row_0[16]),	.out1(pp_3_row_0[16+1]));
 compressor_3to2	compressor_3to2_s4_1st_u17	(.in0(pp_2_row_0[17]),	.in1(pp_2_row_1[17]),	.in2(pp_2_row_2[17]),	.out0(pp_3_row_1[17]),	.out1(pp_3_row_1[17+1]));
 compressor_3to2	compressor_3to2_s4_1st_u18	(.in0(pp_2_row_0[18]),	.in1(pp_2_row_1[18]),	.in2(pp_2_row_2[18]),	.out0(pp_3_row_0[18]),	.out1(pp_3_row_0[18+1]));
 compressor_3to2	compressor_3to2_s4_1st_u19	(.in0(pp_2_row_0[19]),	.in1(pp_2_row_1[19]),	.in2(pp_2_row_2[19]),	.out0(pp_3_row_1[19]),	.out1(pp_3_row_1[19+1]));
 compressor_3to2	compressor_3to2_s4_1st_u20	(.in0(pp_2_row_0[20]),	.in1(pp_2_row_1[20]),	.in2(pp_2_row_2[20]),	.out0(pp_3_row_0[20]),	.out1(pp_3_row_0[20+1]));
 compressor_3to2	compressor_3to2_s4_1st_u21	(.in0(pp_2_row_0[21]),	.in1(pp_2_row_1[21]),	.in2(pp_2_row_2[21]),	.out0(pp_3_row_1[21]),	.out1(pp_3_row_1[21+1]));
 compressor_3to2	compressor_3to2_s4_1st_u22	(.in0(pp_2_row_0[22]),	.in1(pp_2_row_1[22]),	.in2(pp_2_row_2[22]),	.out0(pp_3_row_0[22]),	.out1(pp_3_row_0[22+1]));
 
 //Auto Generate Code End
 
 
 assign pp_3_row_1[0]=0;
 assign pp_3_row_1[`DATA_WIDTH/`KO_PARAMETER-1+6]=0;
 
 
 assign cal_result= row_0+row_1+row_2+row_3+row_4+row_5+row_6+row_7+row_8+row_9+row_10+row_11+row_12+row_13+row_14+row_15+row_16;
 assign result = pp_3_row_0+pp_3_row_1;
 
 
 endmodule