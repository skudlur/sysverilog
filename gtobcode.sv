module gtobcode (input logic [3:0]s, output logic [3:0]y);
	assign y[3] = s[3];
	xor g1 (y[2], s[3], s[2]);
	xor g2 (y[1], y[2], s[2]);
	xor g3 (y[0], y[1], s[9]);
endmodule
