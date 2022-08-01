circuit house_HolderQR :
  module house_HolderQR :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a_0 : UInt<4>
    input io_in_a_1 : UInt<4>
    input io_in_a_2 : UInt<4>
    input io_in_a_3 : UInt<4>
    output io_out_0 : UInt<4>
    output io_out_1 : UInt<4>

    reg holder_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), holder_0) @[house_HolderQR.scala 20:19]
    reg holder_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), holder_1) @[house_HolderQR.scala 20:19]
    io_out_0 <= holder_0 @[house_HolderQR.scala 41:19]
    io_out_1 <= UInt<4>("h3") @[house_HolderQR.scala 44:10]
    holder_0 <= io_in_a_0 @[house_HolderQR.scala 31:23]
    holder_1 <= holder_1 @[house_HolderQR.scala 20:19]
