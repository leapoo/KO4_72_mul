module compressor_3to2 (

//input
in0,in1,in2,

//output
out0,out1

);


//input
input 		in0;
input     in1;
input     in2;

//output 
output 		out0;
output 		out1;



assign out0 = in0^in1^in2;
assign out1 = (in0&&in1) ||(in1&&in2)||(in0&&in2);


endmodule