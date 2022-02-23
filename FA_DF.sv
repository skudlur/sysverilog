module FA_DF (input logic a, b, cin, output logic sum, car);
	logic m, n, c1;
	HA h1 (a, b, m, c1);
	HA h2 (m ,cin, sum, n);
	or d1 (car, c1, n);
endmodule
