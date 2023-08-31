//*** TB CODE FOR UP COUNTER ***//

`timescale 1ns / 1ps

module tb_Up_Counter;

        reg clk,reset;
        wire [3:0] counter;
        
        up_counter dut(.clk(clk),.reset(reset),.counter(counter));
        
        initial
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial 
        begin
            reset=1;
            #20;
            reset=0;    
        end
endmodule