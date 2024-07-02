
module testbench ;
 reg [3:0] a;
 reg enable;
 wire [15:0] out;
 integer i;
 
 decoder_4x16 d1(a,enable,out);
 
 initial begin
 enable = 0; a =4'b0100;
 #50 enable = 1;a = 4'b0000;
 for( i = 0;i<15 ; i = i+1)begin
  #62 a =a+1;
  end
 
 end
endmodule
