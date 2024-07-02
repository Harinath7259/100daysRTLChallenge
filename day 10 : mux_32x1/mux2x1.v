
module mux_2x1(input [0:1] in ,input sel,output out);

 assign out = ~sel&in[0] | sel&in[1];
 
endmodule
