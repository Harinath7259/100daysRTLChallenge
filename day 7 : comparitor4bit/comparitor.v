
module comparitor_4bit(input [3:0] a,b,output a_less_b,a_greater_b,a_equal_b);

  wire w1,w2,w3;

  assign a_equal_b = (~(a[3]^b[3])) & (~(a[2]^b[2])) & (~(a[1]^b[1])) & (~(a[0]^b[0]));

  assign a_less_b = ~a[3]&b[3] | ~(a[3]^b[3])&~a[2]&b[2] | ~(a[3]^b[3])&~(a[2]^b[2])&~a[1]&b[1] | ~(a[3]^b[3])&~(a[2]^b[2])&~(a[1]^b[1])&~a[0]&b[0] ;

  assign a_greater_b = a[3]&~b[3] | ~(a[3]^b[3])&a[2]&~b[2] | ~(a[3]^b[3])&~(a[2]^b[2])&a[1]&~b[1] | ~(a[3]^b[3])&~(a[2]^b[2])&~(a[1]^b[1])&a[0]&~b[0] ;

endmodule
