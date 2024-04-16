module SeisA (
    input wire a,
    input wire b,
    input wire c,
    output wire x,
    output wire y,
    output wire z
);
    
assign x = c & (a | (~b & c));
assign y = (a & c) | (~b & c);
assign z = (a | ~b) & c;

endmodule