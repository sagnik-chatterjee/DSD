module lab2bh1(a,b,c,d);
input a,b,c,d;
output f;
assign f =(c&d)|(~a&b)|(~c&~d&b)|(~b&c);
endmodule 
