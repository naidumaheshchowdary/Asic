
module tb_PE_Always;

 
    logic [15:0] D;   
    logic [3:0] Y;     
  

    PE_Always Dut_PE_Always (
        .D(D),
        .Y(Y)
    );

    initial begin
         
       
        $monitor("Time: %0t | D--> %b | Y --> %b ", $time, D, Y);

	for(int i = 0; i < 10; i++) begin 
	         D = $urandom_range(0, 2**16 - 1); 
        	#10;
	end
	D = 16'b0010101011111000;
        #10;
	D = 16'b0000000111111110;
	#10;
    end

endmodule
