`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns/ 10 ns

module top_tb();

parameter DURATION = 10;


reg clk;
reg data_in;
wire [3:0] data_out;

top UTTtop(
    .data_in(data_in),
    .clk(clk),
    .data_out(data_out)
);

always #0.5 clk = !clk;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, top_tb);
    
    clk = 0;
    #0.5 data_in = 1;
    #1 data_in = 0;
    #1 data_in = 1;
    #2 data_in = 0;


    #(DURATION) $display("Fin de la simulacion");
    $finish;

end

endmodule