`include "./../../lib/seven_seg/seven_seg_pkg.sv" // compile the package

module top_seven_seg
  #(parameter DIGIT_COUNT = 2)
  (
  input logic                        [15:0] din,
  input logic                               clk,
  output seven_seg_pkg::seven_seg_t         dout
  );

  // import seven_seg_pkg::*;

  seven_seg_pkg::seven_seg_t display_value;
  logic [15:0] current_din;
  logic [3:0] current_value;
  logic [3:0] digit_count;

  seven_seg seven_seg (
    .din(current_value),
    .dout(display_value)
  );

  always_ff @(posedge clk) begin
    
    dout <= display_value;
    
    if(digit_count == 0) begin
      current_din <= din;
      current_value <= current_din[3:0];
    end

    if(digit_count < DIGIT_COUNT) begin
      current_value <= current_din[3:0];
      current_din <= current_din >> 4;
      digit_count <= digit_count + 1;
    end else begin
      digit_count <= 0;
      current_din <= din;
      current_value <= current_din[3:0];
    end
    
  end

endmodule: top_seven_seg
