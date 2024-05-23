// `include "d.v"

module top (
    input wire clk,
    input wire data_in,
    output wire [3:0] data_out
);


d ffd_0 (
    .clk(clk),
    .d(data_in),
    .q(data_out[0])
);

d ffd_1 (
    .clk(clk),
    .d(data_out[0]),
    .q(data_out[1])
);

d ffd_2 (
    .clk(clk),
    .d(data_out[1]),
    .q(data_out[2])
);

d ffd_3 (
    .clk(clk),
    .d(data_out[2]),
    .q(data_out[3])
);




endmodule