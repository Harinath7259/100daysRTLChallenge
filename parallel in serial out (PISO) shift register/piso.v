
module piso(input [3:0] in,input load,  clk, clr, output reg  out);

 reg [3:0] q ;
  
  always@(posedge clk or posedge clr) begin 
   
   if(clr) begin
    out <= 1'b0 ;
   end
   
   else begin 
    if(load) begin
      q <= in ;
    end
    
    else begin
      {q,out} <= {1'b0,q[3:0]} ;
     
   end
   
   end
   end   
endmodule
