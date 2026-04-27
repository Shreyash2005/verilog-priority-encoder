module P04to02 (
    input  [3:0] SW,
    output reg [1:0] Y,
    output reg       V,
    output [2:0] LEDR
);

    always @(*) begin
        Y[0] = SW[2] | SW[3];
        Y[1] = SW[3] | (SW[1] & ~SW[2]);
        V    = SW[0] | SW[1] | SW[2] | SW[3];
    end

    assign LEDR[2] = Y[0];
    assign LEDR[1] = Y[1];
    assign LEDR[0] = V;

endmodule
