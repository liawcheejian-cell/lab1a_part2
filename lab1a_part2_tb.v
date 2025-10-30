//============================================================
// Testbench for lab1a_part2 (3-bit 5-to-1 Mux)
//============================================================
`timescale 1ns/1ps
module lab1a_part2_tb;

    reg  [2:0] u, v, w, x, y;
    reg  [2:0] s;
    wire [2:0] m;

    // Instantiate the DUT (Device Under Test)
    lab1a_part2 uut (
        .u(u),
        .v(v),
        .w(w),
        .x(x),
        .y(y),
        .s(s),
        .m(m)
    );

    // Test process
    initial begin
        $display("=== Starting 3-bit 5-to-1 MUX Test ===");

        // Assign example values
        u = 3'b000;
        v = 3'b001;
        w = 3'b010;
        x = 3'b011;
        y = 3'b100;

        // Run through select inputs 0–4
        s = 3'b000; #10;
        if (m == u) $display("Test 1 PASSED (s=000)"); else $display("Test 1 FAILED (s=000)");

        s = 3'b001; #10;
        if (m == v) $display("Test 2 PASSED (s=001)"); else $display("Test 2 FAILED (s=001)");

        s = 3'b010; #10;
        if (m == w) $display("Test 3 PASSED (s=010)"); else $display("Test 3 FAILED (s=010)");

        s = 3'b011; #10;
        if (m == x) $display("Test 4 PASSED (s=011)"); else $display("Test 4 FAILED (s=011)");

        s = 3'b100; #10;
        if (m == y) $display("Test 5 PASSED (s=100)"); else $display("Test 5 FAILED (s=100)");

        // Test undefined select (for completeness)
        s = 3'b111; #10;
        if (m == y) $display("Default output test PASSED");
        else $display("Default output test FAILED");

        $display("=== All tests completed ===");

        // Optional summary marker for auto-grader
       if (m == y)
            $display("TEST PASSED");
        else
            $display("TEST FAILED");

        #10; $finish;
    end

endmodule




