
module Testbench;

 reg A,B,C,D ;
 wire a,b,c,d,e,f,g;
 
 b27seg I1(A,B,C,D,a,b,c,d,e,f,g);
 
 initial begin
 
 {A,B,C,D} = 4'b0000;
 #100 {A,B,C,D} = 4'b0001;
 #100 {A,B,C,D} = 4'b0010;
 #100 {A,B,C,D} = 4'b0011;
 #100 {A,B,C,D} = 4'b0100;
 #100 {A,B,C,D} = 4'b0101;
 #100 {A,B,C,D} = 4'b0110;
 #100 {A,B,C,D} = 4'b0111;
 #100 {A,B,C,D} = 4'b1000;
 #100 {A,B,C,D} = 4'b1001;
 
 end 
endmodule
