`include "define.v"

module calculate_inverse(

//input 
a0,
a1,
a2,
a3,
b0,
b1,
b2,
b3,

//output
p_0,
p_1,
p_2,
p_3,
p_0_i,
p_1_i,
p_2_i,
p_3_i,
p_01,
p_02,
p_13,
p_23,     
p_01_i,
p_02_i,
p_13_i,
p_23_i,
p_0123
);

input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a0;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a1;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a2;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	a3;

input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b0;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b1;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b2;
input		[`DATA_WIDTH/`KO_PARAMETER-1:0] 	b3;

output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_1;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_2;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_3;   
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_1_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_2_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_3_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_01;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_02;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_13;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_23;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_01_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_02_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_13_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_23_i;
output 		[2*`DATA_WIDTH/`KO_PARAMETER+4:0] p_0123;   



    
//Calculate 
assign p_0 = a0*b0; 
assign p_1 = a1*b1;
assign p_2 = a2*b2;
assign p_3 = a3*b3;  

assign p_0_i = ~p_0 ;
assign p_1_i = ~p_1 ;
assign p_2_i = ~p_2 ;
assign p_3_i = ~p_3 ;

assign p_01 = (a0+a1)*(b0+b1);     
assign p_02 = (a0+a2)*(b0+b2);     
assign p_13 = (a1+a3)*(b1+b3);     
assign p_23 = (a2+a3)*(b2+b3);     


assign p_01_i = ~p_01;
assign p_02_i = ~p_02;
assign p_13_i = ~p_13;
assign p_23_i = ~p_23;

                                   
assign p_0123 = (a0+a1+a2+a3)*(b0+b1+b2+b3);


endmodule