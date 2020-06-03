module lab2bh3(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(c|b)&(d|&b);
endmodule