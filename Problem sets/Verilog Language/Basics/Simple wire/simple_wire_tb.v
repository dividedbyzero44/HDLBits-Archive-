`timescale 1ns/1ps

module simple_wire_tb;
   reg [15:0] in;
   wire [15:0] out;
   simple_wire dut(.in(in), .out(out));
   initial begin
    $dumpfile("simple_wire_tb.vcd");
    $dumpvars(0, simple_wire_tb);
   
   //test case 1
    in = 9'd432;
    #1;
    $display(out);
    
    
    $finish;
   end
endmodule
