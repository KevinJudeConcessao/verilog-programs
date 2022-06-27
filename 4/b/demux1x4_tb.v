`timescale 1ns/1ns

module demux1x4_testbench;

wire [3:0] Y;
reg  [1:0] A;
reg        In;

demux1x4 Demux(.Y(Y), .A(A), .In(In));

initial 
begin

    $dumpfile("demux1x4_out.vcd");
    $dumpvars(0, demux1x4_testbench);

    In = 1;
    A = 2'b00;
#10 A = 2'b01;
#10 A = 2'b10;
#10 A = 2'b11;   
end

initial
  $monitor("[$t]: In = %d   A[1:0] = %d%d   Y[3:0] = %d%d%d%d", 
            $time, A[1], A[0], Y[3], Y[2], Y[1], Y[0]);

endmodule