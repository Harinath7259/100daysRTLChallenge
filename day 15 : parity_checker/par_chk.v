
module parity_checker( data, valid);

input [3:0] data;
output reg valid;

wire check;

assign check = data[0] ^ data[1] ^ data[2] ^ data[3] ;

always@(check or data)
case(check)

0 : begin 
       valid = 1;
       $display("%t, test passed",$time);
    end
          
1 : begin
      valid = 0;
      $display("%t,test failed",$time);
    end

endcase
  
endmodule
