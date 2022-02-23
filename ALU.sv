module ALU (input logic [7:0]a, b, 
				input logic [3:0]ALU_Sel,
				output logic [7:0]ALU_Out,
				output logic CarryOut
				);
	input logic [7:0]ALU_Result;
	output logic [8:0]tmp;
	
	assign ALU_Out = ALU_Result;
	assign tmp = {1'b0, a} + {1'b0, b};
	assign CarryOut = tmp[8];
	
	always begin
		case(ALU_Sel)
		4'b0000:
			ALU_Result = a + b;
		4'b0001:
			ALU_Result = a - b;
		4'b0010:
			ALU_Result = a * b;
		4'b0011:
			ALU_Result = a / b;
		4'b0100:
			ALU_Result = a & b;
		4'b0101:
			ALU_Result = a | b;
		4'b0110:
			ALU_Result = a ^ b;
		4'b0111:
			ALU_Result = ~(a | b);
		4'b1000:
			ALU_Result = ~(a & b);
		4'b1001:
			ALU_Result = ~(a ^ b);
		default:
			ALU_Result = 4'b1111;
		endcase
	end
endmodule

		
		