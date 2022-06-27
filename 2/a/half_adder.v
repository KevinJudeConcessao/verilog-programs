module half_adder(sum, carry, input_a, input_b);
  output  sum;        // add reg for behavioural modelling
  output  carry;      // add reg for behavioural modelling
  input   input_a;
  input   input_b;

xor the_sum(sum, input_a, input_b);
and the_carry(carry, input_a, input_b);

/* Dataflow modelling 
 * assign sum = input_a ^ input_b;
 * assign carry = input_a & input_b;
 */

/* Behavioral modelling
 * always @ (input_a or input_b)
 * begin
 *   if (input_a == 0 && input_b == 0)
 *   begin
 *     sum   = 0;
 *     carry = 0;
 *   end
 *   else if (input_a == 0 && input_b == 1)
 *   begin
 *     sum   = 1;
 *     carry = 0;
 *   end
 *   else if (input_a == 1 && input_b == 0)
 *   begin
 *     sum   = 1;
 *     carry = 0;
 *   end
 *   else if (input_a == 1 && input_b == 1)
 *   begin
 *     sum   = 0;
 *     carry = 1;
 *   end
 * end
 */

endmodule