
module adder32_tb;
    reg clk;
    reg[63:0]a,b;
    wire[63:0]sum;
    reg cin;
    wire cout;
Adder32 DUT (.A(a),.B(b),.Ci(cin),.Co(cout),.S(sum));
initial begin
    #10;
    a=0;
    b=0;
    cin=0;
    clk=0;
    #10;
end
always @ (posedge clk)
begin
    #50;
    #10 a=64'b1111111111000000000011111111110011010100110111001010100101011100;
    #10 b=64'b1111111111111111111100000000001111010111010110011011011010011011;
end
always # 10 clk=~clk;
always @ (a or b)
#50 $display($time,"clk=%b,a=%b,b=%b,cin=%b",$time,clk,a,b,cin);
initial
#100 $finish;
endmodule