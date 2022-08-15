// xlen-parameterized mbox module

module mbox(
 			 clk,
  			 rst,
  			 op1,
  			 op2,
  			 mdsel,
			 out  			 
);
  
  parameter XLEN = 32;
  input logic clk;
  input logic rst;
  
  input logic [(XLEN/2)-1:0] op1;
  input logic [(XLEN/2)-1:0] op2;
  input logic mdsel;
  
  output logic [XLEN-1:0] out;
  
  always @(posedge clk) begin
    if(rst) 
      out <= 0;
    if(mdsel == 0)
      out <= op1 * op2;
    else
      out <= op1 / op2;
  end
  
endmodule
  
