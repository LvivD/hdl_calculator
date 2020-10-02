module calculator_dec_tb;

    reg zero, one, two, three, four, five, six, seven, eight, nine; 
    reg[2:0] func;
    reg get_res;
    wire[3:0] res;

    parameter delay = 50;
    parameter small_delay = 10;
	calculator_dec calc_dec(
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
        .func      			(func),
        .get_res      		(get_res),
        .res      	    	(res)
	);

	initial 
		begin
            #(delay);
            one <= 1; #(delay); one <= 0; 
            #(small_delay);
            three <= 1; #(delay); three <= 0;

            #(small_delay);

            zero <= 1; #(delay); zero <= 0; 
            #(small_delay);
            one <= 1; #(delay); one <= 0;

            #(small_delay);

            func <= 3'b001; #(delay);

            get_res <= 1; #(delay);

        end


endmodule
