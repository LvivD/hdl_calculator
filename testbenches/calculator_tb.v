module calculator_tb;

	reg[3:0] input_a;
	reg[3:0] input_b;
	reg[2:0] func; // 3'b000 + | 3'b001 - | 3'b010 * | 3'b011 / | 3'b100 and | 3'b101 or
	reg get_res;
	wire[7:0] res;
  
	parameter delay = 50;
	calculator CALC(
		.input_a   			(input_a),
		.input_b      		(input_b),
		.func      			(func),
        .get_res      		(get_res),
        .res      	    	(res)
	);

	initial 
		begin
			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b000; 
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b001; 
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b010; 
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b011;
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b100;
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b101;
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			input_a <= 4'b0101; input_b <= 4'b0010; func <= 3'b111;
			#(delay);
			get_res <= 1;
			#(10) 
			get_res <= 0;

			#(delay);

        end

	// initial 
	// 	begin
    // 	  $monitor()	
    //     end
endmodule