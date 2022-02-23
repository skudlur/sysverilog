module bcd_adder (input logic s3, s2, s1, s0, output logic y);
	assign y = (s3&s2) | (s3&s1);
endmodule
