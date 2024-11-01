module Comparator_Always(
input logic [19:0] A, B,
output logic Same, A_High, B_High

);

always_comb begin 

Same = (A == B);
A_High = (A > B);
B_High = ( A < B);

end

endmodule
