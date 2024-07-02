
module demux_1x16(input a,[3:0] sel,output [0:15] out);

wire [0:3]w;

 demux_1x4 d1(a,sel[3:2], w);
 
 demux_1x4 d2(w[0],sel[1:0],out[0:3]);
 demux_1x4 d3(w[1],sel[1:0],out[4:7]);
 demux_1x4 d4(w[2],sel[1:0],out[8:11]);
 demux_1x4 d5(w[3],sel[1:0],out[12:15]);
 
endmodule
