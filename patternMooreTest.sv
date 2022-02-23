module sd101_MooreTest();
	logic clk;
	logic reset;
	logic in;
	
	logic out;
	logic expectedOut;
	logic [31:0] i;
	
	patternMoore dut (clk, reset, in, out);
	
	logic [2:0] testVector[1000:0];
	
	initial begin
		$readmemb("tbVectors", testVector);
		i = 0;
		reset = 1; in = 0;
	end
	
	always @(posedge clk) begin
		{reset, in, expectedOut} = testVector[i];
		$display(reset, in, expectedOut);
	end
	
	always @(negedge clk) begin
		if(expectedOut !== out) begin
			$display("Wrong output for inputs %b, %b!=%b", {reset, in}, expectedOut, out);
		end
		i = i + 1;
	end
	
	always begin 
		#5 clk <= 1;
		#5 clk <= 0;
	end
	
endmodule
		