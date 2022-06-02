module Adder32 (A, B, Ci, S, Co);

input[63:0] A;
input[63:0] B;
input Ci;
output[63:0] S;
output Co;
wire[64:0] Sum33;
assign Sum33 = A + B + Ci ;
assign S = Sum33[63:0] ;
assign Co = Sum33[64] ;
endmodule
