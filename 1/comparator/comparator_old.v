module comparator( out, x, y );
  input x;
  input y;
  output out;

// assign out = (x & y) | (~x & ~y);

wire xy_out;
wire not_x;
wire not_y;
// wire comparator_out;
wire xnot_ynot;

and(xy_out, x, y);

not(not_x, x);
not(not_y, y);
and(xnot_ynot, not_x, not_y);

or(out, xy_out, xnot_ynot);

endmodule
