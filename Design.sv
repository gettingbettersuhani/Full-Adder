module full_adder(sum,cout,a,b,cin);
  input a, b, cin;
  output sum, cout;
  assign sum = a ^ b ^ cin ; // XOR of a,b,cin
  assign cout = (a & b) | (b & cin) | (cin & a); // cout is givem whenver atleast 2 out of 3 inputs are true
endmodule 
