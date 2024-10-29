
module Carry_look_A_Head_Adder(
input logic [31:0] A_In, B_In, 
input logic C_In,
output logic [31:0] Sum, 
output logic C_Out
);
logic [31:0]G, P ;
logic [32:0]C;


assign G = A_In & B_In;
assign P = A_In ^ B_In;

assign C[0] = C_In;
for (genvar i = 0; i < 32; i++) begin            
	assign C[i+1] = G[i] | P[i]&C[i];
end  
 
assign C_Out = C[32];
assign Sum = P ^ C[31:0];

endmodule




