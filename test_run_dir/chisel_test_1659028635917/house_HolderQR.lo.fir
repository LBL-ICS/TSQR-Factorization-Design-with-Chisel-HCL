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
    output io_out_2 : UInt<4>
    output io_out_3 : UInt<4>

    node main_Matrix__0_0 = io_in_a_0 @[house_HolderQR.scala 23:{39,39}]
    node main_Matrix__0_1 = io_in_a_0 @[house_HolderQR.scala 23:{39,39}]
    node main_Matrix__1_0 = io_in_a_0 @[house_HolderQR.scala 23:{39,39}]
    node main_Matrix__1_1 = io_in_a_0 @[house_HolderQR.scala 23:{39,39}]
    node _WIRE__0_0 = io_in_a_0 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE__0_1 = io_in_a_0 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE__1_0 = io_in_a_0 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE__1_1 = io_in_a_0 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_1_0_0 = io_in_a_1 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_1_0_1 = io_in_a_1 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_1_1_0 = io_in_a_1 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_1_1_1 = io_in_a_1 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_2_0_0 = io_in_a_2 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_2_0_1 = io_in_a_2 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_2_1_0 = io_in_a_2 @[house_HolderQR.scala 29:{39,39}]
    node _WIRE_2_1_1 = io_in_a_2 @[house_HolderQR.scala 29:{39,39}]
    node main_Matrix_1_0_0 = io_in_a_3 @[house_HolderQR.scala 29:{39,39}]
    node main_Matrix_1_0_1 = io_in_a_3 @[house_HolderQR.scala 29:{39,39}]
    node main_Matrix_1_1_0 = io_in_a_3 @[house_HolderQR.scala 29:{39,39}]
    node main_Matrix_1_1_1 = io_in_a_3 @[house_HolderQR.scala 29:{39,39}]
    io_out_0 <= io_in_a_0 @[house_HolderQR.scala 39:10]
    io_out_1 <= io_in_a_1 @[house_HolderQR.scala 39:10]
    io_out_2 <= io_in_a_2 @[house_HolderQR.scala 39:10]
    io_out_3 <= io_in_a_3 @[house_HolderQR.scala 39:10]
