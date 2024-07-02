
module async_4bitcounter(input [3:0] t,input clk,rst,output qn0,qn1,qn2,qn3);


 t_flipflop T1 (t[0],clk,rst,qn0,);
 t_flipflop T2 (t[1],qn0,rst,qn1,);
 t_flipflop T3 (t[2],qn1,rst,qn2,);
 t_flipflop T4 (t[3],qn2,rst,qn3,);
 
 
endmodule
