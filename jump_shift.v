// Eric Sullivan and Elizabeth Williard
// 11/16/2019
// jump shifter

module jump_shift(

	input [25:0] address,
	output reg [27:0] shift_address);
	
	integer gnd;
	
	always @* begin
	
		gnd = 2'b00;
		
		shift_address = {address[25:0], gnd[1:0]};
		
	end
	
endmodule
		