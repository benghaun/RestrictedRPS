/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_9 (
    input clk,
    input rst,
    input [5:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg z,
    output reg v,
    output reg n,
    output reg [7:0] result
  );
  
  
  
  
  wire [8-1:0] M_addSubtract_out;
  wire [1-1:0] M_addSubtract_z;
  wire [1-1:0] M_addSubtract_v;
  wire [1-1:0] M_addSubtract_n;
  reg [8-1:0] M_addSubtract_a;
  reg [8-1:0] M_addSubtract_b;
  reg [1-1:0] M_addSubtract_alufn0;
  addSubtract_21 addSubtract (
    .a(M_addSubtract_a),
    .b(M_addSubtract_b),
    .alufn0(M_addSubtract_alufn0),
    .out(M_addSubtract_out),
    .z(M_addSubtract_z),
    .v(M_addSubtract_v),
    .n(M_addSubtract_n)
  );
  
  wire [8-1:0] M_bool_out;
  reg [4-1:0] M_bool_alufn;
  reg [8-1:0] M_bool_a;
  reg [8-1:0] M_bool_b;
  bool_22 bool (
    .alufn(M_bool_alufn),
    .a(M_bool_a),
    .b(M_bool_b),
    .out(M_bool_out)
  );
  
  wire [8-1:0] M_comparator_out;
  reg [1-1:0] M_comparator_z;
  reg [1-1:0] M_comparator_n;
  reg [1-1:0] M_comparator_v;
  reg [2-1:0] M_comparator_alufn;
  comparator_23 comparator (
    .z(M_comparator_z),
    .n(M_comparator_n),
    .v(M_comparator_v),
    .alufn(M_comparator_alufn),
    .out(M_comparator_out)
  );
  
  wire [8-1:0] M_shifter_out;
  reg [2-1:0] M_shifter_alufn;
  reg [8-1:0] M_shifter_a;
  reg [3-1:0] M_shifter_b;
  shifter_24 shifter (
    .alufn(M_shifter_alufn),
    .a(M_shifter_a),
    .b(M_shifter_b),
    .out(M_shifter_out)
  );
  
  wire [8-1:0] M_multiplier_out;
  reg [8-1:0] M_multiplier_a;
  reg [8-1:0] M_multiplier_b;
  multiplier_25 multiplier (
    .a(M_multiplier_a),
    .b(M_multiplier_b),
    .out(M_multiplier_out)
  );
  
  always @* begin
    M_addSubtract_a = a;
    M_addSubtract_b = b;
    M_addSubtract_alufn0 = alufn[0+0-:1];
    M_comparator_z = M_addSubtract_z;
    M_comparator_n = M_addSubtract_n;
    M_comparator_v = M_addSubtract_v;
    M_comparator_alufn = alufn[1+1-:2];
    M_bool_a = a;
    M_bool_b = b;
    M_bool_alufn = alufn[0+3-:4];
    M_shifter_a = a;
    M_shifter_b = b[0+2-:3];
    M_shifter_alufn = alufn[0+1-:2];
    M_multiplier_a = a;
    M_multiplier_b = b;
    z = M_addSubtract_z;
    v = M_addSubtract_v;
    n = M_addSubtract_n;
    
    case (alufn[4+1-:2])
      2'h0: begin
        result = M_addSubtract_out;
        if (alufn[0+1-:2] == 2'h2) begin
          result = M_multiplier_out;
        end
      end
      2'h1: begin
        result = M_bool_out;
      end
      2'h2: begin
        result = M_shifter_out;
      end
      2'h3: begin
        result = M_comparator_out;
      end
      default: begin
        result = 8'h00;
      end
    endcase
  end
endmodule
