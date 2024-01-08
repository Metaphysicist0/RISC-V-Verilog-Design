//多路分配器


module MUX(
    input wire[31:0] in1,
    input wire[31:0] in2,
    input wire s,
    output wire[31:0] out
);

assign out = s?in1:in2;

endmodule