
module bidir_shift_reg(input in,clk,rst,dir,output reg [3:0]  out);

 always@(posedge clk or posedge rst)
 
  if(rst) begin
    out <= 0;
    end
  else begin
  
    if(dir) begin
      out[3] <= in;
      out[2] <= out[3];
      out[1] <= out[2];
      out[0] <= out[1];
    end
    else begin
      out[0] <= in ;
      out[1] <= out[0] ;
      out[2] <= out[1] ;
      out[3] <= out[2] ;
      
    end
    end
     
endmodule
