//*** RTL CODE FOR UP COUNTER ***//

`timescale 1ns / 1ps

module up_counter(clk,reset,counter);

        input clk,reset;
        output reg [3:0] counter;
        
        always@(posedge clk or posedge reset)
        begin
            if(reset)
                counter <= 4'd0;
            else
                counter <= counter + 4'd1;
         end       
                            
endmodule