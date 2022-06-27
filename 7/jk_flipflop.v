/*
 * module nand_gate3(out, input_a, input_b, input_c);
 *   output  out;
 *   input   input_a;
 *   input   input_b;
 *   input   input_c;
 * 
 * assign out = ~(input_a & input_b & input_c);
 * endmodule
 * 
 * module nand_gate(out, input_a, input_b);
 *   output  out;
 *   input   input_a;
 *   input   input_b;
 * 
 * nand(out, input_a, input_b);
 * endmodule
 * 
 * module not_gate(out, in);
 *   output  out;
 *   input   in;
 * 
 * not(out, in);
 * endmodule
 */

module jk_flipflop(Q, QBar, J, K, Clock);
  output  reg Q;
  output  reg QBar;
  input   J;
  input   K;
  input   Clock;

always @ (posedge Clock)
begin
  if (J == 0 && K == 0)
  begin
    Q     <= Q;
    QBar  <= QBar;
  end
  else if (J == 0 && K == 1)
  begin
    Q     <= 0;
    QBar  <= 1;
  end
  else if (J == 1 && K == 0)
  begin
    Q     <= 1;
    QBar  <= 0;
  end
  else if (J == 1 && K == 1)
  begin
    Q     <= ~Q;
    QBar  <= ~QBar;
  end
end

/*
 * wire OneOut;
 * wire TwoOut;
 * 
 * nand_gate3 one(.out(OneOut), .input_a(Clock), .input_b(J), .input_c(QBar));
 * nand_gate3 two(.out(TwoOut), .input_a(Clock), .input_b(K), .input_c(Q));
 * 
 * nand_gate three(.out(Q), .input_a(OneOut), .input_b(QBar));
 * nand_gate four (.out(QBar), .input_a(TwoOut), .input_b(Q));
 */
endmodule