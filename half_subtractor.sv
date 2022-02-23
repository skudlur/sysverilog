module half_subtractor (input logic a,b, output logic diff, bor);
logic m;
xor g1 (diff, a, b);
and g2 (bor, m, b);
not g3 (x, a);
endmodule
