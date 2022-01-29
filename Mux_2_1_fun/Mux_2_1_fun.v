module Mux_2_1_fun (

input a,b,c,
output reg s);

always@(c,a,b)

begin
	if(c==1'b0)
		s=a;
		
	else 
		s=b;

end

endmodule 