module tb_sqrt_calculator;

    reg [7:0] A;            // Input test signal
    wire [7:0] Y;           // Output signal from the design

    // Instantiate the Design Under Test (DUT)
    sqrt_calculator dut (
        .A(A),
        .Y(Y)
    );

    initial begin
        // Test case 1
        A = 8'd16; #10;
        $display("Input A = %d, Output Y = %d", A, Y);
        
        // Test case 2
        A = 8'd25; #10;
        $display("Input A = %d, Output Y = %d", A, Y);
        
        // Test case 3
        A = 8'd64; #10;
        $display("Input A = %d, Output Y = %d", A, Y);

        // Finish simulation
        $finish;
    end
endmodule
