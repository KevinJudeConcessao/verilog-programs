module full_adder(sum, carry_out, input_a, input_b, carry_in);
output  sum;
output  carry;
input   input_a;
input   input_b;
input   carry_in;

wire one_sum;
wire one_carry;
wire two_carry;


half_adder one(.sum(one_sum), .carry(one_carry), .input_a(input_a), .input_b(input_b));
half_adder two(.sum(sum), .carry(two_carry), .input_a(one_sum), .input_b(carry_in));
or carry(carry_out, one_carry, two_carry);

endmodule