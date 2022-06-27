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

module d_flipflop(Q, QBar, D, Clock, Clear);
  output  reg Q;
  output  reg QBar;
  input   D;
  input   Clock;
  input   Clear;

always @ (posedge Clock or posedge Clear)
begin
  if (Clear == 1)
  begin
    Q     <= 0;
    QBar  <= 1;
  end
  else
  begin
    Q     <= D;
    QBar  <= !D;
  end
end

/*
 * wire DNot;
 * wire OneOut;
 * wire TwoOut;
 * 
 * not_gate  zero(.out(DNot), .in(D));
 * 
 * nand_gate one(.out(OneOut), .input_a(Clock), .input_b(D));
 * nand_gate two(.out(TwoOut), .input_a(Clock), .input_b(DNot));
 * 
 * nand_gate three(.out(Q), .input_a(OneOut), .input_b(QBar));
 * nand_gate four (.out(QBar), .input_a(TwoOut), .input_b(Q));
 */
endmodule