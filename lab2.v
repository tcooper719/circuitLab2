`timescale 1ns / 1ns 

module testbench; 
reg e, x, y, z;//inputs 
wire;//outputs


AND1 a1(oand1,a,b); 
AND2 a2(oand2,a,b); 
OR1 o1(oor1,a,b); 
OR2 o2(oor2,a,b);  
NOT1 n1(onot1, a); 
NOT2 n2(onot2, a);

   initial 
   begin 
       #10 a=0; b=0;
       #10 a=0; b=1;
       #10 a=1; b=0;
       #10 a=1; b=1;
       #10 a=0; b=0;
   end 
   initial
     $monitor($stime,, a,, b,, oand1,, oand2,, oor1,, oor2,, onot1,, onot2);
endmodule 