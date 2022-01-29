module Contador_letra_horizontal (
input clk,
output reg clk_horiz);

integer contador;

always @(posedge clk)
begin
	if(contador==1585)
		begin
			contador<=1;
		end
	else
		contador<=contador+1;
		
end

always @(contador)
begin
	if(contador>=0 && contador<=190)
		begin
			clk_horiz=1'b0;
		end
	else
		clk_horiz=1'b1;	
		
end
endmodule
