module Mux_2_1_estruc (

input a,b,c,
output s);

wire w1,w2,w3;

And_2 conex1 (.a(a),.b(w3),.s(w1));
And_2 conex2 (.a(c),.b(b),.s(w2));
Not_1 conex3 (.c(c),.s(w3));
Or_2 conex4 (.a(w1),.b(w2),.s(s));

endmodule 