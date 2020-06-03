module fulladder(cin,x,y,cout,s);
input cin,x,y;
output cout,s;

assign s =x^y^cin;
assign cout=(x&y)|(y&cin)|(x&cin);
endmodule


module add_sub(cin,x,y,cout,s);
input cin;
input[3:0]x;
input[3:0]y;
output cout;
output[3:0]s;
wire[3:1]c;

assign y[0]=cin^y[0];
assign y[1]=cin^y[1];
assign y[2]=cin^y[2];
assign y[3]=cin^y[3];


fulladder stage0(cin,x[0],y[0],c[1],s[0]);
fulladder stage1(c[1],x[1],y[1],c[2],s[1]);
fulladder stage2(c[2],x[2],y[2],c[3],s[2]);
fulladder stage3(c[3],x[3],y[3],cout,s[3]);

endmodule