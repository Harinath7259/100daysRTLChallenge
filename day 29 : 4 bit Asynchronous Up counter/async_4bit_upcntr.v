
module async_4bit_upcntr( input clk,rst, output q0,q1,q2,q3);

wire q0bar,qbar1,q2bar,q3bar ;

 t_flipflop t1(1'b1,clk,rst,q0 ,q0bar);
 t_flipflop t2(1'b1,q0bar,rst, q1, q1bar);
 t_flipflop t3(1'b1,q1bar,rst, q2 ,q2bar);
 t_flipflop t4(1'b1,q2bar,rst,q3,q3bar);
 
 
 
endmodule
