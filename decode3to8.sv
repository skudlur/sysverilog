module decode3to8(input logic [2:0]in1, output logic [7:0]y);

	// always logic block for decoder
	always_comb begin
		if(in1 == 3'b000)
			y = y[0];
		else if(in1 == 3'b001)
			y = y[1];
		else if(in1 == 3'b010)
			y = y[2];
		else if(in1 == 3'b011)
			y = y[3];
		else if(in1 == 3'b100)
			y = y[4];
		else if(in1 == 3'b101)
			y = y[5];
		else if(in1 == 3'b110)
			y = y[6];
		else
			y = y[7];
	end
endmodule
