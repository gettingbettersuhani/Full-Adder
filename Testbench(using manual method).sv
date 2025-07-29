`timescale 1ns/1ps //'timescale unit/precision
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
      
      $dumpfile("dump.vcd"); // creating a VCD file
      $dumpvars(0, tb_full_adder); // scope of waveform collection where 0 means all and tb_full_adder is the module scope
      
      $monitor("Time=%0t  a=%b  b=%b  cin=%b || sum=%b  cout=%b", $time,a_tb,b_tb,cin_tb,sum_tb,cout_tb);
      #5 a_tb=0; b_tb=0; cin_tb=0;
      #5 a_tb=0; b_tb=0; cin_tb=1;
      #5 a_tb=0; b_tb=1; cin_tb=0;
      #5 a_tb=0; b_tb=1; cin_tb=1;
      #5 a_tb=1; b_tb=0; cin_tb=0;
      #5 a_tb=1; b_tb=0; cin_tb=1;
      #5 a_tb=1; b_tb=1; cin_tb=0;
      #5 a_tb=1; b_tb=1; cin_tb=1;
      #5 
      
      $finish; // ending the stimulation
    end
endmodule
