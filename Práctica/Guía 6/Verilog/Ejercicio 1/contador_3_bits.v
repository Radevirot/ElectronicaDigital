module contador_3_bits #(
    input wire clk,
    input wire rst
);

 // Defino las entradas

 localparam [2:0] s0 = 3'b000;
 localparam [2:0] s1 = 3'b001;
 localparam [2:0] s2 = 3'b010;
 localparam [2:0] s3 = 3'b011;
 localparam [2:0] s4 = 3'b100;
 localparam [2:0] s5 = 3'b101;
 localparam [2:0] s6 = 3'b110;
 localparam [2:0] s7 = 3'b111;

reg [2:0] state_reg, state_next;

// Parte Secuencial

always @(posedge clk, posedge rst) begin
    if(rst)
    state_reg = s0;
    else
    state_reg = state_next;
end

// Parte Combinacional

always @(*) begin
    case (state_reg)
    s0: state_next = s1;
    s1: state_next = s2;
    s2: state_next = s3;
    s3: state_next = s4;
    s4: state_next = s5;
    s5: state_next = s6;
    s6: state_next = s7;
    s7: state_next = s0;
    endcase

end





endmodule