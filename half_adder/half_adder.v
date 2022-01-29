module half_adder (

input a,
input b,

output s,co) ;

and (co,a,b);
xor (s,a,b);	

endmodule