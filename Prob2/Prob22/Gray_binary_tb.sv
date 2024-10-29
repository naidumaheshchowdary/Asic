module tb_gray_to_binary;

     logic [7:0] gray_code;          
     logic [7:0] binary_code;       


    gray_to_binary dut_gray_to_binary(.*
);

    initial begin
      
        $display("Gray code | Binary Code");
        $monitor("  %b   |  %b", gray_code, binary_code);

        for (int i = 0; i < 256; i++) begin
            gray_code[7:0] = i[7:0];
            #5; 
        end

    end

endmodule
