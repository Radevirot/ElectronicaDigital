`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns //Define la unidad de tiempo

module t_tb();
    
    parameter DURATION = 10;

    reg clk, t, rst;
    wire q;

    t UUT(
        .clk(clk),
        .t(t),
        .rst(rst),
        .q(q)
        
    );

    always #0.5 clk = !clk;
    always #5 t = t + 1;


    initial begin
        
        $dumpfile(`DUMPSTR(`VCD_OUTPUT));
        $dumpvars(0, t_tb);
        rst = 1;
        clk = 0;
        t = 0;
        #0.5 rst = 0;

        #(DURATION) $display("Fin de la simulación.");  
 
        $finish;

    end

endmodule