/**************************************************
 P1.1 FULL ADDER BEHAVIORAL
 ************************************************/

 module full_adder_bh(s, cout, a, b, cin); 
 	input a, b, cin;
 	output reg s, cout;

 	always@(a,b,cin) begin
 		s=a^b^cin;
 		cout=(a&b)|(a&cin)|(b&cin);
 	end

 endmodule
