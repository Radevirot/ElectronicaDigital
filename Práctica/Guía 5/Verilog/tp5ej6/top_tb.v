`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns/ 10 ns

module top_tb();

parameter DURATION = 10;


reg sel, clk;
reg [3:0] data_in;
wire [3:0] data_out;

top UTTtop(
    .data_in(data_in),
    .sel(sel),
    .clk(clk),
    .data_out(data_out)
);

always #0.5 clk = !clk;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, top_tb);
    
    sel = 1;
    clk = 0;
    data_in = 4'b1001;

    #2
    sel=0;
    data_in = 4'b0101;
    #2
    sel=1;

    #(DURATION) $display("Fin de la simulacion");
    $finish;

end

endmodule