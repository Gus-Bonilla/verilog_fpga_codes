module Contador_v (
input clk,
output reg [9:0] cuenta_v);


always @(negedge clk)
begin
	if(cuenta_v==10'b 1000001001101);
	   cuenta_v=10'b  0000000000000;
		
	else
		cuenta_v=cuenta_v+0000000000001;	
		
end
endmodule
