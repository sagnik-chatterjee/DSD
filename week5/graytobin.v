module graytobin(gray,bin);
parameters n=4;
input [n-1:0]gray;
output [n-1:0]bin;
reg[n-1:0]bin;
integer i;
always @(gray)
begin
  bin[n-1]=gray[n-1];
  for(i=2;i>-1;i=i-1)
  begin
  bin[i]=grey[i]^bin[i+1];
  end
end 
endmodule
