/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module scr_10 (
    input clk,
    input rst,
    input wrscr,
    input [1:0] wascr,
    input [1:0] wdscr,
    input p1win,
    input p2win,
    output reg [1:0] scr1,
    output reg [1:0] scr2,
    output reg [2:0] scr1led,
    output reg [2:0] scr2led
  );
  
  
  
  reg [1:0] M_score1_d, M_score1_q = 1'h0;
  reg [1:0] M_score2_d, M_score2_q = 1'h0;
  wire [1-1:0] M_blinker_led;
  blinker_26 blinker (
    .clk(clk),
    .rst(rst),
    .led(M_blinker_led)
  );
  
  wire [3-1:0] M_scr1btoled_led;
  reg [2-1:0] M_scr1btoled_b;
  btoled2_27 scr1btoled (
    .b(M_scr1btoled_b),
    .led(M_scr1btoled_led)
  );
  
  wire [3-1:0] M_scr2btoled_led;
  reg [2-1:0] M_scr2btoled_b;
  btoled2_27 scr2btoled (
    .b(M_scr2btoled_b),
    .led(M_scr2btoled_led)
  );
  
  always @* begin
    M_score2_d = M_score2_q;
    M_score1_d = M_score1_q;
    
    if (wrscr & wascr[0+0-:1] == 1'h1) begin
      M_score1_d = wdscr;
    end
    if (wrscr & wascr[1+0-:1] == 1'h1) begin
      M_score2_d = wdscr;
    end
    scr1 = M_score1_q;
    scr2 = M_score2_q;
    M_scr1btoled_b = M_score1_q;
    M_scr2btoled_b = M_score2_q;
    if (p1win) begin
      scr1led = {2'h3{M_blinker_led}};
    end else begin
      scr1led = M_scr1btoled_led;
    end
    if (p2win) begin
      scr2led = {2'h3{M_blinker_led}};
    end else begin
      scr2led = M_scr2btoled_led;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_score1_q <= 1'h0;
      M_score2_q <= 1'h0;
    end else begin
      M_score1_q <= M_score1_d;
      M_score2_q <= M_score2_d;
    end
  end
  
endmodule