`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module TresB_tb();
    
    parameter DURATION = 10;
    reg clk = 0;
    always #0.5 clk = ~clk;

    reg test_a, test_b, test_c, test_d;
    wire test_x;

    TresB UUT_TresB(
        .a(test_a),
        .b(test_b),
        .c(test_c),
        .d(test_d),
        .x(test_x)
        
    );

    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, TresB_tb);

        #1
        test_a = 0; test_b = 0; test_c = 0; test_d = 0;
        #1
        test_a = 0; test_b = 0; test_c = 0; test_d = 1;
        #1
        test_a = 0; test_b = 0; test_c = 1; test_d = 0;
        #1
        test_a = 0; test_b = 0; test_c = 1; test_d = 1;
        #1
        test_a = 0; test_b = 1; test_c = 0; test_d = 0;
        #1
        test_a = 0; test_b = 1; test_c = 0; test_d = 1;
        #1
        test_a = 0; test_b = 1; test_c = 1; test_d = 0;
        #1
        test_a = 0; test_b = 1; test_c = 1; test_d = 1;
        #1
        test_a = 1; test_b = 0; test_c = 0; test_d = 0;
        #1
        test_a = 1; test_b = 0; test_c = 0; test_d = 1;
        #1
        test_a = 1; test_b = 0; test_c = 1; test_d = 0;
        #1
        test_a = 1; test_b = 0; test_c = 1; test_d = 1;
        #1
        test_a = 1; test_b = 1; test_c = 0; test_d = 0;
        #1
        test_a = 1; test_b = 1; test_c = 0; test_d = 1;
        #1
        test_a = 1; test_b = 1; test_c = 1; test_d = 0;
        #1
        test_a = 1; test_b = 1; test_c = 1; test_d = 1;


        #(DURATION) $display("Fin de la simulación.");        
        $finish;

    end

endmodule