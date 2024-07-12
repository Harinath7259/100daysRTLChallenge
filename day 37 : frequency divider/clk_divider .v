
module clk_divider(input clk, rst, output clk_by2, clk_by3, clk_by4 );

  freq_by2 F1(.clk(clk), .rst(rst), .clkout(clk_by2)) ;
  freq_by3 F2(.clk(clk), .rst(rst), .clkout(clk_by3)) ;
  freq_by4 F3(.clk(clk), .rst(rst), .clkout(clk_by4)) ;
  
endmodule
