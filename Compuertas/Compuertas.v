module Compuertas (

input a,
input b,

output s1,
output s2,
output s3,
output s4,
output s5,
output s6 ) ;

and (s1,a,b);	//assign s1=a&b;
or (s2,a,b);	//assign s2=a|b;
xor (s3,a,b);	//assign s3=a^b;
nand (s4,a,b);	//assign s4=~(a&b);
nor (s5,a,b);	//assign s5=~(a|b);
xnor (s6,a,b);	//assign s6=~(a^b);

endmodule