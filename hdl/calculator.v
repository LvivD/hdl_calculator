module calculator  (
					input reg[3:0] input_a,
					input reg[3:0] input_b,
					input reg[2:0] func, // 3'b000 + | 3'b001 - | 3'b010 * | 3'b011 /  | 3'b100 and | 3'b101 or
					input wire get_res,
					output reg[7:0] res
				);

	always @(posedge get_res)
	begin
		case (func)
			3'b000: 
			begin
				res <= input_a + input_b;
				// res <= funk;
			end
			3'b001: 
			begin
				res <= input_a - input_b;
				// res <= funk;
			end
			3'b010: 
			begin
				res <= input_a * input_b;
				// res <= funk;
			end
			3'b011: 
			begin
				res <= input_a / input_b;
				// res <= funk;
			end
            3'b100: 
			begin
				res <= input_a & input_b;
				// res <= 8'b10111111;
			end
            3'b101: 
			begin
				res <= input_a | input_b;
				// res <= 8'b10011111;
			end
            default:
            begin
                res <= 8'bxxxxx;
            end
		endcase
	end

endmodule
