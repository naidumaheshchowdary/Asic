
module tb_PE;

    // Declare parameter N
    //int N; // Use an integer to capture user input

    // Signals
    logic [15:0] D;   
    logic [3:0] Y;     
   //logic Output;        

    PE Dut_PE (
        .D(D),
        .Y(Y)//,
        //.Output(Output)
    );

    initial begin
         
       
//        $monitor("Time: %0t | D--> %b | Y --> %b | Output --> %b", $time, D, Y, Output);
        $monitor("Time: %0t | D--> %b | Y --> %b ", $time, D, Y);

	for(int i = 0; i < 10; i++) begin 
	         D = $urandom_range(0, 2**16 - 1); 
        	#10;
	end
	D = 16'b0000000000000000;
        #10;
	D = 16'b0000000100000000;
	#10;
    end

endmodule
