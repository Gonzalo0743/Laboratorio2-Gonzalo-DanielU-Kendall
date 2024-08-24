module dispConv (input logic [3:0] numAct, output logic [6:0] dispOut);

	always_comb begin
		case (numAct)
        4'b0000: dispOut[6:0] = 7'b1000000; 
        4'b0001: dispOut[6:0] = 7'b1111001; 
        4'b0010: dispOut[6:0] = 7'b0100100; 
        4'b0011: dispOut[6:0] = 7'b0110000; 
        4'b0100: dispOut[6:0] = 7'b0011001; 
        4'b0101: dispOut[6:0] = 7'b0010010; 
        4'b0110: dispOut[6:0] = 7'b0000010; 
        4'b0111: dispOut[6:0] = 7'b1111000; 
        4'b1000: dispOut[6:0] = 7'b0000000; 
        4'b1001: dispOut[6:0] = 7'b0010000; 
        4'b1000: dispOut[6:0] = 7'b0000000; 
		  4'b1001: dispOut[6:0] = 7'b0010000; 
		  4'b1010: dispOut[6:0] = 7'b0001000; 
		  4'b1011: dispOut[6:0] = 7'b0000011; 
		  4'b1100: dispOut[6:0] = 7'b1000110; 
		  4'b1101: dispOut[6:0] = 7'b0100001; 
		  4'b1110: dispOut[6:0] = 7'b0000110; 
		  4'b1111: dispOut[6:0] = 7'b0001110; 
		endcase
	end

endmodule 