
//Data flow modelling of mux
//https://www.edaplayground.com/x/s9sF

module mux(input [1:0]I, input s, output  y);
  assign y= s ? I[1]: I[0];
endmodule 



module tb;
  reg [1:0] I;
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
    $display("the value of I[1]=%b I[0]=%d s=%d y=%b",I[1],I[0],s,y);

        end
    end
  
endmodule 
