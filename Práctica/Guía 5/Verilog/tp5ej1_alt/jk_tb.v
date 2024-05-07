`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module jk_tb();
    
    parameter DURATION = 10;

    reg clk, j, k;
    wire q;

    jk UUT(
        .clk(clk),
        .j(j),
        .k(k),
        .q(q)
        
    );

    always #5 clk = !clk;
    always #10 {j,k} = {j,k} + 1;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, jk_tb);

        #(DURATION) $display("Fin de la simulación.");  
        clk = 0;
        j=0;
        k=0;
        #100;      
        $finish;

    end

endmodule