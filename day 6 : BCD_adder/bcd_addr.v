
module BCD_adder( input [7:0] a,b,input cin,output [7:0] sum,output cout);

wire [7:0] s,s1,s2;
wire [2:0]c;
wire [1:0]out;

// for first 4 bit 
ripple_carry_adder r(a[3:0],b[3:0],cin,s[3:0],c[0]);

assign c[1] = c[0] | s[3]&s[2] | s[3]&s[1] ;

mux_2x1 m1(4'b0,6,c[1],s1[3:0]);

ripple_carry_adder r1(s1[3:0],s[3:0],0,sum[3:0],out[0]);


//for last 4bit
ripple_carry_adder r2(a[7:4],b[7:4],c[1],s[7:4],c[2]);

assign cout = c[2] | s[7]&s[6] | s[7]&s[5] ;

mux_2x1 m2(0,6,cout,s1[7:4]);

ripple_carry_adder r3(s1[7:4],s[7:4],0,sum[7:4],out[1]); 

endmodule
