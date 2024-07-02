
module pipo(input [3:0] pi, input clk, rst, output [3:0] po);

 reg [3:0] q;
 
 always@(posedge clk or posedge rst)begin
 
  if(rst)
   q <= 4'b0000;
   
  else
   q <= pi ;
 end
 assign po = q;
  
endmodule
