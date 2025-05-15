module top_module (
    input clk,
    input resetn,             // Synchronous active-low reset
    input [1:0] byteena,      // Byte-enable: [1]=upper byte, [0]=lower byte
    input [15:0] d,
    output reg [15:0] q
);

    always @(posedge clk) begin
        if (!resetn)
            q <= 16'h0000;    // Reset to 0 if resetn is low
        else begin
            if (byteena[1])
                q[15:8] <= d[15:8];   // Update upper byte
            if (byteena[0])
                q[7:0] <= d[7:0];     // Update lower byte
        end
    end

endmodule
