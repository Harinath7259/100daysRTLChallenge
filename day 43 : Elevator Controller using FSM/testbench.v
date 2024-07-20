
module testbench ;

 reg  clk, rst;
 reg  g, f1, f2, f3 ;
 wire [1:0] floor;
 
 
 always #20 clk = ~clk ;
 
 elevator ev (.clk(clk), .rst(rst), .g(g), .f1(f1), .f2(f2), .f3(f3), .floor(floor));
 
 initial begin
 
  clk = 0;
  rst = 1;
  #10 rst  = 0;
  
  f1 = 1'b1;g = 1'b0 ; f2 = 1'b0 ; f3 = 1'b0 ;
  #150 f2 = 1'b1 ; f1 = 1'b0;
  #150 f3 = 1'b1 ; f2 = 1'b0 ;
  #150 f1 = 1'b1 ; f3 = 1'b0;
  #150 f3 = 1'b1 ; f1 = 1'b0;
  #150 g = 1'b1 ; f3 = 1'b0;
  #150 f2 = 1'b1 ; g = 1'b0 ;
end  

endmodule
