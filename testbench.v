module testbench;

    reg [3:0] A, B;
    reg [2:0] sel;
    wire [3:0] Y;
    wire carry;

    alu dut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y),
        .carry(carry)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        $monitor(
            "A=%d B=%d sel=%b Y=%d carry=%b",
            A, B, sel, Y, carry
        );

        A = 4'd7;
        B = 4'd3;

        sel = 3'b000; #10;  // Addition
        sel = 3'b001; #10;  // Subtraction
        sel = 3'b010; #10;  // AND
        sel = 3'b011; #10;  // OR
        sel = 3'b100; #10;  // XOR

        $finish;
    end

endmodule
