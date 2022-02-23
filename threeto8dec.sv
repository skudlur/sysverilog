module threeto8dec(input logic [2:0]A, output logic [7:0]y);
	always_comb begin
		if (A == 3'b000)
				y = y[0];
		else if (A == 3'b000)
				y = y[1];
		else if (A == 3'b000)
				y = y[2];
		else if (A == 3'b000)
				y = y[3];
		else if (A == 3'b000)
				y = y[4];
		else if (A == 3'b000)
				y = y[5];
		else if (A == 3'b000)
				y = y[6];
		else
				y = y[7];
	end
endmodule
