module decoder(o, e, x, y, z);
    input  e, x, y, z;
    output [15:0]o;
        assign o[0]= ~e & ~x & ~y & ~z;
        assign o[1]= ~e & ~x & ~y & z;
        assign o[2]= ~e & ~x & y & ~z;
        assign o[3]= ~e & ~x & y & z;
        assign o[4]= ~e & x & ~y & ~z;
        assign o[5]= ~e & x & ~y & z;
        assign o[6]= ~e & x & y & ~z;
        assign o[7]= ~e & x & y & z;
        assign o[8]= e & ~x & ~y & ~z;
        assign o[9]= e & ~x & ~y & z;
        assign o[10]= e & ~x & y & ~z;
        assign o[11]= e & ~x & y & z;
        assign o[12]= e & x & ~y & ~z;
        assign o[13]= e & x & ~y & z;
        assign o[14]= e & x & y & ~z;
        assign o[15]= e & x & y & z;
endmodule






