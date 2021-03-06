// Eric Sullivan and Elizabeth Williard
// 11/28/2019
// branch_controller v.2

module branch_controller_v2(

	input [31:0] pc,
	input [4:0] alu_code,
	input [31:0] data1,
	input [31:0] data2,
	input [31:0] sign_extend,
	
	output reg [31:0] branch_addr,
	output reg branch);
	
	always @* begin
	
		branch_addr = pc + 4 + (sign_extend << 2);
		
		case(alu_code)
		
			21: begin //beq
			
				branch = (data1 == data2);
				
			end
			
			22: begin //bne
			
				branch = (data1 != data2);
				
			end
			
			23: begin //bgtz
			
				branch = (data1 > 0);
				
			end
			
			24: begin //bgez
			
				branch = (data1 >= 0);
			
			end
			
			default begin 
			
				branch = 0;
				
			end
		
		endcase
		
	end

endmodule
			