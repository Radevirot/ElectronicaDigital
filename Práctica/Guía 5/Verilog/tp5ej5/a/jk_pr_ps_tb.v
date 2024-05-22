`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module jk_pr_ps_tb();
    
    parameter DURATION = 10;

    reg clk, pr, ps, j, k;
    wire q;

    jk UUT(
        .clk(clk),
        .pr(pr),
        .ps(ps),
        .j(j),
        .k(k),
        .q(q)
        
    );

    always #5 clk = !clk;
    always #10 {j,k} = {j,k} + 1;
    always #17 pr=1;
    always #18 pr=0;
    always #27 ps=1;
    always #28 ps=0;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, jk_pr_ps_tb);

        clk = 0;
        j=0;
        k=0;
        pr=0;
        ps=0;
        #150;    

        #(DURATION) $display("Fin de la simulación.");  
  
        $finish;

    end

endmodule