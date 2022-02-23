module patternMoore(input logic clk,
						  input logic reset,
						  input logic a,
						  output logic y);
	typedef enum logic [1:0](S0, S1, S2) statetype;
	statetype state, nextState;
	
	always_ff @(posedge clk, posedge reset) begin
		if(reset) 
			state <=0;
		else 
			state <= nextState;
	end
	
	always_comb begin
		case(state)
			S0: begin
				if(a) 
					nextState = S0;
				else 
					nextState = S1;
			end
			
			S1: begin
				if(a) 
					nextState = S2;
				else 
					nextState = S1;
			end
			
			S2: begin 
				if(a) 
					nextState = S0;
				else 
					nextState = S1;
			end
			
			default: 
				nextState = S0;
		endcase
	end
	
	assign y = (state==S2);
endmodule
