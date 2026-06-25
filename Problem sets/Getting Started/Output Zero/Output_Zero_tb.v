`timescale 1ns/1ps

module Output_Zero_tb;
  wire zero;
  Output_Zero dut (.zero(zero));
  initial begin
    $dumpfile("Output_Zero_tb.vcd");
    $dumpvars(0, Output_Zero_tb);
    
    #1;
    $display(zero);
    $finish;
  end
endmodule