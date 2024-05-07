module jk(
    input clk,j,k,
    output reg q
);
    
always @(posedge clk) begin
    
    if (j==0)
        if(k==0)
            q=q;
        else
            q=0;
    else
        if (k==0)
            q=1;
        else
            q = ~ q;

end

endmodule