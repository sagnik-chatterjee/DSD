module fulladder(cin,x,y,cout,s);
input x,y,cin;
output cout,s;
assign s=x^y^cin;
assign cout=(x&y)|(x&cin)|(y&cin);
endmodule

module fourbit(cin,x,y,cout,s);
input cin;
input[3:0]x,y;
output cout;
output [3:0]s;
wire[3:1]c;

fulladder stage0(cin,x[0],y[0],c[1],s[0]);
fulladder stage1(c[1],x[1],y[1],c[2],s[1]);
fulladder stage2(c[2],x[2],y[2],c[3],s[2]);
fulladder stage0(c[3],x[3],y[3],cout,s[3]);

endmodule


