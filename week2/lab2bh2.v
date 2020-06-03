module lab2bh2(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(~a&~b)|(~c&~d&b)|(~b&c)|(d&~b);
endmodule