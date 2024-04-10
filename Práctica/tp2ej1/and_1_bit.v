module and_1_bit(
    input wire A,
    input wire B,
    output wire X
    );

    // Defino cables negados para impactar en la FPGA
    wire A_neg = ~A;
    wire B_neg = ~B;

    assign X = A_neg & B_neg;

endmodule