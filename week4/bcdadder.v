module fulladder(cin,x,y,cout,s);
input cin,x,y;
output cout,s;

assign s =x^y^cin;
assign cout=(x&y)|(y&cin)|(x&cin);
endmodule


module bcd(cin,x,y,cout,s);
input cin,x,y;
input [3:0]x,y;
output cout;
output [3:0]sz,ss;
wire[3:1]c,cc;
fulladder stage0(cin,x[0],y[0],c[1],sz[0]);
fulladder stage1(c[1],x[1],y[1],c[2],sz[1]);
fulladder stage2(c[2],x[2],y[2],c[3],sz[2]);
fulladder stage3(c[3],x[3],y[3],cout,sz[3]);

assign k=(cout)|(sz[3]&sz[2])|(sz[3]&sz[1]);

assign ss[0]=0;
assign ss[1]=k;
assign ss[2]=k;
assign ss[3]=0;

fulladder stage00(cin,sz[0],ss[0],s[0],cc[1]);
fulladder stage01(cc[1],sz[1],ss[1],s[1],cc[2]);
fulladder stage02(cc[2],sz[2],ss[2],s[2],cc[3]);
fulladder stage03(cc[3],sz[3],ss[3],s[3],cout);

endmodule