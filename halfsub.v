module halfsub
(
   input wire a,b,
   output wire diff,borrow
);

assign diff=(a&~b)|(~a&b);
assign borrow=~a&b;
endmodule


