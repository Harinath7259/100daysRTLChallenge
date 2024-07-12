
module testbench ;

 reg clk ;
 reg rst ;
 wire freq_by2, freq_by3, freq_by4;
 
 always #30 clk = ~clk ; 
 
 clk_divider CD( .clk(clk), .rst(rst), .clk_by2(freq_by2), .clk_by3(freq_by3), .clk_by4(freq_by4));
 
 initial begin
  
  clk = 0;
  rst = 1;
  #3 rst =0;
  
 end
  
endmodule
