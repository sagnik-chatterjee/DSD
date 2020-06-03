module lab1bh3(a,b,c,d,p,f,g);
input a,b,c,d;
output g,p,f;
assign p= ~(a&b);
assign f=(p^d^c);
assign g= ~(c|b|d);
endmodule

