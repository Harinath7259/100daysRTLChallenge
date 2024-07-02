module decoder_4x16(input [3:0] a,input enable,output [15:0] out );
  
wire [3:0] w;

 decoder_2x4 d1(a[3:2],enable,w[3:0]);
 
 decoder_2x4 d2(a[1:0],w[0],out[3:0]);
 decoder_2x4 d3(a[1:0],w[1],out[7:4]);
 decoder_2x4 d4(a[1:0],w[2],out[11:8]);
 decoder_2x4 d5(a[1:0],w[3],out[15:12]);
 
endmodule
