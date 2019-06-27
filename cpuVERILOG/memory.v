module memory (Opcode, in);

	reg [2:0] count;
	output reg [2:0] Opcode;
	output reg [3:0] in;
	
	initial begin
		count <= 3'd0;
	end
	
	always @ (*) begin
		count <= count + 1;
		case(count)
			3'd0: begin
				Opcode = 3'b000;
				in = 4'd2;
			end
			3'd1: begin
				Opcode = 3'b001;
				in = 4'd1;
			end
			3'd2: begin
				Opcode = 3'b010;
			end
			3'd3: begin
				Opcode = 3'b011;
			end
			3'd4 : begin
				Opcode = 3'b100;
			end
			3'd5 : begin
				Opcode = 3'b101;
			end
		endcase
	end
endmodule

	
	