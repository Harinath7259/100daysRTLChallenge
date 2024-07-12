
module FSM(input in, clk, rst, output out);

 reg [1:0] state ;
 
 assign out = state[0] & state[1] & in ;
 
 always@(posedge clk or posedge rst)
 
  if(rst)
    state <= 2'b00 ;
  else
  
   case(state)
    
    2'b00 : state <= in ? 2'b01 : 2'b00 ;
    2'b01 : state <= in ? 2'b10 : 2'b00 ;
    2'b10 : state <= in ? 2'b11 : 2'b00 ;
    2'b11 : state <=  2'b00 ;
   
   endcase 

endmodule
