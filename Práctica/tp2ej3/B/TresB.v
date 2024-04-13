module TresB (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire x
);
    
assign x = (a & b & c & d);

endmodule