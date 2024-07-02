
module mux_2x1(input [3:0]a,b,input sel,output reg [3:0] out);

always@( a or b or sel)
case(sel)
 0 :  out = a;
 1 :  out = b;
 endcase

endmodule
