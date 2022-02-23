module nine_in_or (input logic [8:0]a, output logic y);
	or dut (y, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]);
endmodule
