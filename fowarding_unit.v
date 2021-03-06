module fowarding_unit(

	input [4:0] rs_in,
	input [4:0] rt_in,
	input [4:0] ex_mem_rd,
	input [4:0] mem_wb_rd,
	input ex_mem_wen,
	input mem_wb_wen,
	output reg [1:0] mux_rs,
	output reg [1:0] mux_rt);
	

	always @* begin
	
		mux_rs = 2'b00;
		mux_rt = 2'b00;
		
		if((ex_mem_wen == 1'b1) && (ex_mem_rd == rs_in) && (ex_mem_rd != 0)) begin
		
			mux_rs = 2'b01;
			
		end 
		
		if((mem_wb_wen == 1'b1) && (mem_wb_rd == rs_in) && (mem_wb_rd != 0) && !((ex_mem_wen == 1'b1) && (ex_mem_rd == rs_in))) begin
			
			mux_rs = 2'b10;
			
		end
		
		if((ex_mem_wen == 1'b1) && (ex_mem_rd == rt_in) && (ex_mem_rd != 0)) begin
		
			mux_rt = 2'b01;
			
		end 
		
		if ( (mem_wb_wen == 1'b1) && (mem_wb_rd == rt_in) && (mem_wb_rd != 0) && !((ex_mem_wen == 1'b1) && (ex_mem_rd == rt_in))) begin
		
			mux_rt = 2'b10;
			
		end
		
	end
	
endmodule

	