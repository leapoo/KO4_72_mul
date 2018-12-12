`include "define.v"

module ko_mul_split(

//input 
mul,
//output
//This should generate from scripts if DATA_WIDTH or KO_PARAMETER change
m0,
m1,
m2,
m3

);


input  [`DATA_WIDTH-1:0]  							mul;

output [`DATA_WIDTH/`KO_PARAMETER-1:0] 	m0;
output [`DATA_WIDTH/`KO_PARAMETER-1:0] 	m1;
output [`DATA_WIDTH/`KO_PARAMETER-1:0] 	m2;
output [`DATA_WIDTH/`KO_PARAMETER-1:0] 	m3;

			
	assign m3 = mul[4*`DATA_WIDTH/`KO_PARAMETER-1:3*`DATA_WIDTH/`KO_PARAMETER];
	assign m2 = mul[3*`DATA_WIDTH/`KO_PARAMETER-1:2*`DATA_WIDTH/`KO_PARAMETER];
	assign m1 = mul[2*`DATA_WIDTH/`KO_PARAMETER-1  :`DATA_WIDTH/`KO_PARAMETER];
	assign m0 = mul[`DATA_WIDTH/`KO_PARAMETER-1:0];
			

endmodule