module t_flipflop(Q, QBar, T, Clock);
  output  Q;
  output  QBar;
  input   T;
  input   Clock;

jk_flipflop(.Q(Q), .QBar(QBar), .J(T), .K(T), .Clock(Clock));

endmodule