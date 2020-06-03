module fulladder(cin,x,y,cout,s);
input cin,x,y;
output cout,s;

assign s =x^y^cin;
assign cout=(x&y)|(y&cin)|(x&cin);
endmodule

module twobitmodule(a0,a1,b0,b1,cin,cout,p);
input a0,a1,b0,b1,cin;
output cout;
wire[1:0]x,y;
wire[3:0]p;
wire c1;
assign p[0]=a[0]&b[0];
assign x[0]=a[0]&b[1];
assign x[1]=0;
assign y[0]=a[1]&b[0];
assign y[1]=a[1]&b[1];

fulladder stage0(cin,x[0],y[0],c1,p[1]);
fulladder stage1(c[1],x[1],y[1],cout,p[2]);
endmodule