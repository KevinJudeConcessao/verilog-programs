`timescale 1ns/1ns

module comparator_testbench;

reg x_input;
reg y_input;

wire out;

comparator C(.out(out), .x(x_input), .y(y_input));

initial
begin

  $dumpfile("comparator_out.vcd");
  $dumpvars(0, comparator_testbench);

  x_input = 0;
  y_input = 0;

  #10 x_input = 0 ; y_input = 0 ;
  #20 x_input = 0 ; y_input = 1 ;
  #15 x_input = 1 ; y_input = 0 ;
  #5  x_input = 1 ; y_input = 1 ;
end

initial
  $monitor("X  = %d Y = %d Out = %d ", x_input, y_input, out);


endmodule
