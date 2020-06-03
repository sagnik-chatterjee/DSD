module lab3bh2(a,b,c,d,f);
input a,b,c,d;
output f;
wire bn,g,h,i,k;
assign bn=~(c|c);
assign g=~(b|c);
assign h=~(bn|a|d);
assign i=~(b|d);
assign k=~(g|h|i);
assign f=~(k|k);
endmodule