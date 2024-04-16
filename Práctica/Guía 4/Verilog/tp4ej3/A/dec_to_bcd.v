module dec_to_bcd (
    input [9:0] dec,
    output reg [3:0] bcd
);
    

always @(*) begin

    case (dec)
        10'b0000000000: bcd = 4'b1111;
        10'b0000000001: bcd = 4'b0000; 
        10'b0000000010: bcd = 4'b0001; 
        10'b0000000100: bcd = 4'b0010; 
        10'b0000001000: bcd = 4'b0011; 
        10'b0000010000: bcd = 4'b0100; 
        10'b0000100000: bcd = 4'b0101; 
        10'b0001000000: bcd = 4'b0110; 
        10'b0010000000: bcd = 4'b0111; 
        10'b0100000000: bcd = 4'b1000;  
        10'b1000000000: bcd = 4'b1001;  
        default: bcd = 4'bxxxx;
    endcase

end
    
endmodule