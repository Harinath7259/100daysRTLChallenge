
module sync_4bitup_cntr(input clk, output rst,q0,q1,q2,q3);
 
 
 t_ff t1(1,clk,rst,q0,);
 
 t_ff t2(q0,clk,rst,q1,);
 
 t_ff t3(q0 & q1,clk,rst,q2,);
 
 t_ff t4(q2 & q1 & q0,clk,rst,q3,);
 
 assign rst = q1 & q3 & clk;
 
endmodule
