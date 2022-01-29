module div_frec(
input clk,
output reg clk_div);

integer contador;//numero entero

always @(posedge clk)
begin
	if(contador==25000000)
		begin
			contador<=1;
			clk_div=!clk_div;
		end
	else
		contador<=contador+1;
end
endmodule
