
module testbench ;

 reg [3:0] in;
 wire [4:0] out;
 wire parity;
 
 parity_generator p(in,parity,out);
 
 initial begin 
 
 in = 4'b0011;
 #200 in = 4'b1011;
 #200 in = 4'b0000;
 #200 in = 4'b0111;
 #200 in = 4'b1111;
 
 end
 
 always@(in) begin
 if(parity== 0 && out == {1'b0,in})
  $display("test passed");
  
 else if(parity == 1 && out == {1'b1,in})
  $display("test passed");
  
 else
  $display("test failed");
 end 
endmodule
