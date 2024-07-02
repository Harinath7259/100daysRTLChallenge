
module Priority_Encoder8x3(input [7:0] y,output D2,D1,D0,valid);

 assign valid = y[0]|y[1]|y[2]|y[3]|y[4]|y[5]|y[6]|y[7] ;
 
 assign D0 = y[1]|y[3]|y[5]|y[7] ;
 
 assign D1 = y[2]|y[3]|y[6]|y[7] ;
 
 assign D2 = y[4]|y[5]|y[6]|y[7] ;
 
endmodule
