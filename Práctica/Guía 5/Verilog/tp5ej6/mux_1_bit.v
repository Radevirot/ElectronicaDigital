module mux_1_bit (
    input wire sel,
    input wire [1:0] d,
    output wire q
);

    assign q = (~sel & d[0]) + (sel & d[1]) ;



endmodule