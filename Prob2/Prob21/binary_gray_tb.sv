module tb_binary_to_gray;

    logic [7:0] binary_code;        
    logic [7:0] gray_code;        

    binary_to_gray dut_binary_to_gray(
        binary_code,
        gray_code 
);

    initial begin

        $display("Binary | Gray");
        $monitor("  %b   |  %b", binary_code, gray_code);
        for (int i = 0; i < 256; i++) begin
            binary_code[7:0] = i[7:0];
            #5; 
        end

    end

endmodule
