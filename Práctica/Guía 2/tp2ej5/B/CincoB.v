module CincoB (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire x,
    output wire y
);
    
assign x = (a & ~b & c) | (~a & ~b) | (a & b & ~c & d);
assign y = (~b & c) | (~a & ~b) | (a & b & ~c & d);

endmodule