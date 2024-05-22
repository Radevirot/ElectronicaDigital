module jk(
    input clk,j,k,pr,ps,en,
    output reg q
);
    
wire [1:0] JK = {j,k};
wire [1:0] prps = {pr,ps};

always @(posedge clk & en) begin
    
    case (JK)
        2'b11: q=~q;
        2'b10: q=1;
        2'b01: q=0;
        default: q=q; 
    endcase

end

always @(posedge pr & en, posedge ps & en) begin
    casez (prps)
        2'b1?: q=0; 
        2'b01: q=1;
        2'b00: q=q;
    endcase
end

endmodule