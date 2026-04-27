module tb_partI;
    reg [3:0] SW;
    wire [1:0] Y;
    wire V;
    wire [2:0] LEDR;

    P04to02 dut (
        .SW(SW),
        .Y(Y),
        .V(V),
        .LEDR(LEDR)
    );

    reg [1:0] expected_Y;
    reg expected_V;
    reg[3:0] i;
	 

    initial begin
	 
        for (i = 4'b0; i < 4'b1111; i = i + 1) begin
		  
            SW = i;
				#10

          
            if (SW == 4'b0000)
                expected_V = 0;
            else
                expected_V = 1;

         
            case (SW)
                4'b0000: expected_Y = 2'b00; 
                4'b0001: expected_Y = 2'b00; 
                4'b0010: expected_Y = 2'b01;
                4'b0011: expected_Y = 2'b01; 
                4'b0100: expected_Y = 2'b10;
                4'b0101: expected_Y = 2'b10; 
                4'b0110: expected_Y = 2'b10; 
                4'b0111: expected_Y = 2'b10; 
                4'b1000: expected_Y = 2'b11;
                4'b1001: expected_Y = 2'b11; 
                4'b1010: expected_Y = 2'b11;
                4'b1011: expected_Y = 2'b11; 
                4'b1100: expected_Y = 2'b11; 
                4'b1101: expected_Y = 2'b11; 
                4'b1110: expected_Y = 2'b11;
                4'b1111: expected_Y = 2'b11; 
                default: expected_Y = 2'b00; 
            endcase

            
            if (LEDR[2:1] !== expected_Y || LEDR[0] !== expected_V) begin
			 
                $display("SW=%b => Y=%b (expected %b), V=%b (expected %b)",
                          SW, Y, expected_Y, V, expected_V);
            end
        end
        $stop;
    end
endmodule
