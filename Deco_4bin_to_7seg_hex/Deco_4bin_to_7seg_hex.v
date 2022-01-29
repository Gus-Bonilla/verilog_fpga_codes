module Deco_4bin_to_7seg_hex (

input a,b,c,d,

output s1,s2,s3,s4,s5,s6,s7 ) ;

assign s1=(~b&~d)|(~a&c)|(a&~d)|(b&c)|(~a&b&d)|(a&~b&~c) ;
assign s2=(~a&~b)|(~b&~c)|(~b&~d)|(~a&~c&~d)|(~a&c&d)|(a&~c&d) ;
assign s3=(~c&d)|(~a&~c)|(~a&b)|(~b&~c)|(a&~b)|(~a&~b&d) ;
assign s4=(~a&~b&~d)|(~b&c&d)|(b&~c&d)|(b&c&~d)|(a&~c&~d) ;
assign s5=(~b&~d)|(c&~d)|(a&c)|(a&~d)|(a&b) ;
assign s6=(~c&~d)|(b&~d)|(a&~b)|(~a&b&~c)|(a&c&d) ;
assign s7=(c&~d)|(~b&c)|(a&~b)|(a&c)|(~a&b&~c)|(b&~c&d) ;

endmodule