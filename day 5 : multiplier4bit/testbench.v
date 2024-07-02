
module testbench;

 reg [3:0] a,b;
 wire [7:0] out;
 
 multiplier4x4 m(a,b,out);
 
 initial begin
 
 a = 4'ha ; b = 4'hb;
 
 #100 a = 4'h8; b = 4'hc;
 
 #200 a = 4'hc ;b = 4'hb;
 
 #200 a = 4'h5 ; b = 4'h7;
 
 #200 a = 4'h8 ; b = 4'h5;
 
 #100 a = 4'hf ; b = 4'hf;
 
 #100 a = 4'hd ; b = 4'he;
 
 end 
 
endmodule
