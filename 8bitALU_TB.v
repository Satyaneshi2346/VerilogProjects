module EightBitALU_TB();

reg A,B;
reg [2:0]F;

wire O;

EightBitALU EALU(F,A,B,O);

initial
begin
$dumpfile("dump.vcd");
$dumpvars;
A=0;
B=0;
F=000;
$display("A = %d, B = %d, Y = %d", A,B,O);
#10
A=0;
B=1;
$display("A = %d, B = %d, Y = %d", A,B,O);
#10
A=1;
B=0;
$display("A = %d, B = %d, Y = %d", A,B,O);
#10
A=1;
B=1;
$display("A = %d, B = %d, Y = %d", A,B,O);
#10
$finish;
end




endmodule
