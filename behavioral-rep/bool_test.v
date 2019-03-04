module testbench;
  reg A, B, C;
  wire S, Cy;
  bool_full_adder DUT(S, Cy, A, B, C);
  initial begin
    $dumpfile("bool_full_adder.vcd");
    $dumpvars(0, testbench);
    $monitor($time, " A=%b,  B=%b, C=%b, S=%b, Cy=%b", A, B, C, S, Cy);
    #5 A=1; B=0; C=0;
    #5 A=1; B=1; C=0;
    #5 A=1; B=1; C=1;
    #5 A=0; B=1; C=0;
    #5 $finish;
  end
endmodule
