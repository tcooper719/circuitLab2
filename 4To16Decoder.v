module decoder(d, e, x, y, z);
    input  e, x, y, z;
    output [15:0]d;
        always @(e, x, y, z)//always is monitoring these inputs, this is the sensitivity list
            case ({e, x, y, z})//The curly braces is concatenating the values for these two inputs
                4'b0000:d[0]=1;
                4'b0001:d[1]=1;
                4'b0010:d[2]=1;
                4'b0011:d[3]=1;
                4'b0100:d[4]=1;
                4'b0101:d[5]=1;
                4'b0110:d[6]=1;
                4'b0111:d[7]=1;
                4'b1000:d[8]=1;
                4'b1001:d[9]=1;
                4'b1010:d[10]=1;
                4'b1011:d[11]=1;
                4'b1100:d[12]=1;
                4'b1101:d[13]=1;
                4'b1110:d[14]=1;
                4'b1111:d[15]=1;
    endcase
endmodule