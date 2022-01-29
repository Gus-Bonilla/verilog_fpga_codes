module contador_asendente_desendente_fpga (

input clk,dir,rst,
output s1,s2,s3,s4,s5,s6,s7);

wire w0,w1,w2,w3,w4,w5,w6,w7;
wire [3:0]bus_4;

div_frec 				conex1 	(.clk(clk),.clk_div(w0));
state_machine 			conex2 	(.clk(w0),.dir(dir),.rst(rst),.salida(bus_4));
Deco_4bin_to_7seg_hex 	conex3 	(.a(bus_4[3]),.b(bus_4[2]),.c(bus_4[1]),.d(bus_4[0]),.s1(w1),.s2(w2),.s3(w3),.s4(w4),.s5(w5),.s6(w6),.s7(w7));

not (s1,w1);
not (s2,w2);
not (s3,w3);
not (s4,w4);
not (s5,w5);
not (s6,w6);
not (s7,w7);

endmodule 