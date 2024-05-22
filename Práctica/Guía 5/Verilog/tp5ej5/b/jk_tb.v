`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module jk_tb();
    
    parameter DURATION = 10;

    reg clk, pr, ps, j, k, en;
    wire q;

    jk UUT(
        .clk(clk),
        .pr(pr),
        .ps(ps),
        .j(j),
        .k(k),
        .en(en),
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
        $dumpvars(0, jk_tb);
        en=0;
        clk = 0;
        j=0;
        k=0;
        pr=0;
        ps=0;
        #75 en=1;
        #150;    

        #(DURATION) $display("Fin de la simulación.");  
  
        $finish;

    end

endmodule