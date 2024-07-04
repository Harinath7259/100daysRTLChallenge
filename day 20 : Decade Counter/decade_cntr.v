
module decade_cntr( input clk,rst, output reg [3:0] count);

 always@(posedge clk or posedge rst)
 
  if(rst)
    count <= 4'b0000 ;
  else begin
  
   if(count == 4'b1001)
     count <= 4'b0000 ;
   else
     count = count + 1'b1 ;
  end
 
endmodule
