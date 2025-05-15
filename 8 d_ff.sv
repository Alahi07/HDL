module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output reg [7:0] q
);

    always @(negedge clk) begin
        if (reset)
            q <= 8'h34;     // Reset to 0x34 (hexadecimal)
        else
            q <= d;
    end

endmodule
