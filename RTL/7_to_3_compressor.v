module compressor_7to3 (

//input
in0,in1,in2,in3,in4,in5,in6,

//output
out0,out1,out2

);

//input
input     in0;
input     in1;
input     in2;
input     in3;
input     in4;
input     in5;
input     in6;
//output 
output 		out0;
output 		out1;
output 		out2;

 
 //paper logic is wrong
/*
wire x0,x1;
wire y0,y1;
wire c0;
wire cc;

		//Calculate Internal Parameter
		assign x0 = in0 ^ in1 ^ in2 ^ in3;
		assign y0 = (in0&&in1) ||(in0&&in2)||(in0&&in3);
		assign c0 = in0 && in1 && in2 && in3;
		assign x1 = in4 ^ in5 ^ in6 ;
		assign y1 = (in4&&in5) ||(in4&&in6)||(in5&&in6);
		assign cc = (x0 && x1) || c0;

		assign out0 = x0^x1;
		assign out1 = cc^y0^y1;
		assign out2 = (cc&&y0) ||(cc&&y1)||(y0&&y1);
                         
 */
 
 wire bcd_out_0;
 wire bcd_out_1;
 wire efg_out_0;
 wire efg_out_1;
 wire a_out_1;
 
 compressor_3to2 BCD_u0( .in0(in1),	.in1(in2),	.in2(in3),	.out0(bcd_out_0),	.out1(bcd_out_1));
 compressor_3to2 EFG_u0( .in0(in4),	.in1(in5),	.in2(in6),	.out0(efg_out_0),	.out1(efg_out_1));
 
 compressor_3to2 A_u0( .in0(in0),	.in1(bcd_out_0),	.in2(efg_out_0),	.out0(out0),	.out1(a_out_1));
 compressor_3to2 final_u0( .in0(a_out_1),	.in1(bcd_out_1),	.in2(efg_out_1),	.out0(out1),	.out1(out2));

 
endmodule