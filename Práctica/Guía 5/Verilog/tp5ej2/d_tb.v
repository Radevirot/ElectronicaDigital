`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module d_tb();
    
    parameter DURATION = 10;

    reg clk, d;
    wire q;

    d UUT(
        .clk(clk),
        .d(d),
        .q(q)
        
    );

    always #5 clk = !clk;
    always #3 d = d + 1;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, d_tb);

        #(DURATION) $display("Fin de la simulación.");  
        clk = 0;
        d=0;
        #100;      
        $finish;

    end

endmodule