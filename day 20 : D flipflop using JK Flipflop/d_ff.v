
module d_flipflop(input d, clk, output qn, qnbar );

jk_flipflop i1(d, ~d, clk, qn, qnbar);

endmodule
