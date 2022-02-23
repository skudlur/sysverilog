module btogcode (input logic [3:0]s, output logic [3:0]y);
	assign y[3] = s[3];
	assign y[2] = s[3]^s[2];
	assign y[1] = s[2]^s[1];
	assign y[0] = s[1]^s[0];
endmodule
