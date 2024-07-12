
module freq_by3(input clk, rst, output reg clkout);

 reg [1:0] count;
 
 always@(posedge clk or posedge rst) begin
  if(rst) begin 
    clkout <= 0;
    count <= 0;
  end  
  else begin
   
   count = count + 1'b1;
   if(count == 2'b10) begin
     count <= 2'b00;
     clkout <= ~clkout ;
   end
  
 end
 
 end
    
endmodule
