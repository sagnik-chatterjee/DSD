module comparator (x,y,xlty,xgty,xeqy);
input [4:0]x,y;
wire [4:0]i;
output xeqy,xlty,xgty;

assign i[4]=~(x[4]^y[4]);
assign i[3]=~(x[3]^y[3]);
assign i[2]=~(x[2]^y[2]);
assign i[1]=~(x[1]^y[1]);
assign i[0]=~(x[0]^y[0]);

assign xeqy=i[4]&i[3]&i[2]&i[1]&i[0];
assign xgty=(x[4]&~y[4])|(i[4]&~i[3]&(~y[3]))|(i[4]&i[3]&x[2]&(~y[2]))|(i[4]&i[3]&i[2]&i[1]&x[0]&(~y[0]));
assign xlty=~(xeqy|xgty);
endmodule