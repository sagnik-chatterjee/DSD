module lab2bh5(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(d&a&b)|(c&d&a)|(c&a&b)|(c&d&b);
endmodule
