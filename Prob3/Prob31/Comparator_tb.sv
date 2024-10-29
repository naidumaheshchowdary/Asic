
module tb_Comparator;

     logic [19:0] A, B;          
     logic Same,A_High, B_High;      
   
    Comparator dut_Comparator(.*
	
);

    initial begin
        $display("A | B | Outputs()");
        $monitor("  %b   |  %b   |   %b   |  %b  |  %b", A, B, Same, A_High, B_High);

   
	for (int i = 0; i < 5; i++) begin
		for(int j =0; j < i; j++) begin
			A[19:0] = i[19:0];          
			B[19:0] = j[19:0];		   
            #5;
	end 
        end

	A = 20'b11111111111111111111; 
        B = 20'b00000000000000000000;
	#5;
	A = 20'b10000000011111111111; 
        B = 20'b11111111111111011000;
	#5;
	A = 20'b11111111111111111111; 
        B = 20'b11111111111111111111;
	#5;
	A = 20'b00000000000000000000; 
        B = 20'b00000000000000000000;
	#5;
	A = 20'b11111100111111111111; 
        B = 20'b00001111100000000000;
	#5;

    end

endmodule

