circuit house_HolderQR :
  module house_HolderQR :
    input clock : Clock
    input reset : UInt<1>
    input io_in_a_0 : UInt<4>
    output io_out_0 : UInt<4>

    node main_Matrix_0_0 = io_in_a_0 @[house_HolderQR.scala 23:{39,39}]
    node main_Matrix_1_0_0 = io_in_a_0 @[house_HolderQR.scala 29:{39,39}]
    io_out_0 <= io_in_a_0 @[house_HolderQR.scala 36:10]
