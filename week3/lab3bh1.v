module lab3bh1 (a,b,c,d,f);
input a,b,c,d;
output f;
wire bn,hn,g,h,i;
assign bn=~(b&d);
assign dn=~(d&d);
assign g=~(a&bn);
assign h=~(c&dn);
assign i=~(g &h);
assign f=~(i&i);
endmodule