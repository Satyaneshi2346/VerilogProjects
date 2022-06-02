module comparator(A,B,A_GT_B,A_LT_B);

input [3:0]A,B;
output reg A_GT_B,A_LT_B;

always@(*)
begin
if(A<B)
A_LT_B=1;
else
A_GT_B=1;

end


endmodule
