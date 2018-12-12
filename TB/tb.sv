`include "define_tb.v"
`timescale 1ns/100ps;

module tb;

reg clk;
reg rst;

logic out0,out1,out2;
logic in0,in1,in2,in3,in4,in5,in6;

logic [71:0] a,b;
logic [143:0] c;
logic [143:0] actual;

logic [31:0] random_0;
logic [31:0] random_1;
logic [31:0] random_2;

logic [31:0] random_3;
logic [31:0] random_4;
logic [31:0] random_5;

logic [17:0] a0,a1,a2,a3;
logic [17:0] b0,b1,b2,b3;


logic 		[40:0] p_0;
logic 		[40:0] p_1;
logic 		[40:0] p_2;
logic 		[40:0] p_3;   
logic 		[40:0] p_0_i;
logic 		[40:0] p_1_i;
logic 		[40:0] p_2_i;
logic 		[40:0] p_3_i;
logic 		[40:0] p_01;
logic 		[40:0] p_02;
logic 		[40:0] p_13;
logic 		[40:0] p_23;
logic 		[40:0] p_01_i;
logic 		[40:0] p_02_i;
logic 		[40:0] p_13_i;
logic 		[40:0] p_23_i;
logic 		[40:0] p_0123;


//Segment Result
logic [`DATA_WIDTH/`KO_PARAMETER-1+3:0] seg_2_result;
logic [`DATA_WIDTH/`KO_PARAMETER-1+5:0] seg_3_result;
logic [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_4_result;
logic [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_5_result;
logic [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_6_result; 
logic [`DATA_WIDTH/`KO_PARAMETER-1+6:0] seg_7_result;  
logic [`DATA_WIDTH/`KO_PARAMETER-1+6:0] seg_8_result; 



/*
compressor_3to2 compressor_3to2_tb(
	.in0   (in0),
	.in1   (in1),
	.in2   (in2),
	.out0  (out0),
	.out1  (out1)
);


compressor_7to3 compressor_7to3_tb(
	.in0   (in0),
	.in1   (in1),
	.in2   (in2),
	.in3   (in3),
	.in4   (in4),
	.in5   (in5),
	.in6   (in6),
	.out0  (out0),
	.out1  (out1),
	.out2  (out2)
);

 */



ko_mul_split ko_mul_split_A(
		.mul		  	(a),
		.m0			(a0),		
		.m1			(a1),		
		.m2			(a2),
		.m3			(a3)		
);

ko_mul_split ko_mul_split_B(
		.mul		  	(b),
		.m0			(b0),		
		.m1			(b1),		
		.m2			(b2),
		.m3			(b3)		
);


//Calculate Internal 
calculate_inverse calculate_inverse_u0(
		 //input
		.a0				(a0),
		.a1				(a1),
		.a2				(a2),
		.a3				(a3),
		.b0				(b0),
		.b1				(b1),
		.b2				(b2),
		.b3				(b3),
		
		//output
		.p_0 					(p_0 		),
		.p_1 					(p_1 		),
		.p_2 					(p_2 		),
		.p_3 					(p_3 		),
		.p_0_i 				(p_0_i 		),
		.p_1_i 				(p_1_i 		),
		.p_2_i 				(p_2_i 		),
		.p_3_i 				(p_3_i 		),		
		.p_01					(p_01		),
		.p_02					(p_02		),
		.p_13					(p_13		),
		.p_23					(p_23		),
		.p_01_i				(p_01_i		),
		.p_02_i				(p_02_i		),
		.p_13_i				(p_13_i		),
		.p_23_i				(p_23_i		),
		.p_0123 			(p_0123 )
);


seg_part_18to35_cal seg_part_18to35_cal_u0 (
 //input
 .row_0			(p_0[2*`DATA_WIDTH/`KO_PARAMETER-1:`DATA_WIDTH/`KO_PARAMETER]),
 .row_1			(p_01[`DATA_WIDTH/`KO_PARAMETER-1:0]),
 .row_2			(p_0_i[`DATA_WIDTH/`KO_PARAMETER-1:0]),
 .row_3			(p_1_i[`DATA_WIDTH/`KO_PARAMETER-1:0]),
 .row_4			(18'h2),
 //output
 .result 		(seg_2_result)
 
 );
 



ko_4_mul_top ko_4_mul_top_u0 (
//input 
.A(a),
.B(b),
//output
.result(actual)
);



always #5 clk=~clk;

initial begin

clk =0;
rst =1;


repeat (10) @(posedge clk);

rst =0;


#50;

c = a*b;









$display("The split is %h %h %h %h\n",a3,a2,a1,a0);	
$display("The split is %h %h %h %h\n",b3,b2,b1,b0);	

$display ("The p_0 is %h \n",p_0);
$display ("The p_1 is %h\n",p_1);
$display ("The p_2 is %h\n",p_2);
$display ("The p_3 is %h\n",p_3);
$display ("The p_0_i is %h\n",p_0_i);
$display ("The p_1_i is %h\n",p_1_i);
$display ("The p_2_i is %h\n",p_2_i);
$display ("The p_3_i is %h\n",p_3_i);
$display ("The p_01 is %h\n",p_01);
$display ("The p_02 is %h\n",p_02);
$display ("The p_13 is %h\n",p_13);
$display ("The p_23 is %h\n",p_23);	
$display ("The p_01_i is %h\n",p_01_i);
$display ("The p_02_i is %h\n",p_02_i);
$display ("The p_13_i is %h\n",p_13_i);
$display ("The p_23_i is %h\n",p_23_i);	
$display ("The p_0123 is %h\n",p_0123);	

/*
$display("The seg_2_result is %h ",seg_2_result);
$display("The seg_3_result is %h",seg_3_result);
$display("The seg_4_result is %h",seg_4_result);
$display("The seg_5_result is %h",seg_5_result);
$display("The seg_6_result is %h",seg_6_result);
$display("The seg_7_result is %h",seg_7_result);
$display("The seg_8_result is %h",seg_8_result);
 
 */
 
$display("The a is %h		%b\n",a,a);	
$display("The b is %h		%b\n",b,b);	
$display("The expect result is %h\n",c);	
$display("The actual result is %h\n",actual);


//$display("The out2 out1 out0 is %b%b%b\n", out2,out1,out0);

$display("FINISH");

end 

always @(negedge rst) begin
 
random_0 = $urandom();
random_1 = $urandom();
random_2 = $urandom();
random_3 = $urandom();
random_4 = $urandom();
random_5 = $urandom();
 
//a = {random_2[9:0],random_1,random_0};
//b = {random_5[9:0],random_4,random_3};
a = 72'h12_3456_789a_bcde_f012;
b = 72'hfe_dcba_9876_5432_10fe;
   
   
   
   
   
   
   
	 
end




endmodule