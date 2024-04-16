`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module SeisA_tb();
    
    parameter DURATION = 10;
    reg clk = 0;
    always #0.5 clk = ~clk;

    reg test_a, test_b, test_c;
    wire test_x, test_y, test_z;

    SeisA UUT_SeisA(
        .a(test_a),
        .b(test_b),
        .c(test_c),
        .x(test_x),
        .y(test_y),
        .z(test_z)
        
    );

    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, SeisA_tb);

        #1
        test_a = 0; test_b = 0; test_c = 0;
        #1
        test_a = 0; test_b = 0; test_c = 1;
        #1
        test_a = 0; test_b = 1; test_c = 0;
        #1
        test_a = 0; test_b = 1; test_c = 1;
        #1
        test_a = 1; test_b = 0; test_c = 0;
        #1
        test_a = 1; test_b = 0; test_c = 1;
        #1
        test_a = 1; test_b = 1; test_c = 0;
        #1
        test_a = 1; test_b = 1; test_c = 1;



        #(DURATION) $display("Fin de la simulación.");        
        $finish;

    end

endmodule