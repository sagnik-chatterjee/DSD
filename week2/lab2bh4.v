module lab2bh4(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(~d|~a|b)&(~c|~a|b)&(d|a|~b)&(c|d|~b);
endmodule