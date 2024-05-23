// `include "d.v"
// `include "mux_1_bit.v"

module top (
    input wire sel,clk,
    input wire [3:0] data_in,
    output wire [3:0] data_out
);
    
wire [3:0] mux_out;

mux_1_bit mux_0 (
    .sel(sel),
    .d1(data_in[0]),
    .d0(data_out[0]),
    .q(mux_out[0])
);

d ffd_0 (
    .clk(clk),
    .d(mux_out[0]),
    .q(data_out[0])
);

mux_1_bit mux_1 (
    .sel(sel),
    .d1(data_in[1]),
    .d0(data_out[1]),
    .q(mux_out[1])
);

d ffd_1 (
    .clk(clk),
    .d(mux_out[1]),
    .q(data_out[1])
);

mux_1_bit mux_2 (
    .sel(sel),
    .d1(data_in[2]),
    .d0(data_out[2]),
    .q(mux_out[2])
);

d ffd_2 (
    .clk(clk),
    .d(mux_out[2]),
    .q(data_out[2])
);

mux_1_bit mux_3 (
    .sel(sel),
    .d1(data_in[3]),
    .d0(data_out[3]),
    .q(mux_out[3])
);

d ffd_3 (
    .clk(clk),
    .d(mux_out[3]),
    .q(data_out[3])
);




endmodule