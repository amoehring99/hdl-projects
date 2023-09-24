
`include "seven_seg_pkg.sv" // compile the package

// represnets a single digit on seven segment display
module seven_seg
  (
  // input hex digit
  input  logic [3:0] din,
  // output seven bit signal for seven segment representation of input digit
  output seven_seg_pkg::seven_seg_t dout
  );

  // import seven_seg_pkg::*;

  always_comb begin
    //TODO implement function to convert input digit to seven segment representation
    if(din == 0) begin
      dout = seven_seg_pkg::ZERO;
    end else begin
      dout = seven_seg_pkg::ONE;
    end
  end
  
endmodule: seven_seg
  
