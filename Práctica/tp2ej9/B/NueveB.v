module NueveB (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire x,
    output wire y
);
    
assign x = (a | ~b) & (a | ~b | ~c) & (b | c | ~d) & (~a | b | ~c | d);
assign y = (a | ~b) & (b | c | ~d) & (~a | b | ~c | d);

endmodule