module PSU_CODE(
input logic [18:0] M,
output logic Result

);
//PSU ID = 917048048
//PSU_ID = 929446508
int PSU_ID =  929446508; int K = PSU_ID % 10;

int Count;

assign Count = M[0]+M[1]+M[2]+M[3]+M[4]+ M[5]+M[6]+M[7]+M[8]+M[9]+ M[10]+M[11]+M[12]+M[13]+M[14]+ M[15]+M[16]+M[17]+M[18];

assign Result = (Count == K);

endmodule



