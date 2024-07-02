
module SR_Flipflop(input S,R,clk,output  Qn ,Qnbar );

 SR_latch s(S, R, clk, w1,w2);
 
 SR_latch s2(w1,w2,~clk,Qn,Qnbar);
 
  
endmodule
