`timescale 1ns/1ps //'timescale <time_unit> / <time_precision>
module tb_full_adder;
  reg a_tb, b_tb, cin_tb;
  wire sum_tb, cout_tb;
  //Instantiate the Full Adder
  full_adder dut(
    .a(a_tb),
    .b(b_tb),
    .cin(cin_tb),
    .sum(sum_tb),
    .cout(cout_tb) );
  
  initial
    begin
      
      $dumpfile("dump.vcd");
    $dumpvars(0, tb_full_adder);
      
      $monitor("Time=%0t  a=%b  b=%b  cin=%b || sum=%b  cout=%b", $time,a_tb,b_tb,cin_tb,sum_tb,cout_tb);
       
      for(integer i=0;i<8;i=i+1)
        begin
          #5 {a_tb, b_tb, cin_tb} = i;
        end
      #5
      
      $finish;
    end
endmodule
