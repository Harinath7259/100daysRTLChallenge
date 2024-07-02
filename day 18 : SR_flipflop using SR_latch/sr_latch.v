
module SR_latch(input S,R,clk,output  Qn ,Qnbar );

 wire w1,w2;
 
 assign w1 = ~clk & S;
 assign w2 = ~clk & R;
 
 assign Qnbar = ~(Qn | w2);
 assign Qn = ~(Qnbar | w1);
  
  
endmodule
