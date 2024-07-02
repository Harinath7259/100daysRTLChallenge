module testbench;

 reg In;
 reg [3:0] sel;
 wire [0:15] out;
 integer i;
 demux_1x16 d1(In,sel,out);
 
 initial begin
 
 In = 1;sel = 4'b0000;
 
 for( i =0;i<16;i = i+1)begin
  #62 sel = sel +1'b1;
  end
   
 end
 
endmodule
