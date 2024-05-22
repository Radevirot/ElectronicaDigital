`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module d_syncrst_tb();
    
    parameter DURATION = 10;

    reg clk, d, clr;
    wire q;

    d_syncrst UUT(
        .clk(clk),
        .d(d),
        .clr(clr),
        .q(q)
        
    );

    always #0.5 clk = !clk;
    always #1.5 d = d + 1;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, d_syncrst_tb);
        clk = 0;
        d = 0;
        clr = 0;
        #5 clr=1;
        #(DURATION) $display("Fin de la simulación.");  


        $finish;

    end

endmodule