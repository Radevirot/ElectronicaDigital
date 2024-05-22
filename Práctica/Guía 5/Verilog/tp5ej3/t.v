module t (
    input wire clk,
    input wire t,
    input wire rst,
    output reg q
);

always @(posedge clk) begin
    
    case (t)
        1'b0: q=q;
        default: q=~q;
    endcase

end

always @(posedge rst) begin
    q=0;
end


endmodule