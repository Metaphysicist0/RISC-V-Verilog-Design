`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/19 11:57:04
// Design Name: 
// Module Name: test
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


module test;
reg [31:0] mem[0:256];
reg [31:0] readmem[0:0];
integer i=0;
integer r, rfile, wfile;
initial begin
  rfile = $fopen("C:/Users/23941/Desktop/work/test/test/bubble_sort_icode.bin", "rb");
  wfile = $fopen("C:/Users/23941/Desktop/work/test/test/bubble_sort_icode.dat", "w");
  while(!$feof(rfile)) begin
    r = $fread(readmem, rfile);
    mem[i] = {readmem[0][7:0], readmem[0][15:8], readmem[0][23:16], readmem[0][31:24]};
    $display("%x", mem[i]);
    $fwrite(wfile, "%x\n", mem[i]);
    i = i+1;
  end
  $fclose(rfile);
  $fclose(wfile);
end
endmodule
