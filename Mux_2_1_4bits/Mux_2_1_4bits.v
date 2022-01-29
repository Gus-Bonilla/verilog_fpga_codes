module Mux_2_1_4bits (

input [3:0]a,b,
input c,

output [3:0]s);

assign s=(c==1'b0)?a:b;

endmodule