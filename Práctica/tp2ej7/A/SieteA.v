module SieteA (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire yo,
    output wire ys,
    output wire z
);
    
assign yo = (~a & d) | (a & ~c & d) | (a & ~b & c) | (a & b & c & d);
assign ys = d | (a & ~b & c);
assign z = (b & d) | (a & ~c & d);

endmodule