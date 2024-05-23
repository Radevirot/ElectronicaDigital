
module circuito_latch(
    input wire [3:0] entradas,
    input sel, clk,
    output wire [3:0] salidas
);

wire salida_temporal;
wire st2;
wire st3;
wire st4;

mux2_1 modulo1(
    .sel(sel),
    .d0(salidas[0]),
    .d1(entradas[0]),
    .Q(salida_temporal)
);


Flip_Flop_D modulo11(
    .d(salida_temporal),
    .clk(clk),
    .Q(salidas[0])
);

mux2_1 modulo2(
    .sel(sel),
    .d0(salidas[1]),
    .d1(entradas[1]),
    .Q(st2)
);

Flip_Flop_D modulo22(
    .d(st2),
    .clk(clk),
    .Q(salidas[1])
);

mux2_1 modulo3(
    .sel(sel),
    .d0(salidas[2]),
    .d1(entradas[2]),
    .Q(st3)
);

Flip_Flop_D modulo33(
    .d(st3),
    .clk(clk),
    .Q(salidas[2])
);

mux2_1 modulo4(
    .sel(sel),
    .d0(salidas[3]),
    .d1(entradas[3]),
    .Q(st4)
);

Flip_Flop_D modulo44(
    .d(st4),
    .clk(clk),
    .Q(salidas[3])
);



endmodule