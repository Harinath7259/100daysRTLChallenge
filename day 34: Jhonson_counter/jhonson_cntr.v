
module jhonson_cntr(input clk,rst, output qn3,qn2,qn1,qn0 );

 wire q ;
 
 d_ff d3(q ,clk,rst,qn3,);
 d_ff d2(qn3,clk,rst,qn2,);
 d_ff d1(qn2,clk,rst,qn1,);
 d_ff d0(qn1,clk,rst,qn0,q);
 
endmodule
