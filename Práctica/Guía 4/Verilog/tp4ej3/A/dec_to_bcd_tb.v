`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module dec_to_bcd_tb;

parameter DURATION = 10;
reg clk = 0;
always #0.5 clk = ~clk;

reg [9:0] test_dec;
wire [3:0] test_bcd;

// Instancia del módulo a probar
dec_to_bcd UUT (
    .dec(test_dec), 
    .bcd(test_bcd)
);

initial begin

    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, dec_to_bcd_tb);

    #1 test_dec = 10'b0000000000;
    #1 test_dec = 10'b0000000001;
    #1 test_dec = 10'b0000000010;
    #1 test_dec = 10'b0000000100;
    #1 test_dec = 10'b0000001000;
    #1 test_dec = 10'b0000010000;
    #1 test_dec = 10'b0000100000;
    #1 test_dec = 10'b0001000000;
    #1 test_dec = 10'b0010000000;
    #1 test_dec = 10'b0100000000;
    #1 test_dec = 10'b1000000000;


    #(DURATION) $display("Fin de la simulación.");
    $finish; // Terminar la simulación
end

endmodule
