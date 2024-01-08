`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/14 15:07:20
// Design Name: 
// Module Name: RISCV_SOC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RISCV_SOC(
  input clk,
  input rst,
  output wire[31:0] wdata
    );
    
      wire[31:0] inst_addr;
  wire[31:0] inst;
  wire 		 inst_ce;

  wire       data_ce;
  wire       data_we;
  wire[31:0] data_addr;
// wire[31:0] wdata;
  wire[31:0] rdata; 
  wire[31:0] verify; 
 

 riscv riscv0(
		.clk(clk),
		.rst(rst),
	
		.inst_addr_o(inst_addr),
		.inst_i(inst),
		.inst_ce_o(inst_ce),

		.data_ce_o(data_ce),	
		.data_we_o(data_we),
		.data_addr_o(data_addr),
		.data_i(rdata),
		.data_o(wdata)		
	);
	
	inst_mem inst_mem0(
		.ce(inst_ce),
		.addr(inst_addr),
		.inst(inst)	
	);

	data_mem data_mem0(
		.clk(clk),
		.ce(data_ce),
		.we(data_we),
		.addr(data_addr),
		.data_i(wdata),
		.data_o(rdata),
		.verify(verify)
	);
endmodule
