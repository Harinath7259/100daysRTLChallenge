
module parity_generator( input [3:0]in,output parity,[4:0] out );

 assign parity = in[0] ^in[1]^in[2]^in[3];
 
 assign out = {parity,in};
 
endmodule
