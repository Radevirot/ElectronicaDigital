module CincoD (
    input wire a,
    input wire b,
    input wire c,
    output wire x,
    output wire y
);
    
assign x = (a | ~a) & (a & b | a & b & ~c);
assign y = (a & b);

endmodule