module xor_1_bit (
    input wire a,
    input wire b,
    input wire c,
    output wire x
);

assign x = ~(a | b | c);
    
endmodule