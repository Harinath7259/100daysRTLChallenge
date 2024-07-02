
module decoder_2x4(input [1:0] a,input enable,output [3:0] d);

 assign d[0] = ~a[0]&~a[1]&enable;
 assign d[1] = a[0]&~a[1]&enable;
 assign d[2] = ~a[0]&a[1]&enable;
 assign d[3] = a[0]&a[1]&enable;
 
endmodule
