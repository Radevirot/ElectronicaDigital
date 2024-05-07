`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module d_pr_ps_tb();
    
    parameter DURATION = 10;

    reg clk, d, pr, ps;
    wire q;

    d_pr_ps UUT(
        .clk(clk),
        .d(d),
        .pr(pr),
        .ps(ps),
        .q(q)
        
    );

    always #5 clk = !clk;
    always #3 d = d + 1;
    always #17 pr=1;
    always #18 pr=0;
    always #27 ps=1;
    always #28 ps=0;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, d_pr_ps_tb);

        clk = 0;
        d=0;
        pr=0;
        ps=0;
        #150; 

        #(DURATION) $display("Fin de la simulación.");  
     
        $finish;

    end

endmodule