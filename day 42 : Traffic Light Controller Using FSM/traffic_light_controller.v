
module traffic_light_controller(clk,reset,count,R1,Y1,G1,R2,Y2,G2,R3,Y3,G3,R4,Y4,G4);

input clk, reset;
output reg [2:0] count ;
output reg R1;
output reg Y1; 
output reg G1 ;
output reg R2,Y2,G2 ;
output reg R3,Y3,G3 ;
output reg R4,Y4,G4 ;

parameter [1:0] state1 = 2'b00;
parameter [1:0] state2 = 2'b01;
parameter [1:0] state3 = 2'b10;
parameter [1:0] state4 = 2'b11;

reg [1:0] state ;
parameter [2:0] delay7 = 3'b111;
parameter [2:0] delay5 = 3'b101 ;
parameter [2:0] delay2 = 3'b010;




always@(posedge clk or posedge reset) begin
    if(reset) begin
      state <= state1;
      count <= 0;
    end
    
    else begin
    
    case(state)
    
    state1  :  if(count < delay7)begin
                  state <= state1;
                  count <= count + 1'b1 ;
               end 
               else begin
                 state <= state2;
                 count <= 3'b0 ;
               end
               
    state2  :  if(count < delay2)begin
                  state <= state2;
                  count <= count + 3'b1 ;
               end
               else begin
                  state <= state3;
                  count <= 3'b0;
               end
               
    state3  :  if(count < delay5)begin
                  state <= state3;
                  count <= count + 3'b1 ;
               end
               else begin
                  state <= state4;
                  count <= 3'b0;
               end             

    state4  :  if(count < delay2)begin
                  state <= state4;
                  count <= count + 3'b1 ;
               end
               else begin
                  state <= state1;
                  count <= 3'b0;
               end
    default :  state <= state1;
    
     endcase
    end 
   end
  
  always@(state)
  
    begin
    
      case(state)
      
      state1  : begin
                  R1 <= 1'b0;
                  Y1 <= 1'b0;
                  G1 <= 1'b1;
                  R2 <= 1'b0 ;
                  Y2 <= 1'b0;
                  G2 <= 1'b1;
                  R3 <= 1'b1;
                  Y3 <= 1'b0;
                  G3 <= 1'b0;
                  R4 <= 1'b1;
                  Y4 <= 1'b0;
                  G4 <= 1'b0;
                  
                end 
                
      state2  : begin
                  R1 <= 1'b0;
                  Y1 <= 1'b1;
                  G1 <= 1'b0;
                  R2 <= 1'b0 ;
                  Y2 <= 1'b1;
                  G2 <= 1'b0;
                  R3 <= 1'b1;
                  Y3 <= 1'b0;
                  G3 <= 1'b0;
                  R4 <= 1'b1;
                  Y4 <= 1'b0;
                  G4 <= 1'b0;
                  
                end 
                
      state3  : begin
                  R1 <= 1'b1;
                  Y1 <= 1'b0;
                  G1 <= 1'b0;
                  R2 <= 1'b1 ;
                  Y2 <= 1'b0;
                  G2 <= 1'b0;
                  R3 <= 1'b0;
                  Y3 <= 1'b0;
                  G3 <= 1'b1;
                  R4 <= 1'b0;
                  Y4 <= 1'b0;
                  G4 <= 1'b1;
                  
                end 
                
      state4  : begin
                  R1 <= 1'b1;
                  Y1 <= 1'b0;
                  G1 <= 1'b0;
                  R2 <= 1'b1 ;
                  Y2 <= 1'b0;
                  G2 <= 1'b0;
                  R3 <= 1'b0;
                  Y3 <= 1'b1;
                  G3 <= 1'b0;
                  R4 <= 1'b0;
                  Y4 <= 1'b1;
                  G4 <= 1'b0;
                  
                end 
               
      default : begin
                  R1 <= 1'b0;
                  Y1 <= 1'b0;
                  G1 <= 1'b0;
                  R2 <= 1'b0 ;
                  Y2 <= 1'b0;
                  G2 <= 1'b0;
                  R3 <= 1'b0;
                  Y3 <= 1'b0;
                  G3 <= 1'b0;
                  R4 <= 1'b0;
                  Y4 <= 1'b0;
                  G4 <= 1'b0;
                  
                end 
                
      endcase
    end
endmodule
