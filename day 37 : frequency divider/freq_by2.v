
module freq_by2(input clk, rst, output reg clkout);

 always@(posedge rst or posedge clk) begin
   if(rst)
     clkout <= 0;
     
   else
  
     clkout <= ~clkout;
 end 
 
endmodule
