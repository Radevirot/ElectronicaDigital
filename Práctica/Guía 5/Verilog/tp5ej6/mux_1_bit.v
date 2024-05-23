module mux_1_bit (
    input wire sel, d0, d1,
    output wire q
);

    assign q = (~sel & d0) + (sel & d1) ;



endmodule