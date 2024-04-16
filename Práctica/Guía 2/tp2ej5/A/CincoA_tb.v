`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module CincoA_tb();
    
    parameter DURATION = 10;
    reg clk = 0;
    always #0.5 clk = ~clk;

    reg test_a, test_b;
    wire test_x, test_y;

    CincoA UUT_CincoA(
        .A(test_a),
        .B(test_b),
        .X(test_x),
        .Y(test_y)
    );

    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, CincoA_tb);

        #1
        test_a = 0; test_b = 0;
        #1
        test_a = 0; test_b = 1;
        #1
        test_a = 1; test_b = 0;
        #1
        test_a = 1; test_b = 1;

        #(DURATION) $display("Fin de la simulación.");        
        $finish;

    end

endmodule