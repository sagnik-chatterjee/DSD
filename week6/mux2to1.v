module mux2to1(w0,w1,s,f);
input w0,w1,s;
output f;
reg f;
always @(w0or w1 or s)
begin
  if(s==0)
  f=w0;
  else
  f=w1;
end
endmodule

module mux4to1(w0,w1,w2,w3,s,f);
input w0,w1,w2,w3;
input [1:0]s;
output [2:0]f;


mux2to1 stage0(w0,w1,s[0],f[0]);
mux2to1 stage1(w2,w3,s[1],f[1]);
mux2to1 stage2(f[0],f[1],s[1],f[2]);

endmodule