module d_pr_ps(
    input clk,d,ps,pr,
    output reg q
);

wire [2:0] prpsd = {pr,ps,d};

always @(posedge clk, posedge pr, posedge ps) begin
    
    casez (prpsd)
        3'b1??: q=0;
        3'b01?: q=1;
        default: q=d;
    endcase 

end

endmodule