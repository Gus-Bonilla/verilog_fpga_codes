module full_adder (

input a,
input b,
input ci,

output s,co) ;

xor (s,a,b,ci);
assign co=(a&b)|(ci&(a^b));	

endmodule