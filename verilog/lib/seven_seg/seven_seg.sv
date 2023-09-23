`include "seven_seg_pkg.sv" // compile the package

// represnets a single digit on seven segment display
module seven_seg
  (
  // input hex digit
  input  logic [3:0] din,
  // output seven bit signal for seven segment representation of input digit
  output seven_seg_pkg::seven_seg_t [6:0] dout
  );

  import seven_seg_pkg::*;

  always_comb begin
    din <= ZERO.next(din);
  end
  
endmodule: seven_seg
  
