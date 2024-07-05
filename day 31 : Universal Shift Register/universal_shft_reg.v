
module universal_shft_reg(input serial_in_rshft, serial_in_lshft,clk, rst, [3:0] b, [1:0] sel, output [3:0] q);

 wire [3:0] qn;
 wire [3:0] qbar;
 mux_4x1 m1(b[3],q[2],serial_in_rshft,q[3],sel,qn[3]);
 mux_4x1 m2(b[2],q[1],q[3],q[2],sel,qn[2]);
 mux_4x1 m3(b[1],q[0],q[2],q[1],sel,qn[1]);
 mux_4x1 m4(b[0],serial_in_lshft,q[1],q[0], sel,qn[0]);
 
 d_ff d1(qn[3],clk,rst,q[3],qbar[3]);
 d_ff d2(qn[2],clk,rst,q[2],qbar[2]);
 d_ff d3(qn[1],clk,rst,q[1],qbar[1]);
 d_ff d4(qn[0],clk,rst,q[0],qbar[0]);
 
 
endmodule
