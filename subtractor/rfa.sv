module rfa (input logic A, B, Cin, output logic Sum, g, p);

    assign g = A & B;
    assign p = A | B;
    assign Sum = A ^ B ^ Cin;

endmodule