
module testbench;
 reg [3:0] a;
 wire [3:0] b;
 complementor_2s c (.a(a),.b(b));
 
 initial begin
  a = 1011; 
  #100 a = 0110;
  #100 a = 0100;
  #100 a = 1001;
  #200 a = 1011;
  #200 a = 1111;
  #100 a = 0000;
  #100 a = 1010;
  end
endmodule
