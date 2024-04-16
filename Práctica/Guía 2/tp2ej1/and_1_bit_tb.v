`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module and_1_bit_tb();
    
    parameter DURATION = 10;
    reg clk = 0;
    always #0.5 clk = ~clk;

    reg test_a, test_b;
    wire test_x;

    and_1_bit UUT_and_1_bit(
        .A(test_a),
        .B(test_b),
        .X(test_x)
        
    );

    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, and_1_bit_tb);

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