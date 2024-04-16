module SeisB (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire x,
    output wire y,
    output wire z
);
    
assign x = (a & ~b & c) | (~a & ~b) | (a & b & ~c & d);
assign y = (~b & c) | (~a & ~b) | (a & b & ~c & d);
assign z = (~a | b | c) & (~a | c | d) & (a | ~b) & (~b | ~c) & (~b | d);

endmodule