
module testbench ;

reg clk, reset;
wire [2:0] count;
wire R1,Y1,G1 ;
wire R2,Y2,G2 ;
wire R3,Y3,G3 ;

always #15 clk = ~clk ;
traffic_light_controller tlc (clk,reset,count,R1,Y1,G1,R2,Y2,G2,R3,Y3,G3,R4,Y4,G4);

initial begin

 clk = 0;
 reset = 1;
 #2 reset = 0;
 
end

endmodule
