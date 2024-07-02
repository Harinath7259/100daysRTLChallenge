

module classTST;
 reg [3:0] a,b;
 reg cin;
 wire [3:0]sum;
 wire cout;
 
 carry_select_adder c( a,b,cin,sum,cout);
 initial begin
 a = 4'b0110 ; b=4'b1001; cin =0 ;
 #100 a = 4'b1100;  b=4'b0011;
 #100 a = 4'b1010; b = 4'b0101; cin = 1;
 #100 a = 4'b0000; b = 4'b1111; 
 #100 a = 4'b1011; b = 4'b1011; cin = 0;
 #100 a = 4'b0111 ; b =4'b1000;
 #100 a = 4'b1000 ; b = 4'b0111;cin =1;
 #200 a = 4'b1111 ; b = 4'b1111;
 end
 endmodule
