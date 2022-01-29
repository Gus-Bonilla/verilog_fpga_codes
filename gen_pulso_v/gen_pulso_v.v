module gen_pulso_v (
input [9:0] entrada_v,
output sinc_v);

assign sinc_v=(entrada_v>10'b 0000000010)?1'b1:1'b0;
endmodule