module CounterUD_TB();

reg UpDown,clock;

wire [7:0]count;

always #10 clock=~clock;
initial
begin
$dumpfile("waves.vcd");
$dumpvars(1,CounterUD_TB);
clock=1;
UpDown=1;
#300
UpDown=0;
#250
$finish;
end
endmodule
