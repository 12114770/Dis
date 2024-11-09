module \$add (A, B, Y);

    parameter A_WIDTH = 32;
    parameter B_WIDTH = 32;
    parameter Y_WIDTH = 32;
    parameter A_SIGNED = 0;
    parameter B_SIGNED = 0;

    input  [A_WIDTH-1:0] A;
    input  [B_WIDTH-1:0] B;
    output [Y_WIDTH-1:0] Y;  // Change output width to exclude carry-out

    // Generate and propagate signals
    wire [Y_WIDTH-1:0] P, G;
    wire [Y_WIDTH-1:0] C; // Matrix for carry signals

    assign P = A ^ B;
    assign G = A & B;

    genvar i;
    genvar j;
    genvar k;
    assign C[0] = 0;

    
    generate
        for (i = 1; i < Y_WIDTH; i = i + 1) begin
            wire[i-1:0] to_or;

            for (j = 0; j < i; j = j + 1) begin 
                wire [j:0] to_and;
                assign to_and[0] = G[i-j-1];

                for(k = 1; k <= j; k = k + 1) begin
                    assign to_and[k] = P[i-k];
                end
                assign to_or[j] = &to_and;
                
            end
            assign C[i] = |to_or;

        end
    endgenerate

    assign Y[Y_WIDTH-1:0] = P ^ C[Y_WIDTH-1:0];
    assign Y[Y_WIDTH] = C[Y_WIDTH];



    // Sum
	

endmodule