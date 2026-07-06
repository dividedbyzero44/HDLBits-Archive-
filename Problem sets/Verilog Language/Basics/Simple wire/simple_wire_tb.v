`timescale 1ns/1ps

module simple_wire_tb;
   reg [15:0] in;
   wire [15:0] out;
   simple_wire dut(.in(in), .out(out));
   initial begin
    $dumpfile("simple_wire_tb.vcd");
    $dumpvars(0, simple_wire_tb);
   
   //test case 1
    in = 9'd0;
    #10;
    $display(out);
   
   //test case 2
    in = 9'd1;
    #30;
    $display(out);
   
   //test case 3
    in = 9'd0;
    #5;
    $display(out);

   //test case 4
    in = 9'd1;
    #5;
    $display(out);

   $finish;
   end
endmodule
