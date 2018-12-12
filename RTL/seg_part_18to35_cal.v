`include "define.v" 
 
 module seg_part_18to35_cal (
 //input
 row_0,
 row_1,
 row_2,
 row_3,
 row_4,
 
 //output
 result
 
 );
 
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_0;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_1;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_2;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_3;
 input [`DATA_WIDTH/`KO_PARAMETER-1:0] row_4;
 
 output [`DATA_WIDTH/`KO_PARAMETER-1+3:0] result;
 
 //For 1st  3to2 compressor
 wire	[`DATA_WIDTH/`KO_PARAMETER:0] pp_0_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER:0] pp_0_row_1  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER:0] pp_0_row_2  ;
 
 
 //For 2nd  3to2 compressor
 wire	[`DATA_WIDTH/`KO_PARAMETER+1:0] pp_1_row_0  ;
 wire	[`DATA_WIDTH/`KO_PARAMETER+1:0] pp_1_row_1  ;
 
 
 
 
 //Step1 1st 3to2 compressor Auto Generate Code Begin
 compressor_3to2	compressor_3to2_s1_1st_u0	(.in0(row_0[0]),	.in1(row_1[0]),	.in2(row_2[0]),	.out0(pp_0_row_0[0]),	.out1(pp_0_row_0[0+1]));
 compressor_3to2	compressor_3to2_s1_1st_u1	(.in0(row_0[1]),	.in1(row_1[1]),	.in2(row_2[1]),	.out0(pp_0_row_1[1]),	.out1(pp_0_row_1[1+1]));
 compressor_3to2	compressor_3to2_s1_1st_u2	(.in0(row_0[2]),	.in1(row_1[2]),	.in2(row_2[2]),	.out0(pp_0_row_0[2]),	.out1(pp_0_row_0[2+1]));
 compressor_3to2	compressor_3to2_s1_1st_u3	(.in0(row_0[3]),	.in1(row_1[3]),	.in2(row_2[3]),	.out0(pp_0_row_1[3]),	.out1(pp_0_row_1[3+1]));
 compressor_3to2	compressor_3to2_s1_1st_u4	(.in0(row_0[4]),	.in1(row_1[4]),	.in2(row_2[4]),	.out0(pp_0_row_0[4]),	.out1(pp_0_row_0[4+1]));
 compressor_3to2	compressor_3to2_s1_1st_u5	(.in0(row_0[5]),	.in1(row_1[5]),	.in2(row_2[5]),	.out0(pp_0_row_1[5]),	.out1(pp_0_row_1[5+1]));
 compressor_3to2	compressor_3to2_s1_1st_u6	(.in0(row_0[6]),	.in1(row_1[6]),	.in2(row_2[6]),	.out0(pp_0_row_0[6]),	.out1(pp_0_row_0[6+1]));
 compressor_3to2	compressor_3to2_s1_1st_u7	(.in0(row_0[7]),	.in1(row_1[7]),	.in2(row_2[7]),	.out0(pp_0_row_1[7]),	.out1(pp_0_row_1[7+1]));
 compressor_3to2	compressor_3to2_s1_1st_u8	(.in0(row_0[8]),	.in1(row_1[8]),	.in2(row_2[8]),	.out0(pp_0_row_0[8]),	.out1(pp_0_row_0[8+1]));
 compressor_3to2	compressor_3to2_s1_1st_u9	(.in0(row_0[9]),	.in1(row_1[9]),	.in2(row_2[9]),	.out0(pp_0_row_1[9]),	.out1(pp_0_row_1[9+1]));
 compressor_3to2	compressor_3to2_s1_1st_u10	(.in0(row_0[10]),	.in1(row_1[10]),	.in2(row_2[10]),	.out0(pp_0_row_0[10]),	.out1(pp_0_row_0[10+1]));
 compressor_3to2	compressor_3to2_s1_1st_u11	(.in0(row_0[11]),	.in1(row_1[11]),	.in2(row_2[11]),	.out0(pp_0_row_1[11]),	.out1(pp_0_row_1[11+1]));
 compressor_3to2	compressor_3to2_s1_1st_u12	(.in0(row_0[12]),	.in1(row_1[12]),	.in2(row_2[12]),	.out0(pp_0_row_0[12]),	.out1(pp_0_row_0[12+1]));
 compressor_3to2	compressor_3to2_s1_1st_u13	(.in0(row_0[13]),	.in1(row_1[13]),	.in2(row_2[13]),	.out0(pp_0_row_1[13]),	.out1(pp_0_row_1[13+1]));
 compressor_3to2	compressor_3to2_s1_1st_u14	(.in0(row_0[14]),	.in1(row_1[14]),	.in2(row_2[14]),	.out0(pp_0_row_0[14]),	.out1(pp_0_row_0[14+1]));
 compressor_3to2	compressor_3to2_s1_1st_u15	(.in0(row_0[15]),	.in1(row_1[15]),	.in2(row_2[15]),	.out0(pp_0_row_1[15]),	.out1(pp_0_row_1[15+1]));
 compressor_3to2	compressor_3to2_s1_1st_u16	(.in0(row_0[16]),	.in1(row_1[16]),	.in2(row_2[16]),	.out0(pp_0_row_0[16]),	.out1(pp_0_row_0[16+1]));
 compressor_3to2	compressor_3to2_s1_1st_u17	(.in0(row_0[17]),	.in1(row_1[17]),	.in2(row_2[17]),	.out0(pp_0_row_1[17]),	.out1(pp_0_row_1[17+1]));
 
 //Auto Generate Code End
 
 
 assign pp_0_row_0[`DATA_WIDTH/`KO_PARAMETER] = 0;
 assign pp_0_row_1[0] = 0;
 assign pp_0_row_2 = row_3+row_4;
 
 
 //Step2 1st 3to2 compressor Auto Generate Code Begin
 compressor_3to2	compressor_3to2_s2_1st_u0	(.in0(pp_0_row_0[0]),	.in1(pp_0_row_1[0]),	.in2(pp_0_row_2[0]),	.out0(pp_1_row_0[0]),	.out1(pp_1_row_0[0+1]));
 compressor_3to2	compressor_3to2_s2_1st_u1	(.in0(pp_0_row_0[1]),	.in1(pp_0_row_1[1]),	.in2(pp_0_row_2[1]),	.out0(pp_1_row_1[1]),	.out1(pp_1_row_1[1+1]));
 compressor_3to2	compressor_3to2_s2_1st_u2	(.in0(pp_0_row_0[2]),	.in1(pp_0_row_1[2]),	.in2(pp_0_row_2[2]),	.out0(pp_1_row_0[2]),	.out1(pp_1_row_0[2+1]));
 compressor_3to2	compressor_3to2_s2_1st_u3	(.in0(pp_0_row_0[3]),	.in1(pp_0_row_1[3]),	.in2(pp_0_row_2[3]),	.out0(pp_1_row_1[3]),	.out1(pp_1_row_1[3+1]));
 compressor_3to2	compressor_3to2_s2_1st_u4	(.in0(pp_0_row_0[4]),	.in1(pp_0_row_1[4]),	.in2(pp_0_row_2[4]),	.out0(pp_1_row_0[4]),	.out1(pp_1_row_0[4+1]));
 compressor_3to2	compressor_3to2_s2_1st_u5	(.in0(pp_0_row_0[5]),	.in1(pp_0_row_1[5]),	.in2(pp_0_row_2[5]),	.out0(pp_1_row_1[5]),	.out1(pp_1_row_1[5+1]));
 compressor_3to2	compressor_3to2_s2_1st_u6	(.in0(pp_0_row_0[6]),	.in1(pp_0_row_1[6]),	.in2(pp_0_row_2[6]),	.out0(pp_1_row_0[6]),	.out1(pp_1_row_0[6+1]));
 compressor_3to2	compressor_3to2_s2_1st_u7	(.in0(pp_0_row_0[7]),	.in1(pp_0_row_1[7]),	.in2(pp_0_row_2[7]),	.out0(pp_1_row_1[7]),	.out1(pp_1_row_1[7+1]));
 compressor_3to2	compressor_3to2_s2_1st_u8	(.in0(pp_0_row_0[8]),	.in1(pp_0_row_1[8]),	.in2(pp_0_row_2[8]),	.out0(pp_1_row_0[8]),	.out1(pp_1_row_0[8+1]));
 compressor_3to2	compressor_3to2_s2_1st_u9	(.in0(pp_0_row_0[9]),	.in1(pp_0_row_1[9]),	.in2(pp_0_row_2[9]),	.out0(pp_1_row_1[9]),	.out1(pp_1_row_1[9+1]));
 compressor_3to2	compressor_3to2_s2_1st_u10	(.in0(pp_0_row_0[10]),	.in1(pp_0_row_1[10]),	.in2(pp_0_row_2[10]),	.out0(pp_1_row_0[10]),	.out1(pp_1_row_0[10+1]));
 compressor_3to2	compressor_3to2_s2_1st_u11	(.in0(pp_0_row_0[11]),	.in1(pp_0_row_1[11]),	.in2(pp_0_row_2[11]),	.out0(pp_1_row_1[11]),	.out1(pp_1_row_1[11+1]));
 compressor_3to2	compressor_3to2_s2_1st_u12	(.in0(pp_0_row_0[12]),	.in1(pp_0_row_1[12]),	.in2(pp_0_row_2[12]),	.out0(pp_1_row_0[12]),	.out1(pp_1_row_0[12+1]));
 compressor_3to2	compressor_3to2_s2_1st_u13	(.in0(pp_0_row_0[13]),	.in1(pp_0_row_1[13]),	.in2(pp_0_row_2[13]),	.out0(pp_1_row_1[13]),	.out1(pp_1_row_1[13+1]));
 compressor_3to2	compressor_3to2_s2_1st_u14	(.in0(pp_0_row_0[14]),	.in1(pp_0_row_1[14]),	.in2(pp_0_row_2[14]),	.out0(pp_1_row_0[14]),	.out1(pp_1_row_0[14+1]));
 compressor_3to2	compressor_3to2_s2_1st_u15	(.in0(pp_0_row_0[15]),	.in1(pp_0_row_1[15]),	.in2(pp_0_row_2[15]),	.out0(pp_1_row_1[15]),	.out1(pp_1_row_1[15+1]));
 compressor_3to2	compressor_3to2_s2_1st_u16	(.in0(pp_0_row_0[16]),	.in1(pp_0_row_1[16]),	.in2(pp_0_row_2[16]),	.out0(pp_1_row_0[16]),	.out1(pp_1_row_0[16+1]));
 compressor_3to2	compressor_3to2_s2_1st_u17	(.in0(pp_0_row_0[17]),	.in1(pp_0_row_1[17]),	.in2(pp_0_row_2[17]),	.out0(pp_1_row_1[17]),	.out1(pp_1_row_1[17+1]));
 compressor_3to2	compressor_3to2_s2_1st_u18	(.in0(pp_0_row_0[18]),	.in1(pp_0_row_1[18]),	.in2(pp_0_row_2[18]),	.out0(pp_1_row_0[18]),	.out1(pp_1_row_0[18+1]));
 
 //Auto Generate Code End
 
 
 assign pp_1_row_1[0] = 0;
 assign pp_1_row_1[`DATA_WIDTH/`KO_PARAMETER+1] = 0;
 
 assign result = pp_1_row_0+pp_1_row_1;
 
 
 endmodule