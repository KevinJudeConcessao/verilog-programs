/*
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

module sr_flipflop(Q, QBar, S, R, Clock);
  output  reg Q;
  output  reg QBar;
  input   S;
  input   R;
  input   Clock;

always @ (posedge Clock)
begin
  if (S == 0 && R == 0)
  begin
    Q     <= Q;
    QBar  <= QBar;
  end
  else if (S == 0 && R == 1)
  begin
    Q     <= 0;
    QBar  <= 1;
  end
  else if (S == 1 && R == 0)
  begin
    Q     <= 1;
    QBar  <= 0;
  end
end

/*
 * wire OneOut;
 * wire TwoOut;
 * 
 * nand_gate one(.out(OneOut), .input_a(Clock), .input_b(S));
 * nand_gate two(.out(TwoOut), .input_a(Clock), .input_b(R));
 * 
 * nand_gate three(.out(Q), .input_a(OneOut), .input_b(QBar));
 * nand_gate four (.out(QBar), .input_a(TwoOut), .input_b(Q));
 */
endmodule