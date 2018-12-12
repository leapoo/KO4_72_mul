`include "define.v"


module ko_4_mul_top (
//input 
A,B,
//output
result
);


//input port define
input [`DATA_WIDTH-1:0] 		A;
input [`DATA_WIDTH-1:0] 		B;


//output port define
output		[2*`DATA_WIDTH-1:0] 		result;


wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a0;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a1;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a2;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a3;

wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b0;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b1;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b2;
wire		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b3;


//Internal Results
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_1;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_2;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_3;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_01;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_02;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_13;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_23;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_1_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_2_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_3_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_01_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_02_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_13_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_23_i;
wire 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0123;





//Segment Result
wire [`DATA_WIDTH/`KO_PARAMETER-1+3:0] seg_2_result;
wire [`DATA_WIDTH/`KO_PARAMETER-1+5:0] seg_3_result;
wire [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_4_result;
wire [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_5_result;
wire [`DATA_WIDTH/`KO_PARAMETER-1+7:0] seg_6_result; 
wire [`DATA_WIDTH/`KO_PARAMETER-1+6:0] seg_7_result;  
wire [`DATA_WIDTH/`KO_PARAMETER-1+6:0] seg_8_result;   



//Split the A,B multiplier
ko_mul_split ko_mul_split_A(
		.mul		  	(A),
		.m0			(a0),		
		.m1			(a1),		
		.m2			(a2),
		.m3			(a3)		
);

ko_mul_split ko_mul_split_B(
		.mul			(B),
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

//First Part Direct Fall into the result


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
 

 

assign result = {seg_3_result[17:0],seg_2_result[17:0],p_0[17:0]};


endmodule
