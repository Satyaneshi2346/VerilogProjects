module CounterUD(count,UD,clk);

input UD,clk;
output reg [7:0]count;

initial
count=0;

always@(negedge clk)
begin

if(UD==1)
count=count+1;
else
count=count-1;


end

endmodule
