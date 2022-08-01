circuit house_HolderQR :
  module house_HolderQR :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a_0 : UInt<16>
    input io_in_a_1 : UInt<16>
    input io_in_a_2 : UInt<16>
    input io_in_a_3 : UInt<16>
    output io_out_0 : UInt<16>
    output io_out_1 : UInt<16>

    reg holder_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), holder_0) @[house_HolderQR.scala 24:19]
    reg holder_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), holder_1) @[house_HolderQR.scala 24:19]
    reg d1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), d1) @[house_HolderQR.scala 30:19]
    io_out_0 <= holder_0 @[house_HolderQR.scala 54:10]
    io_out_1 <= holder_1 @[house_HolderQR.scala 54:10]
    holder_0 <= io_in_a_0 @[house_HolderQR.scala 39:21]
    holder_1 <= io_in_a_2 @[house_HolderQR.scala 39:21]
    d1 <= mux(reset, UInt<16>("h0"), d1) @[house_HolderQR.scala 30:{19,19,19}]
