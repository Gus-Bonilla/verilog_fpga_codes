module gen_pulso_h (
input [10:0] entrada_h,
output sinc_h);

assign sinc_h=(entrada_h>11'b 00010111110)?1'b1:1'b0;
endmodule
