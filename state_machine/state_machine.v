module state_machine(
input dir,clk,rst,
output reg [3:0]salida);//salida de 16 bits tipo registro:no cambia sin transicion de clk


reg [15:0] state;//cable tipo registro de 2 bits
parameter zero=0,one=1,two=2,three=3,four=4,five=5,six=6,seven=7,eight=8,nine=9,ten=10,eleven=11,twelve=12,thirteen=13,fourteen=14,fiveteen=15;//declararcion de variables


always @ (posedge clk or posedge rst)// se ejecuta mientras se cumpla la lista de sensibilidad, posedge es transicion de subida y negedge transicion de bajada 
begin//flujo de datos
	if(rst==1)
	//en if si hay mas de una linea se le agrega begin y end
	//en case se considera las lineas como una sola instruccion y no es necesario dicha condicion
		state=zero;
else
	case(state)
	
		zero:
			if(dir==1) 
				state=one;
			else
				state=fiveteen;

		one:
			if(dir==1)
				state=two;
			else
				state=zero;

		two:
			if(dir==1)
				state=three;
			else
				state=one;

		three:
			if(dir==1)
				state=four;
			else
				state=two;
				
		four:
			if(dir==1) 
				state=five;
			else
				state=three;
				
		five:
			if(dir==1) 
				state=six;
			else
				state=four;
				
		six:
			if(dir==1) 
				state=seven;
			else
				state=five;
				
		seven:
			if(dir==1) 
				state=eight;
			else
				state=six;
				
		eight:
			if(dir==1) 
				state=nine;
			else
				state=seven;
				
		nine:
			if(dir==1) 
				state=ten;
			else
				state=eight;
				
		ten:
			if(dir==1) 
				state=eleven;
			else
				state=nine;
				
		eleven:
			if(dir==1) 
				state=twelve;
			else
				state=ten;
				
		twelve:
			if(dir==1) 
				state=thirteen;
			else
				state=eleven;
				
		thirteen:
			if(dir==1) 
				state=fourteen;
			else
				state=twelve;
				
		fourteen:
			if(dir==1) 
				state=fiveteen;
			else
				state=thirteen;
				
		fiveteen:
			if(dir==1) 
				state=zero;
			else
				state=fourteen;								
										
	endcase
end

always @(state)//valor de estados
	begin
		case(state)
			zero:
				salida=(4'b 0000);
			one:
				salida=(4'b 0001);
			two:
				salida=(4'b 0010);
			three:
				salida=(4'b 0011);
			four:
				salida=(4'b 0100);
			five:
				salida=(4'b 0101);
			six:
				salida=(4'b 0110);
			seven:
				salida=(4'b 0111);
			eight:
				salida=(4'b 1000);	
			nine:
				salida=(4'b 1001);
			ten:
				salida=(4'b 1010);
			eleven:
				salida=(4'b 1011);
			twelve:
				salida=(4'b 1100);
			thirteen:
				salida=(4'b 1101);
			fourteen:
				salida=(4'b 1110);
			fiveteen:
				salida=(4'b 1111);
				
		endcase
		
	end
	
endmodule
	

	
	

				
