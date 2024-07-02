
module mux_8x1(input [0:7] a,input [2:0] sel,output  out);

wire [0:1] w;

 mux_4x1 m1 (a[0:3],sel[2:1],w[0]);
 
 mux_4x1 m2 (a[4:7],sel[2:1],w[1]);
 
 mux_2x1 m3 (w[0:1],sel[0],out);
 
endmodule
