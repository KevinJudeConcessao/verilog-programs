module comparator( out, x, y );
  input x;
  input y;
  output reg out;

// assign out = (x & y) | (~x & ~y);

always @ (x or y)
begin
  case (x|y)
    2'b00 : out = 1;
    2'b01 : 
      begin
        out = 0;
      end
    2'b10 : out = 0;
    2'b11 : out = 1;
  endcase
end

endmodule


