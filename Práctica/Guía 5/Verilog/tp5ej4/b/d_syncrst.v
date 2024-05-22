module d_syncrst(
    input clk,d,clr,
    output reg q
);

always @(posedge clk) begin
    
    q=d;

end

always @(posedge clk & clr) begin
    q=0;
end


endmodule