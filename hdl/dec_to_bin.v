module dec_to_bin  (
					input wire zero, one, two, three, four, five, six, seven, eight, nine,
					output reg[3:0] res
				);

	reg[3:0] intermediate_res;
	reg first_done;

	initial 
	begin
        intermediate_res <= 0;
		first_done <= 0;
	end

	always @(posedge zero)
	begin
		intermediate_res <= intermediate_res*10;
		first_done <= first_done + 1;
	end

	always @(posedge one)
	begin
		intermediate_res <= intermediate_res*10 + 1;
		first_done <= first_done + 1;
	end

	always @(posedge two)
	begin
		intermediate_res <= intermediate_res*10 + 2;
		first_done <= first_done + 1;
	end

	always @(posedge three)
	begin
		intermediate_res <= intermediate_res*10 + 3;
		first_done <= first_done + 1;
	end

	always @(posedge four)
	begin
		intermediate_res <= intermediate_res*10 + 4;
		first_done <= first_done + 1;
	end

	always @(posedge five)
	begin
		intermediate_res <= intermediate_res*10 + 5;
		first_done <= first_done + 1;
	end

	always @(posedge six)
	begin
		intermediate_res <= intermediate_res*10 + 6;
		first_done <= first_done + 1;
	end

	always @(posedge seven)
	begin
		intermediate_res <= intermediate_res*10 + 7;
		first_done <= first_done + 1;
	end

	always @(posedge eight)
	begin
		intermediate_res <= intermediate_res*10 + 8;
		first_done <= first_done + 1;
	end

	always @(posedge nine)
	begin
		intermediate_res <= intermediate_res*10 + 9;
		first_done <= first_done + 1;
	end

	always @(negedge first_done)
	begin
		res <= intermediate_res;
		intermediate_res <= 0;
	end


endmodule
