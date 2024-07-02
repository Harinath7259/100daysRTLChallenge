
module Testbench ;
reg [7:0] y;
wire d2,d1,d0 ;
wire valid;
 pr_en8x3 p1(y,d2,d1,d0,valid);
 
 initial begin
 
 y = 03;
 #100 y = 10;
 #100 y = 8'hf;
 #100 y = 8'h00;
 #100 y = 8'h5d;
 #100 y = 8'h23;
 #100 y = 8'hff;
 #100 y = 8'hdc;
 #100 y = 8'hab;
 #100 y = 8'h45;
 
 end
 
endmodule
