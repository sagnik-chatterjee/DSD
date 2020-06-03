module lab3bh3(a,b,c,d,e,f);
input a,b,c,d,e;
output f;
wire g,h,i,j,k,l,m;

assign g=(~e)|(a&(~b));
assign i=c&d;
assign h=(~d)&(~c);
assign m=h|i;
assign j=c&(~d);
assign k=m&g;
assign l=j&(~g);
assign f=k|l;
endmodule