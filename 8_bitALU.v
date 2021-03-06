module EightBitALU(F,A,B,Y);

input A,B;
input [2:0]F;
output reg Y;
always@(F)

begin

case(F)

3'b000: Y=A+B;
3'b001: Y=A^B;
3'b010: Y=A&B;
3'b011: Y=A|B;
3'b100: Y=A-B;
3'b101: Y=A^(~B);
3'b110: Y=A&(~B);
3'b111: Y=A|(~B);
default: $display("no OP");
endcase
end
endmodule
