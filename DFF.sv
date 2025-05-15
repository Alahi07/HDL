module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output reg [7:0] q
);

    always @(posedge clk) begin
        if (reset)
            q <= 8'b0;      // Reset output on clock edge
        else
            q <= d;         // Load d into q on clock edge
    end

endmodule
