module sqrt_calculator (
    input [7:0] A,       // Input value (8-bit)
    output reg [7:0] Y   // Output must be reg for procedural assignment
);

    reg [7:0] Y0, Y1, Z1;

    always @* begin
        // Step 1: First approximation
        Y0 = A >> 1; // A/2 as the starting point
        
        // Step 2: First correction
        Y1 = Y0 - ((Y0 * (A - 1)) >> 1);
        
        // Step 3: Second correction
        Z1 = ((A - 1) * (A - 1) * (A - 4)) >> 4;
        
        // Step 4: Final square root value
        Y = Y1 - ((Y1 * Z1) >> 1);
    end

endmodule
