
// Carry Skip Adder

module carry_skip_adder4bit( input [3:0] a,b,input cin,output [3:0] sum,output cout );

wire out;
wire [3:0] C,P,G;
assign P = a ^ b;
assign G = a & b;

and a1(out,P[0],P[1],P[2],P[3]);

mux2x1 m1(C[3],cin,out,cout);

unit_adder_block A1(G[0],P[0],cin,sum[0],C[0]);
unit_adder_block A2(G[1],P[1],C[0],sum[1],C[1]);
unit_adder_block A3(G[2],P[2],C[1],sum[2],C[2]);
unit_adder_block A4(G[3],P[3],C[2],sum[3],C[3]);

endmodule
