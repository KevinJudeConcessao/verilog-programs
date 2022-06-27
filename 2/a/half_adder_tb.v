`timescale 1ns/1ns

module half_adder_testbench;

reg a;
reg b;

wire sum;
wire carry;

half_adder adder(.sum(sum), .carry(carry), .input_a(a), .input_b(b));

initial
begin

    $dumpfile("half_adder_out.vcd");
    $dumpvars(0, half_adder_testbench);

    a = 0; b = 0;
#1  a = 0; b = 1;
#1  a = 1; b = 1;
#1  a = 1; b = 0;
end

initial
  $monitor("Sum = %d | Carry = %d | A = %d | B = %d", sum, carry, a, b);

endmodule