module jk(
    input clk,pr,ps,j,k,
    output reg q
);
    
wire [3:0] rsjk = {pr, ps, j,k};

always @(posedge clk, posedge pr, posedge ps) begin
    
    casez (rsjk)
        4'b1???: q = 0;
        4'b01??: q = 1;
        4'b0000: q = q;
        4'b0001: q = 0;
        4'b0010: q = 1;
        4'b0011: q = ~q;

    endcase

end

endmodule