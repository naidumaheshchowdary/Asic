
module PE_Always #(
    parameter N = 4 
) (
    input logic [((2**N)-1):0] D, 
    output logic [N-1:0] Y
);

    always_comb begin
        Y = {N{1'b0}}; 
        
	for(int i = ((2**N) -1); i >= 0; i--) begin
 
	        if (D[i]) begin
   	        	Y = i[N-1:0]; 
			break;
                end
    	end
end
endmodule
