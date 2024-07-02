
module testbench ;

 reg clk,clr,load ;
 reg [3:0] in ;
 wire  out;
 
 always #20 clk = ~clk ;
 always begin
           #25 load = ~load ;
           #175 load = ~load ;
                 
        end
           
 piso DUT (in,load,clk, clr, out);
 
 initial begin
  clr =0;
  clk = 0 ;
  load = 1;
  
  repeat(5) begin
    in = $random ;
   #200 ;
  end
  
  end
   
endmodule
