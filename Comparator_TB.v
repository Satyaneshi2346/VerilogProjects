module comparator_TB;

    // Inputs
    reg [3:0] Data_in_A;
    reg [3:0] Data_in_B;

    // Outputs
    wire less;
    
    wire greater;

    // Instantiate the Unit Under Test (UUT)
    comparator uut (Data_in_A,Data_in_B,greater,lesser);

    initial begin
        //Apply inputs
        Data_in_A = 10;
        Data_in_B = 12;
        #100;
        Data_in_A = 15;
        Data_in_B = 11;
        #100;
        Data_in_A = 10;
        Data_in_B = 10;
        #100;
    end
      
endmodule
