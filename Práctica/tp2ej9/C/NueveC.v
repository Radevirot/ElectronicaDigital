module NueveC (
    input wire a,
    input wire b,
    input wire c,
    output wire x,
    output wire y
);
    
assign x = (a | ~b | c) & (~a | ~b | ~c) & (a | b | c);
assign y = (a | c) & (~a | ~b | ~c);

endmodule