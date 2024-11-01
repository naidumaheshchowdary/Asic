
module tb_Carry_look_A_Head_Adder;
    logic [31:0] A_In, B_In;
    logic C_In;      
    logic [31:0]Sum;
    logic C_Out;        

    Carry_look_A_Head_Adder Dut_Carry_look_A_Head_Adder (
        .A_In(A_In), .B_In(B_In), .C_In(C_In), .Sum(Sum), .C_Out(C_Out)
    );

    
    initial begin
       
        $monitor("A_In=%b, B_In=%b, C_In=%b => Sum=%b, C_Out=%b", A_In, B_In, C_In, Sum, C_Out);



	for (int i = 0; i < 5; i++) begin
            for (int j = 0; j < 8; j++) begin
                for (int k = 0; k < 2; k++) begin
                    A_In = i[31:0];       
                    B_In = j[31:0];       
                    C_In = k;           
                    #10;                
                end
            end
        end

/*	A_In = 32'h00000000;
        B_In = 32'h00000000;
        C_In = 1;
        #10;
*/
	A_In = 32'hFFFFFFFF;
        B_In = 32'hFFFFFFFF;
        C_In = 0;
        #10;
	A_In = 32'hFFFFFFFF;
        B_In = 32'hFFFFFFFF;
        C_In = 1;
        #10;
	A_In = 32'hFFFFFFF0;
        B_In = 32'hFFFFFF0F;
        C_In = 0;
        #10;
	A_In = 32'hF0F0F0F0;
        B_In = 32'hAF0F0F0F;
        C_In = 0;
        #10;
	A_In = 32'hF0F0F0F0;
        B_In = 32'hAF0F0F0F;
        C_In = 1;
        #10;



    end
endmodule
