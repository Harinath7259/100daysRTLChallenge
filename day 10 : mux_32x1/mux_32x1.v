
module mux_32x1(input [0:31] in,input [4:0] sel,output  out);

wire [0:3] w;
 
 mux_8x1 m1(in[0:7],sel[2:0],w[0]);
 
 mux_8x1 m2(in[8:15],sel[2:0],w[1]);
 
 mux_8x1 m3(in[16:23],sel[2:0],w[2]);
 
 mux_8x1 m4(in[24:31],sel[2:0],w[3]);
 
 mux_4x1 m5(w[0:3] ,sel[4:3],out);
 
endmodule
