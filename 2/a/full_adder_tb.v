`timescale 1ns/1ns

module full_adder_testbench;

reg a;
reg b;
reg carry_in;

wire sum;
wire carry;

full_adder adder(.sum(sum), .carry_out(carry), .input_a(a), .input_b(b), .carry_in(carry_in));

initial
begin

    $dumpfile("half_adder_out.vcd");
    $dumpvars(0, half_adder_testbench);

    carry_in = 0; a = 0; b = 0;
#1  carry_in = 0; a = 0; b = 1;
#1  carry_in = 0; a = 1; b = 1;
#1  carry_in = 0; a = 1; b = 0;
#1  carry_in = 1; a = 0; b = 0;
#1  carry_in = 1; a = 0; b = 1;
#1  carry_in = 1; a = 1; b = 1;
#1  carry_in = 1; a = 1; b = 0;
end

initial
  $monitor("Sum = %d | Carry-Out = %d | Carry_In = %d | A = %d | B = %d ", sum, carry_out, carry_in, a, b);

endmodule