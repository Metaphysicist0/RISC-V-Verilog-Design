`timescale 1ps/1ps

module riscv_soc_tb();

  reg     clk;
  reg     rst;
  
       
  initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
  end
      
  initial begin
            rst = 1'b1;
    #300    rst= 1'b0;
    #100000 $display("---     result is %d         ---\n");
	#1000   $stop;   
  end
       
RISCV_SOC URISCV_SOC(
         .clk(clk),
         .rst(rst)
    );
endmodule