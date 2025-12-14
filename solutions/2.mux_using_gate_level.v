// 2:1 mux using gate level modelling 



module mux(input [1:0]I, input s, output y);
 
  not G1(sbar,s);
  and G2(p,I[0],sbar);
  and G3(q,I[1],s);
  or  G4(y,p,q);
  
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
          I= $random;
          s= $random;
          #1;
          $display("the values of I[1]=%b I[0]=%b s=%b y=%b",I[1],I[0],s,y);
        end
    end
  
  endmodule 
