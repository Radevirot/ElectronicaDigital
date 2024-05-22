module jk(
    input clk,j,k,
    output reg q
);
    
wire [1:0] JK = {j,k};

always @(posedge clk) begin
    
    case (JK)
        2'b11: q=~q;
        2'b10: q=1;
        2'b01: q=0;
        default: q=q; 
    endcase

end

endmodule