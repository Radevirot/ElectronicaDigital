module ejemplo_02 (
    input wire [3:0] a,
    input wire [3:0] b,
    input wire [3:0] comp,
    output reg [3:0] s
);
    
always @(*) begin
    
    if (comp > 10)
        s = a + 10;
    else
        s = a + b; 

end

endmodule