module comparator( out, x, y );
  input x;
  input y;
  output out;

// assign out = (x & y) | (~x & ~y);

comp C (out, x, y);

endmodule


primitive comp(out, input_x, input_y);
  output out; 
  input input_x;
  input input_y;

table
  0  0 : 1 ;
  0  1 : 0 ; 
  1  0 : 0 ;
  1  1 : 1 ;
endtable
endprimitive
