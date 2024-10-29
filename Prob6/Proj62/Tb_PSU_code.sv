
module TB_PSU_CODE;
logic [18:0] M;
logic Result;
integer fd;
initial fd = $fopen("log.txt", "w");

PSU_CODE DUT_PSU_CODE(.M(M), .Result(Result));

initial begin
        $monitor("Time: %0t | M: %b | Result: %b", $time, M, Result);
	for(int i = 0; i < 10; i++) begin
		M = $urandom_range(0, 19'h7FFFF);
		$timeformat(-9,2,"ns",10);
		$fwrite(fd, "#RUN_TIME=%0t", $time, ", VECTOR STRING=%b", M[15:0], "NOT MATCHED!\n");

        #10;
end
M = 19'b0000001010101111100;
$timeformat(-9,2,"ns",10);
$fwrite(fd, "#RUN_TIME=%0t", $time, ", VECTOR STRING=%b", M[15:0], "MATCHED!\n");
#10;
M = 19'b0010010011011101000;
$timeformat(-9,2,"ns",10);
$fwrite(fd, "#RUN_TIME=%0t", $time, ", VECTOR STRING=%b", M[15:0], "MATCHED!\n");

#10;
end

endmodule



