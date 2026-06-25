`timescale 1ns/1ps

module Getting_Started_tb;
    wire one;
    Getting_Started dut (.one(one));

    initial begin    
       $dumpfile("Getting_started_tb.vcd");
       $dumpvars(0, Getting_Started_tb);
       
       #1;
       $display(one);
       $finish;
    end

endmodule

