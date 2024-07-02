
module mux_4x1(input [0:3] in,input [1:0] sel,output  out);

wire [0:1] w;

mux_2x1 m1(in[0:1],sel[1],w[0]);

mux_2x1 m2(in[2:3],sel[1],w[1]);

mux_2x1 m3(w[0:1],sel[0],out);
  
endmodule
