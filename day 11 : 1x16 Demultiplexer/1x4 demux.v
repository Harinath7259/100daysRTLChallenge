
module demux_1x4(input a,input [1:0] sel,output [0:3] out );

 wire [0:1] w;
 
 demux_1x2 d1(a,sel[1],w);
 
 demux_1x2 d2(w[0],sel[0],out[0:1]);
 demux_1x2 d3(w[1],sel[0],out[2:3]);
 
endmodule
