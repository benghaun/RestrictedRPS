/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module chsled_12 (
    input [1:0] c,
    output reg rled,
    output reg sled,
    output reg pled
  );
  
  
  
  always @* begin
    rled = c[0+0-:1] & (c[0+0-:1] ^ c[1+0-:1]);
    pled = c[0+0-:1] & c[1+0-:1];
    sled = c[1+0-:1] & (c[0+0-:1] ^ c[1+0-:1]);
  end
endmodule
