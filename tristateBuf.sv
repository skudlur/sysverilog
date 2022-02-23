module tristateBuf(input logic a, s, output logic y);
  assign y = s? a: 1'bz;
endmodule