/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module btoled3_15 (
    input [2:0] b,
    output reg [3:0] led
  );
  
  
  
  always @* begin
    led[0+0-:1] = b[0+0-:1] | b[1+0-:1] | b[2+0-:1];
    led[1+0-:1] = b[1+0-:1] | b[2+0-:1];
    led[2+0-:1] = (b[0+0-:1] & b[1+0-:1]) | b[2+0-:1];
    led[3+0-:1] = b[2+0-:1];
  end
endmodule
