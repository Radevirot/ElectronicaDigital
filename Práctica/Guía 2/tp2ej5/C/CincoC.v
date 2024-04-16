module CincoC (
    input wire a,
    input wire b,
    input wire c,
    output wire x,
    output wire y
);
    
assign x = (a & b) | (a & (b|c)) | (b & (b|c));
assign y = (a & c) | b;

endmodule