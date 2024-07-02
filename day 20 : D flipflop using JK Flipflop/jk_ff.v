
module jk_flipflop(input j, k, clk, output qn,qnbar);

wire nand1_out, nand2_out;

nand g1(nand1_out, j, qnbar, clk);
nand g2(nand2_out, k, qn, clk);

nand g3(qn, nand1_out, qnbar);
nand g4(qnbar, nand2_out, qn);

endmodule
