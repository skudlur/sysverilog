module full_subtractor(input logic A, B, bin, output logic D, bout); 
logic p, q, r; 

half_subtractor u4(A, B, p, q); 
half_subtractor u5(p, bin, D, r); 
or_gate u6(q, r, bout); 
endmodule
