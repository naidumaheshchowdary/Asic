
module binary_to_gray (
    input logic [7:0] binary_code,
    output logic [7:0] gray_code
);

assign gray_code[7] = binary_code[7];
assign gray_code[6] = binary_code[7] ^ binary_code[6];
assign gray_code[5] = binary_code[6] ^ binary_code[5];
assign gray_code[4] = binary_code[5] ^ binary_code[4];
assign gray_code[3] = binary_code[4] ^ binary_code[3];
assign gray_code[2] = binary_code[3] ^ binary_code[2];
assign gray_code[1] = binary_code[2] ^ binary_code[1];
assign gray_code[0] = binary_code[1] ^ binary_code[0];

endmodule
