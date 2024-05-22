module d_pr_ps(
    input clk,d,ps,pr,en,
    output reg q
);

wire [1:0] prps = {pr,ps};

always @(posedge clk & en) begin
    
 q=d;

end

always @(posedge pr & en, posedge ps & en) begin
    casez (prps)
        2'b1?: q=0; 
        2'b01: q=1;
        2'b00: q=q;
    endcase
end

endmodule