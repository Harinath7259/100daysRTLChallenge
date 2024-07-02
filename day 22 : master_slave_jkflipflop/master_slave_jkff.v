
module master_slave_jkff(input j, k , rst, clk, output qn, qnbar);

 wire q1,q1bar;
 
  jk_latch g1(j, k, rst, clk, q1,q1bar);
  
  jk_latch g2(q1, q1bar, rst, ~clk, qn, qnbar);
  
endmodule
