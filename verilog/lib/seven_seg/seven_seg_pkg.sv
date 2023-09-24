// Only compile this package if its internal conditional
// compilation flag has not been set. This file sets its
// internal flag the first time it is compiled.
//
`ifndef SEVEN_SEG_PKG_ALREADY_COMPILED //if flag is not set
`define SEVEN_SEG_PKG_ALREADY_COMPILED // set the flag

package seven_seg_pkg;

  // 7-segment display control signals
  typedef enum logic [6:0] {
    ZERO   = 7'b 011_1111,
    ONE    = 7'b 000_0110,
    TWO    = 7'b 101_1011,
    THREE  = 7'b 100_1111,
    FOUR   = 7'b 110_0110,
    FIVE   = 7'b 110_1101,
    SIX    = 7'b 111_1101,
    SEVEN  = 7'b 000_0111,
    EIGHT  = 7'b 111_1111,
    NINE   = 7'b 110_1111,
    A      = 7'b 111_0111,
    B      = 7'b 111_1100,
    C      = 7'b 011_1001,
    D      = 7'b 101_1110,
    E      = 7'b 111_1001,
    F      = 7'b 111_0001,
    G      = 7'b 011_1101,
    H      = 7'b 111_0100,
    I      = 7'b 011_0000,
    J      = 7'b 001_1110,
    K      = 7'b 111_0101,
    L      = 7'b 011_1000,
    M      = 7'b 001_0101,
    N      = 7'b 011_0111,
    //use ZERO for O
    P      = 7'b 111_0011,
    Q      = 7'b 110_0111,
    R      = 7'b 011_0011,
    //use FIVE for S
    T      = 7'b 111_1000,
    U      = 7'b 011_1110,
    V      = 7'b 010_1110,
    W      = 7'b 010_1010,
    X      = 7'b 111_0110,
    Y      = 7'b 110_1110,
    Z      = 7'b 100_1011,
    BLANK  = 7'b 000_0000,
    DASH   = 7'b 000_0001,
    UNDER  = 7'b 000_1000
  } seven_seg_t;

endpackage: seven_seg_pkg

`endif // end of conditionally compiling this package

