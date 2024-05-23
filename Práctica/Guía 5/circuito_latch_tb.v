`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns/ 10 ns

module circuito_latch_tb();

parameter DURATION = 10;


reg test_sel, clk;
reg [3:0] test_entradas;
wire [3:0] test_salidas;

circuito_latch UTTlatch4bits(
    .entradas(test_entradas),
    .sel(test_sel),
    .clk(clk),
    .salidas(test_salidas)
);

always #1 clk = !clk;
always #2 test_sel = !test_sel;

initial begin
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, circuito_latch_tb);
    
    test_sel = 1;
    clk = 0;

    test_entradas = 9;
    #4
    test_entradas = 5;
    #2
    test_entradas = 4;
    #(DURATION) $display("Fin de la simulacion");
    $finish;

end

endmodule