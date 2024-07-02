
module SR_Latch(input S,R,Enable, output Q,Qbar);

 wire w1,w2 ;
 assign w1 = R & Enable;
 assign w2 = S  & Enable;
 
 assign Q = ~(Qbar|w1);
 assign Qbar = ~(Q | w2);
   
endmodule
