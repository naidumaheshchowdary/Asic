module Comparator(
input logic [19:0] A, B,
output logic Same, A_High, B_High

);


initial begin
	assign Same = (A == B);
	assign A_High = (A > B);
	assign B_High = (A < B);


end
endmodule






