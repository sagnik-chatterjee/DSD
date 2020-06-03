module decomposedadder(x,y,ci,si,cout);
input x,y,ci;
output s,cout;
wire is,ic;
assign is= x^y;
assign ic=x&y;
assign s =is^ic;
assign cout=ic|(ci&is);
endmodule