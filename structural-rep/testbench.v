module testbench;
  reg [3:0] x,y;
  reg cy_in;
  wire [3:0] s;
  wire cy4;
  add4 DUT(s, cy4, cy_in, x, y);
  initial begin
    $dumpfile("dumpfile.vcd");
	$dumpvars(0, testbench);
	$monitor($time, " x=%b, y=%b, cy_in=%b, s=%b, cy4=%b", x, y, cy_in, s, cy4);
	#5 x[0]=1; x[1]=1; x[2]=1; x[3]=1; y[0]=1; y[1]=1; y[2]=1; y[3]=1; cy_in=1;
	#5 x[0]=0; x[1]=0; x[2]=0; x[3]=0; y[0]=0; y[1]=0; y[2]=0; y[3]=0; cy_in=0;
	#5 x[3]=1; 
	#5 y[3]=1;
	#5 x[0]=1; x[1]=1; x[2]=1; x[3]=0; y[0]=0; y[1]=0; y[2]=0; y[3]=0; cy_in=0;
	#5 cy_in=1;
	#5 $finish;
  end
endmodule
