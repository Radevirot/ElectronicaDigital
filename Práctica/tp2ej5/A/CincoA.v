module CincoA(
    input wire A,
    input wire B,
    output wire X,
    output wire Y
    );

    assign X = A & (~A | (A & B));
    assign Y = A & B;

endmodule