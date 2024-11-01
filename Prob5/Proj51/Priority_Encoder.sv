
module PE #(
    parameter N = 4 
) (
    input logic [((2**N)-1):0] D, 
    output logic [N-1:0] Y//, 
    //output logic Output     
);
	//assign Output = |D;        
        assign Y = (D[2**N-1]) ? N-1 :
                 (D[2**N-2]) ? N-2 :
                 (D[2**N-3]) ? N-3 :
                 (D[2**N-4]) ? N-4 :
                 (D[2**N-5]) ? N-5 :
                 (D[2**N-6]) ? N-6 :
                 (D[2**N-7]) ? N-7 :
                 (D[2**N-8]) ? N-8 :
		 (D[2**N-9]) ? N-9 :
                 (D[2**N-10]) ? N-10 :
                 (D[2**N-11]) ? N-11 :
                 (D[2**N-12]) ? N-12 :
                 (D[2**N-13]) ? N-13 :
                 (D[2**N-14]) ? N-14 :
                 (D[2**N-15]) ? N-15 :
                 {N{1'b0}}; 
endmodule
