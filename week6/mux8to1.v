module mux8t01(w,s,f);
input [7:0]w;
input [2:0]s;
output f;

always @(w or s or f)
begin
  case(s)
  0:    f=w[0];
  1:     f=w[0];
  2:       f=w[0];
  3:        f=w[0];
  4:      f=w[0];
  5:      f=w[0];
  6:       f=w[0];
  7:         f=w[0];
endcase
endmodule


module mux16to1(w,s,f);
input [15:0]w;
input[3:0]s;
output [2:0]f;

mux8to1 stage0(w[7:0],s[2:0],f[0]);
mux8to1 stage1(w[15:8],s[2:0],f[1]);
mux8to1 stage2(f[0],f[1],s[3],f[2]);

endmodule
