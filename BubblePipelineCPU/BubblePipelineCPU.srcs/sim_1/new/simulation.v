`timescale 1ns / 1ps

module simulation();

reg CLK;
wire [31:0] PC_Cur;

CPU C(.CLK(CLK), .PC_Cur(PC_Cur));

integer i;

initial begin
    CLK <= 1'bz;
    #5 CLK <= 0;
    for (i = 500; i > 0; i = i - 1) begin
        #5 CLK <= 1;
        #5 CLK <= 0;
    end
    #20 $stop;
end


endmodule
