
`timescale 1 ns/10 ps

module halfsub(a,b,diff,borrow);

   input a,b;
   output wire diff,borrow;


assign diff=(a&~b)|(~a&b);
assign borrow=~a&b;
endmodule

module halfsub_test;
reg a,b;
wire diff,borrow;

halfsub UUT(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
$monitor($time,"a=%b b=%b diff=%b borrow=%b",a,b,diff,borrow);
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;
#10;
end
endmodule





