module demux1x4(Y, A, In);
  output reg [3:0] Y; // remove reg for trying the alternative solution
  input      [1:0] A;
  input            In;

always @(Y, A)
begin
  case (A)
    2'b00:
    begin
      Y[0] = In;
      Y[3:1] = 0;
    end

    2'b01:
    begin
      Y[0] = 0;
      Y[1] = In;
      Y[3:2] = 0;
    end

    2'b10:
    begin
      Y[1:0] = 0;
      Y[2] = In;
      Y[3] = 0;
    end

    2'b11:
    begin
      Y[2:0] = 0;
      Y[3] = In;
    end
  endcase
end

/* Alternate style: 
 * assign Y[0] = In & (~A[0]) & (~A[1]);
 * assign Y[1] = In & (A[0]) & (~A[1]);
 * assign Y[2] = In & (~A[0]) & (A[1]);
 * assign Y[3] = In & (A[0]) & (A[1]);
 */

endmodule