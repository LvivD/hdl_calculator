module calculator_dec  (
                    input reg zero, one, two, three, four, five, six, seven, eight, nine,
					input reg[2:0] func, // 3'b000 + | 3'b001 - | 3'b010 * | 3'b011 /  | 3'b100 and | 3'b101 or
					input wire get_res,
					output wire[7:0] res
				);

    reg[3:0] input_a;
	reg[3:0] input_b;
    wire[3:0] number;
    reg first_done;

	dec_to_bin dtb(
		.zero   			(zero),
        .one   			    (one),
        .two   		    	(two),
        .three   			(three),
        .four   			(four),
        .five   			(five),
        .six   			    (six),
        .seven   			(seven),
        .eight   			(eight),
        .nine   			(nine),
        .res     	        (number)
	);

    calculator calc(
		.input_a   			(input_a),
		.input_b      		(input_b),
		.func      			(func),
        .get_res      		(get_res),
        .res      	    	(res)
	);

    initial 
	begin
        first_done <= 0;
    end

    always @(number)
	begin
        if (first_done == 1)
        begin
            input_a <= number;
            first_done <= 0;
        end
        else
        begin
            input_b <= number;
            first_done <= 1;
        end
    end

endmodule
