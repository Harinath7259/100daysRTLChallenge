
module sipo(input d, clk,clr, output reg [3:0] q);
 always@(posedge clk or posedge clr) begin
  
  if(clr)begin
   q <= 4'b0000;
  end
  
  else begin
   q[3] <= d;
   q[2] <= q[3];
   q[1] <= q[2] ;
   q[0] <= q[1];
  end
  end
    
endmodule
