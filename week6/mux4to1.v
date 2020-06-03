module mux4to1(w,s,f);
input [3:0]w;
input[1:0]s;
output f;
assign f= s[1]?(s[1]?w[3]:w[2]):(s[0]?w[1]:w[3]);
endmodule

module mux16to1(w,s,f);
input [15:0]w;
input [3:0]s;
output [4:0]f;

mux4to1 stage0(w[3:0],s[1:0],f[0]);
mux4to1 stage1(w[7:4],s[3:2],f[1]);
mux4to1 stage2(w[11:8],s[3:2],f[2]);
mux4to1 stage3(w[15:12],s[1:0],f[3]);
mux4to1 stage4(f[3:0],s[3:2],f[4]);
endmodule
