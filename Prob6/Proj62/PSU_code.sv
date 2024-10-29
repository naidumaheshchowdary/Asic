module PSU_CODE(
input logic [18:0] M,
output logic Result
);
int PSU_ID =  929446508;

int Count;

always_comb begin
Count = 0;

        for (int i = 0; i < 19; i++) begin
            Count += M[i];
        end

Result = (Count == K);
end

endmodule
