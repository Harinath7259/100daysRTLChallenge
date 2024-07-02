
module testbench ;

 reg S,R,Enable;
 wire Q,Qbar;
 
 sr_latch s(.S(S),.R(R),.Enable(Enable),.Q(Q),.Qbar(Qbar));
 
 initial begin
 
 S = 1; R = 0; Enable = 1;
#100 S = 0 ; R = 1;
#100 S = 0 ; R = 0;
#100 S = 1 ; R = 1;
#100 S = 1; R = 0; 
#100 S = 0 ; R = 1;
#100 S = 0 ; R = 0;
#100 S = 1 ; R = 1;
#100 S = 0 ; R = 1;
#100 S = 0 ; R = 0;
 
 end
 
endmodule
