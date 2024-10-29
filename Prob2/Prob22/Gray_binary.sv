module gray_to_binary(
    output logic [7:0] binary_code,  
    input logic [7:0] gray_code    
);

always_comb begin
    	binary_code[7] = gray_code[7] ;
    	binary_code[6] = gray_code[7] ^ gray_code[6];
    	binary_code[5] = gray_code[5] ^ binary_code[6];
    	binary_code[4] = gray_code[4] ^ binary_code[5];
    	binary_code[3] = gray_code[3] ^ binary_code[4];
    	binary_code[2] = gray_code[2] ^ binary_code[3];
    	binary_code[1] = gray_code[1] ^ binary_code[2];
    	binary_code[0] = gray_code[0] ^ binary_code[1];
end
endmodule
