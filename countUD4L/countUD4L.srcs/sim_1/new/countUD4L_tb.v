`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2023 10:10:05 AM
// Design Name: 
// Module Name: countUD4L_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module countUD4L_tb();
    reg Up;
    reg Dw;
    reg LD;
    reg clk;
    reg [3:0] sw;
    wire [3:0] Q;
    wire UTC;
    wire DTC;

    countUD4L dut(
        .Up(Up),
        .Dw(Dw),
        .LD(LD),
        .clk(clk),
        .sw(sw),
        .Q(Q),
        .UTC(UTC),
        .DTC(DTC)
    );

    initial begin
        // Initialize input values
        Up = 1;
        Dw = 0;
        LD = 0;
        sw = 0;

        // Apply clock cycle
        clk = 0;
        #5;
        clk = 1;
        #5;
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

    // create clock
    always
    begin
        #5;
        clk = ~clk;
    end
endmodule

