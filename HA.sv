module HA (input logic a, b, output logic sum, car);
	assign sum = a^b;
	assign car = a&b;
endmodule
