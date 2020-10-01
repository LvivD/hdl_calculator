module dec_to_bin_tb;

    reg zero, one, two, three, four, five, six, seven, eight, nine; 
    wire[3:0] res;

    parameter delay = 50;
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
        .res      	    	(res)
	);

	initial 
		begin
            zero <= 1; #(delay); zero <= 0; 
            one <= 1; #(delay); one <= 0;
            #(delay);

            one <= 1; #(delay); one <= 0; 
            three <= 1; #(delay); three <= 0;
            #(delay);

        end


endmodule
