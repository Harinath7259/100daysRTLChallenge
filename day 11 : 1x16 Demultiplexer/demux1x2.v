
module demux_1x2(input a,input sel,output [0:1] out);

 assign out = sel? {1'b0,a} : {a,1'b0} ;
 
 
endmodule
