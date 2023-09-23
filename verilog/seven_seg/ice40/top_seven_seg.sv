`include "./../../lib/seven_seg/seven_seg_pkg.sv" // compile the package

module top_seven_seg
  #(parameter DIGIT_COUNT = 2)
  (
  input logic                        [15:0] clk,
  input logic                        [15:0] din,
  output seven_seg_pkg::seven_seg_t         dout
  );

  import seven_seg_pkg::*;

  seven_seg_t display_value = DASH;
  logic [3:0] current_value = din;
  logic [3:0] digit_count = 0;

  seven_seg seven_seg (
    .din(current_value),
    .dout(display_value)
  );

  always_ff @(posedge clk) begin
    
    dout <= display_value;

    if(digit_count < DIGIT_COUNT) begin
      digit_count <= digit_count + 1;
      current_value <= (current_value >> 4);
    end else begin
      digit_count <= 0;
      current_value <= din;
    end
    
  end

endmodule: top_seven_seg
