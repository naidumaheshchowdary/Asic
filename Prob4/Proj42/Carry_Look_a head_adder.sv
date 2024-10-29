
module Carry_Adder_Always
(
input logic [31:0] A_In,
input logic [31:0] B_In, 
input logic C_In,
output logic [31:0] Sum, 
output logic C_Out
);
logic [31:0]G, P ;
logic [32:0]C;


always_comb begin
G = A_In & B_In;
P = A_In ^ B_In;
C[0] = C_In;

for (int i = 0 ; i < 32; i++) begin            	
	C[i+1] = G[i] | P[i]&C[i];
end  
end 
assign C_Out = C[32];
assign Sum = P ^ C[31:0];

endmodule



