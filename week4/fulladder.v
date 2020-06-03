module fulladder(x,y,ci,s,cout);
input x,y,ci;
output s,cout;
assign s =x^y^ci;
assign cout =(x&y)|(x&ci)|(y&ci);
endmodule