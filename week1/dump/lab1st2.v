module lab1st2(a,b,c,d,f);  
input a,b,c,d;
output f;
and(g,a,b);
or(k,c,g);
not(j,k);
and(l,j,d);
or(m,k,d);
and(f,m,l);
endmodule

