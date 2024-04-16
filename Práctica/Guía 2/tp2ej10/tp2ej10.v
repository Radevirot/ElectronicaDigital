module tp2ej10 (
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire e,
    output wire p,
    output wire x,
    output wire t
);
    
assign p = (~a & c & ~d & e) | (~a & ~b & ~c & d) | (~a & ~c & d & e) | (a & ~b & ~c & e) | (~b & d & e) | (a & b & c & e);
assign x = ~e;
assign t = (~a & ~b & ~c & ~d & ~e) | (~a & ~b & ~c & d & e) | (~a & ~b & c & d & ~e) | (~a & b & c & ~d & ~e) | (~a & b & c & d & e) | (~a & b & ~c & ~d & e) | (a & ~b & ~c & d & ~e) | (a & ~b & c & ~d & e) | (a & b & ~c & ~d & ~e) | (a & b & c & d & ~e) | (a & b & ~c & d & e);

endmodule