// 2:1 mux with behavioural modelling 

module mux(input [1:0]I , input s, output reg y);
  
  always @(*)
    begin
     
      if(s)
        y= I[1];
      else
        y= I[0];
    end
  
endmodule 

module tb;
  
  reg [1:0]I;
  reg s;
  wire y;
  
  mux M(I,s,y);
  
  initial
    begin
      repeat(10)
        begin
          I=$random;
          s=$random;
          #1;
          $display("the value of I[1]=%b I[0]=%b s=%b y=%b",I[1],I[0],s,y);
        end
    end
  
endmodule 

