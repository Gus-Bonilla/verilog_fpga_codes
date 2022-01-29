module four_bits_adder (

input [3:0]a,b,
output [4:0]s);

wire w1,w2,w3;

half_adder conex1 (.a(a[0]),.b(b[0]),.s(s[0]),.co(w1));
full_adder conex2 (.a(a[1]),.b(b[1]),.s(s[1]),.co(w2),.ci(w1));
full_adder conex3 (.a(a[2]),.b(b[2]),.s(s[2]),.co(w3),.ci(w2));
full_adder conex4 (.a(a[3]),.b(b[3]),.s(s[3]),.co(s[4]),.ci(w3));

endmodule 