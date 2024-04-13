module CuatroB (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire e,
    input wire f,
    output wire x,
    output wire y
);
    
assign x = ~(~(a | (b & ~c)) | d & ~(e | ~f));
assign y = (a|b)&(a|~c)&(~d|e|~f);

endmodule