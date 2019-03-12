module NAND (output reg onand, input A, B);
always @(A,B)//always is monitoring these inputs, this is the sensitivity list
    case ({A,B})//The curly braces is concatenating the values for these two inputs
                //this operates like a switch case
        2'b00:onand=1;//2 is saying the number of 
        2'b01:onand=1;
        2'b10:onand=1;
        2'b11:onand=0;
    endcase
endmodule