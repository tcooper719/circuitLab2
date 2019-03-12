`timescale 1ns / 1ns 

module testbench; 
reg e, x, y, z; 
wire [15:0]o1;

decoder dec(o1, e, x, y, z);
    initial 
    begin 
        #10 e=0; x=0; y=0; z=0;
        #10 e=0; x=0; y=0; z=1;
        #10 e=0; x=0; y=1; z=0;
        #10 e=0; x=0; y=1; z=1;
        #10 e=0; x=1; y=0; z=0;
        #10 e=0; x=1; y=0; z=1;
        #10 e=0; x=1; y=1; z=0;
        #10 e=0; x=1; y=1; z=1;
        #10 e=1; x=0; y=0; z=0;
        #10 e=1; x=0; y=0; z=1;
        #10 e=1; x=0; y=1; z=0;
        #10 e=1; x=0; y=1; z=1;
        #10 e=1; x=1; y=0; z=0;
        #10 e=1; x=1; y=0; z=1;
        #10 e=1; x=1; y=1; z=0;
        #10 e=1; x=1; y=1; z=1;
    end 
    initial
        $monitor($stime,, e,, x,, y,, z,, o1);
endmodule 