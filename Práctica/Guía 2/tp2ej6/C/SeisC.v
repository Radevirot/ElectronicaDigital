module SeisC (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire x,
    output wire y,
    output wire z
);
    
assign x = (a & b) | (c & d & ((a & ~b) | (c & d)));
assign y = (a & b) | (c & d);
assign z = (a|c) & (a|d) & (b|c) & (b|d);

endmodule