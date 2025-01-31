module alu
(
    input wire clk,
    input wire [N-1:0] A, B,
    input wire [M-2:0] instruction,
    output reg [N-1:0] ALU_out
);
    
    always @ (posedge clk) begin
        
        case (instruction)
            3'h0: ALU_out = A + B;
            3'h1: ALU_out = A - B;
            3'h2: ALU_out = A * B;
            3'h3: ALU_out = A / B;
            3'h4: ALU_out = A << 1;
            3'h5: ALU_out = A >> 1;
            3'h6: ALU_out = {A[N-2:0], A[N-1]};
            3'h7: ALU_out = {A[0], A[N-1:1]};
            default: ALU_out = A;
        endcase
    end

endmodule