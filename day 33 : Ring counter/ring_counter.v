
module ring_counter(input clk,rst,preset, output q0,q1,q2,q3 );

 d_ff d1(q3,preset,clk,rst,q0);
 d_ff d2(q0,0,clk,rst,q1);
 d_ff d3(q1,0,clk,rst,q2);
 d_ff d4(q2,0,clk,rst,q3);
 
 
endmodule
