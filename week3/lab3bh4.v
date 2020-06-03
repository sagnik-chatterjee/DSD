module lab3bh4(a,b,c,d,f);
input a,b,c,d;
output f;
wire m,n,h;
assign m=~(a|(~(d|d)));
assign n=~(c|(~(d|d)));
assign h=~(n|m);
assign f=~(h|h);
endmodule