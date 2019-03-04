module testbench;
  reg A, B, C;
  wire Cy;
  carry DUT(Cy, A, B, C);
  initial begin
    $dumpfile("tt_carry.vcd");
    $dumpvars(0, testbench);
    $monitor($time, " A=%b,  B=%b, C=%b, Cy=%b", A, B, C, Cy);
    #5 A=1; B=0; C=0;
    #5 A=1; B=1; C=0;
    #5 A=1; B=1; C=1;
    #5 A=0; B=1; C=0;
    #5 $finish;
  end
endmodule
