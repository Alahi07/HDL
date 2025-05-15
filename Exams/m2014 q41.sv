module top_module (
    input d, 
    input ena,
    output reg q
);

    always @(*) begin
        if (ena)
            q <= d;    // Transparent latch when ena is high
        // no else — latch holds value when ena is low
    end

endmodule
