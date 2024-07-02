
module T_flipflop(input t,rst, clk, output  qn, qnbar);

 SR_flipflop I1(t & qnbar , t & qn, clk, rst, qn, qnbar);
  
endmodule
