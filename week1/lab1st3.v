//xor gate -- 3rd question 

module lab1st3 (a,b,c,d,f,g);
input a,b,c,d;
output g,f;
nand(p,a,b);
xor(f1,p,d);
xor(f,c,f1);
nor(g1,c,b);
nor(g,g1,d);
endmodule 