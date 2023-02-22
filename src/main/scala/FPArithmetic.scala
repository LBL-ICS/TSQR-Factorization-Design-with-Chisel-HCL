package FloatingPointDesigns
import chisel3._
import BasicDesigns.Arithmetic._
import Chisel.log2Ceil
import IEEEConversions.FPConvert._
import chisel3.tester.RawTester.test
import chisel3.tester.{testableClock, testableData}

object FPArithmetic {
  // parameterizable floating point adder
  class FP_adder(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var exponent = 0
    var mantissa = 0
    if (bw == 16){
      exponent = 5
      mantissa = 10
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
    }

    //    val reg_in_a = Reg(UInt(bw.W))
    //    val reg_in_b = Reg(UInt(bw.W))
    //    reg_in_a := io.in_a
    //    reg_in_b := io.in_b

    // sign part of ieee number
    val sign = Wire(Vec(2, UInt(1.W)))
    sign(0) := io.in_a(bw-1)
    sign(1) := io.in_b(bw-1)

    // exponent part of ieee number
    val exp = Wire(Vec(2, UInt(exponent.W)))
    when(io.in_a(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){ // there is a maximum number according to IEEE 754 standards
      exp(0) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(0) := io.in_a(bw-2, mantissa)
    }
    when(io.in_b(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){
      exp(1) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(1) := io.in_b(bw-2, mantissa)
    }

    //fractional part of ieee number
    val frac = Wire(Vec(2, UInt(mantissa.W)))
    frac(0) := io.in_a(mantissa-1,0)
    frac(1) := io.in_b(mantissa-1,0)

    // 1.0 + fractional part
    val whole_frac = Wire(Vec(2, UInt((mantissa+1).W)))
    whole_frac(0) := 1.U ## frac(0)
    whole_frac(1) := 1.U ## frac(1)


    val out_s = Wire(UInt(1.W)) // sign of the larger input
    val out_frac = Wire(UInt(mantissa.W)) // mantissa/fractional part of larger input
    val out_exp = Wire(UInt(exponent.W)) // exponent of larger inpui
    val sub_exp = Wire(UInt(exponent.W)) // temporarily holds the result of exp(0) - exp(1) (difference in exponents)
    // just set to 0 initially
    out_exp := 0.U
    sub_exp := 0.U
    out_frac := 0.U
    out_s := 0.U

    // subtracts the exponent of second input from the first input
    val subber = Module(new full_subber(exponent))
    subber.io.in_a := exp(0)
    subber.io.in_b := exp(1)
    subber.io.in_c := 0.U

    // in case the exponent difference is negative, take the twos complement of subtraction result
    val complement = Module(new twoscomplement(exponent))
    complement.io.in := subber.io.out_s

    // add the fractional/mantissa parts of the ieee numbers together
    val adder = Module(new full_adder(mantissa+1))
    adder.io.in_a := whole_frac(0)
    adder.io.in_b := whole_frac(1)
    adder.io.in_c := 0.U

    // these instantiations of twoscomplement are when there are negative number inputs
    val complementN_0 = Module(new twoscomplement(mantissa + 1))
    complementN_0.io.in := whole_frac(0)
    val complementN_1 = Module(new twoscomplement(mantissa + 1))
    complementN_1.io.in := whole_frac(1)

    // before we add the mantissa parts together, we need to align the exponents by shifting by the exponent difference
    val shifter = Module(new shifter(mantissa + 1))
    shifter.io.in_a := whole_frac(0)
    shifter.io.in_b := subber.io.out_s
    shifter.io.in_c := 1.U

    // if the exponent difference resulted in a borrow, then the second input has a larger exponent than the first
    when(subber.io.out_c === 1.U){
      out_exp := exp(1)
      sub_exp := complement.io.out // the exponent difference is in the negative form, so take the twos complement
      out_s := sign(1)
      out_frac := frac(1)
      shifter.io.in_a := whole_frac(0) // shift the smaller exponent input to the right for aligning
      shifter.io.in_b := complement.io.out
      shifter.io.in_c := 1.U
      adder.io.in_a := shifter.io.out_s // now we can add the two aligned mantissa/fractional parts
      complementN_0.io.in := shifter.io.out_s
    }.otherwise { // otherwise the first input has a larger exponent or the same as the second input
      out_exp := exp(0)
      sub_exp := subber.io.out_s // the exponent difference is not negative, so just leave it alone
      out_s := sign(0)
      out_frac := frac(0)
      shifter.io.in_a := whole_frac(1) // shift the smaller exponent input to the right for aligning
      shifter.io.in_b := subber.io.out_s
      shifter.io.in_c := 1.U
      adder.io.in_b := shifter.io.out_s // now we can dd the two aligned mantissa parts
      complementN_1.io.in := shifter.io.out_s
    }

    // if first input is negative, take twos complement
    when(sign(0) === 1.U && sign(1) === 0.U){
      adder.io.in_a := complementN_0.io.out
    }
    // if second input is negative, take twos complement, and compute mantissa addition
    when(sign(1) === 1.U && sign(0) === 0.U){
      adder.io.in_b := complementN_1.io.out
    }

    val new_s = Wire(UInt(1.W)) // will hold the final sign result
    val new_out_frac = Wire(UInt(mantissa.W)) // will hold the final mantissa result
    val new_out_exp = Wire(UInt(exponent.W)) // will hold the final exponent result
    new_s := (~adder.io.out_c & sign(0)) | (sign(0) & sign(1)) | (~adder.io.out_c & sign(1)) // this binary equation gives the new sign of the sum
    new_out_frac := 0.U // just temporarily setting to 0
    new_out_exp := 0.U

    // this twoscomplement is here to take the two complement of the mantissa sum in case the new sign of the sum is negative
    val complementN_2 = Module(new twoscomplement(mantissa + 1))
    complementN_2.io.in := adder.io.out_s


    val D = Wire(UInt(1.W)) // will indicate in which direction the mantissa sum will have to be shifted to be correct. (D = 0 indicates current exponent needs to be increased, D= 1 indicates that the current exponent needs to be decreased)
    val E = Wire(UInt(1.W)) // will indicate if there is no need for adjusting the mantissa sum and we can leave it as it is.

    // equation for describing the conditions in which the mantissa sum will need to be shifted
    D := (~adder.io.out_c) | (sign(0) ^ sign(1))

    // equation for the conditions in which the manstissa sum does not need to be shifted. This has higher priority than D
    E := (~adder.io.out_c & ~adder.io.out_s(mantissa)) | (~adder.io.out_c & ~(sign(0) ^ sign(1))) | (adder.io.out_c & adder.io.out_s(mantissa) & (sign(0) ^ sign(1)))

    val adder_result = Wire(UInt((mantissa+1).W))
    adder_result := adder.io.out_s
    when(new_s === 1.U && sign(0) =/= sign(1)){ // if the new sign of the sum is negative, then take the twos complement of the mantissa sum
      adder_result := complementN_2.io.out
    }

    // module finds the most significant 1 in the mantissa sum. This is used when E = 0, and D = 1, indicating a left shift
    val leadingOneFinder = Module(new leadingOneDetector(mantissa + 1))
    leadingOneFinder.io.in := adder_result
    val subber2 = Module(new full_subber(exponent))
    subber2.io.in_a := out_exp
    subber2.io.in_b := ((mantissa + 1).U - leadingOneFinder.io.out)
    subber2.io.in_c := 0.U
    when(io.in_a(bw-2,0) === 0.U && io.in_b(bw-2, 0) === 0.U){
      new_s := 0.U
      new_out_exp := 0.U
      new_out_frac := 0.U
    }.elsewhen( sub_exp >= mantissa.U){// if the difference between the exponents is too large, larger than mantissa size.
      new_s := out_s
      new_out_frac := out_frac
      new_out_exp := out_exp
    }.elsewhen(E === 1.U){ // if the exponent should stay the same size as the largest exponent
      new_out_exp := out_exp
      new_out_frac := adder_result(mantissa-1,0)
    }.elsewhen(D === 0.U){ // if exponent needs to be increased by 1
      when(out_exp === BigInt(2).pow(exponent).U - 2.U){
        new_out_exp := BigInt(2).pow(exponent).U - 2.U
        new_out_frac := BigInt(2).pow(mantissa).U - 1.U
      }.otherwise{
        new_out_exp := out_exp + 1.U
        new_out_frac := adder_result(mantissa,1)
      }
    }.elsewhen(D === 1.U){ // if exponent needs to be decreased by 1 or more
      when(leadingOneFinder.io.out === 1.U && adder_result === 0.U && ((1.U === (sign(0) ^ sign(1)) && io.in_a(bw-2, 0)===io.in_b(bw-2,0)))){
        new_out_exp := 0.U
      }.otherwise{
        when(subber2.io.out_c === 1.U){
          new_out_exp := 1.U(exponent.W)
          new_out_frac := BigInt(2).pow(mantissa-1).U(mantissa.W)
        }.otherwise {
          new_out_exp := subber2.io.out_s
          new_out_frac := adder_result(mantissa - 1, 0) << ((mantissa + 1).U - leadingOneFinder.io.out)
        }
      }
    }
    val reg_out_s = RegInit(0.U(bw.W))
    //val reg_out_s = Reg(UInt(bw.W))
    reg_out_s := new_s ## new_out_exp ## new_out_frac
    // combine all of the final results
    io.out_s := reg_out_s
  }

  class FP_adder_nonregout(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var exponent = 0
    var mantissa = 0
    if (bw == 16){
      exponent = 5
      mantissa = 10
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
    }

    //    val reg_in_a = Reg(UInt(bw.W))
    //    val reg_in_b = Reg(UInt(bw.W))
    //    reg_in_a := io.in_a
    //    reg_in_b := io.in_b

    // sign part of ieee number
    val sign = Wire(Vec(2, UInt(1.W)))
    sign(0) := io.in_a(bw-1)
    sign(1) := io.in_b(bw-1)

    // exponent part of ieee number
    val exp = Wire(Vec(2, UInt(exponent.W)))
    when(io.in_a(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){ // there is a maximum number according to IEEE 754 standards
      exp(0) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(0) := io.in_a(bw-2, mantissa)
    }
    when(io.in_b(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){
      exp(1) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(1) := io.in_b(bw-2, mantissa)
    }

    //fractional part of ieee number
    val frac = Wire(Vec(2, UInt(mantissa.W)))
    frac(0) := io.in_a(mantissa-1,0)
    frac(1) := io.in_b(mantissa-1,0)

    // 1.0 + fractional part
    val whole_frac = Wire(Vec(2, UInt((mantissa+1).W)))
    whole_frac(0) := 1.U ## frac(0)
    whole_frac(1) := 1.U ## frac(1)


    val out_s = Wire(UInt(1.W)) // sign of the larger input
    val out_frac = Wire(UInt(mantissa.W)) // mantissa/fractional part of larger input
    val out_exp = Wire(UInt(exponent.W)) // exponent of larger inpui
    val sub_exp = Wire(UInt(exponent.W)) // temporarily holds the result of exp(0) - exp(1) (difference in exponents)
    // just set to 0 initially
    out_exp := 0.U
    sub_exp := 0.U
    out_frac := 0.U
    out_s := 0.U

    // subtracts the exponent of second input from the first input
    val subber = Module(new full_subber(exponent))
    subber.io.in_a := exp(0)
    subber.io.in_b := exp(1)
    subber.io.in_c := 0.U

    // in case the exponent difference is negative, take the twos complement of subtraction result
    val complement = Module(new twoscomplement(exponent))
    complement.io.in := subber.io.out_s

    // add the fractional/mantissa parts of the ieee numbers together
    val adder = Module(new full_adder(mantissa+1))
    adder.io.in_a := whole_frac(0)
    adder.io.in_b := whole_frac(1)
    adder.io.in_c := 0.U

    // these instantiations of twoscomplement are when there are negative number inputs
    val complementN_0 = Module(new twoscomplement(mantissa + 1))
    complementN_0.io.in := whole_frac(0)
    val complementN_1 = Module(new twoscomplement(mantissa + 1))
    complementN_1.io.in := whole_frac(1)

    // before we add the mantissa parts together, we need to align the exponents by shifting by the exponent difference
    val shifter = Module(new shifter(mantissa + 1))
    shifter.io.in_a := whole_frac(0)
    shifter.io.in_b := subber.io.out_s
    shifter.io.in_c := 1.U

    // if the exponent difference resulted in a borrow, then the second input has a larger exponent than the first
    when(subber.io.out_c === 1.U){
      out_exp := exp(1)
      sub_exp := complement.io.out // the exponent difference is in the negative form, so take the twos complement
      out_s := sign(1)
      out_frac := frac(1)
      shifter.io.in_a := whole_frac(0) // shift the smaller exponent input to the right for aligning
      shifter.io.in_b := complement.io.out
      shifter.io.in_c := 1.U
      adder.io.in_a := shifter.io.out_s // now we can add the two aligned mantissa/fractional parts
      complementN_0.io.in := shifter.io.out_s
    }.otherwise { // otherwise the first input has a larger exponent or the same as the second input
      out_exp := exp(0)
      sub_exp := subber.io.out_s // the exponent difference is not negative, so just leave it alone
      out_s := sign(0)
      out_frac := frac(0)
      shifter.io.in_a := whole_frac(1) // shift the smaller exponent input to the right for aligning
      shifter.io.in_b := subber.io.out_s
      shifter.io.in_c := 1.U
      adder.io.in_b := shifter.io.out_s // now we can dd the two aligned mantissa parts
      complementN_1.io.in := shifter.io.out_s
    }

    // if first input is negative, take twos complement
    when(sign(0) === 1.U && sign(1) === 0.U){
      adder.io.in_a := complementN_0.io.out
    }
    // if second input is negative, take twos complement, and compute mantissa addition
    when(sign(1) === 1.U && sign(0) === 0.U){
      adder.io.in_b := complementN_1.io.out
    }

    val new_s = Wire(UInt(1.W)) // will hold the final sign result
    val new_out_frac = Wire(UInt(mantissa.W)) // will hold the final mantissa result
    val new_out_exp = Wire(UInt(exponent.W)) // will hold the final exponent result
    new_s := (~adder.io.out_c & sign(0)) | (sign(0) & sign(1)) | (~adder.io.out_c & sign(1)) // this binary equation gives the new sign of the sum
    new_out_frac := 0.U // just temporarily setting to 0
    new_out_exp := 0.U

    // this twoscomplement is here to take the two complement of the mantissa sum in case the new sign of the sum is negative
    val complementN_2 = Module(new twoscomplement(mantissa + 1))
    complementN_2.io.in := adder.io.out_s


    val D = Wire(UInt(1.W)) // will indicate in which direction the mantissa sum will have to be shifted to be correct. (D = 0 indicates current exponent needs to be increased, D= 1 indicates that the current exponent needs to be decreased)
    val E = Wire(UInt(1.W)) // will indicate if there is no need for adjusting the mantissa sum and we can leave it as it is.

    // equation for describing the conditions in which the mantissa sum will need to be shifted
    D := (~adder.io.out_c) | (sign(0) ^ sign(1))

    // equation for the conditions in which the manstissa sum does not need to be shifted. This has higher priority than D
    E := (~adder.io.out_c & ~adder.io.out_s(mantissa)) | (~adder.io.out_c & ~(sign(0) ^ sign(1))) | (adder.io.out_c & adder.io.out_s(mantissa) & (sign(0) ^ sign(1)))

    val adder_result = Wire(UInt((mantissa+1).W))
    adder_result := adder.io.out_s
    when(new_s === 1.U && sign(0) =/= sign(1)){ // if the new sign of the sum is negative, then take the twos complement of the mantissa sum
      adder_result := complementN_2.io.out
    }

    // module finds the most significant 1 in the mantissa sum. This is used when E = 0, and D = 1, indicating a left shift
    val leadingOneFinder = Module(new leadingOneDetector(mantissa + 1))
    leadingOneFinder.io.in := adder_result
    val subber2 = Module(new full_subber(exponent))
    subber2.io.in_a := out_exp
    subber2.io.in_b := ((mantissa + 1).U - leadingOneFinder.io.out)
    subber2.io.in_c := 0.U
    when(io.in_a(bw-2,0) === 0.U && io.in_b(bw-2, 0) === 0.U){
      new_s := 0.U
      new_out_exp := 0.U
      new_out_frac := 0.U
    }.elsewhen( sub_exp >= mantissa.U){// if the difference between the exponents is too large, larger than mantissa size.
      new_s := out_s
      new_out_frac := out_frac
      new_out_exp := out_exp
    }.elsewhen(E === 1.U){ // if the exponent should stay the same size as the largest exponent
      new_out_exp := out_exp
      new_out_frac := adder_result(mantissa-1,0)
    }.elsewhen(D === 0.U){ // if exponent needs to be increased by 1
      when(out_exp === BigInt(2).pow(exponent).U - 2.U){
        new_out_exp := BigInt(2).pow(exponent).U - 2.U
        new_out_frac := BigInt(2).pow(mantissa).U - 1.U
      }.otherwise{
        new_out_exp := out_exp + 1.U
        new_out_frac := adder_result(mantissa,1)
      }
    }.elsewhen(D === 1.U){ // if exponent needs to be decreased by 1 or more
      when(leadingOneFinder.io.out === 1.U && adder_result === 0.U && ((1.U === (sign(0) ^ sign(1)) && io.in_a(bw-2, 0)===io.in_b(bw-2,0)))){
        new_out_exp := 0.U
      }.otherwise{
        when(subber2.io.out_c === 1.U){
          new_out_exp := 1.U(exponent.W)
          new_out_frac := BigInt(2).pow(mantissa-1).U(mantissa.W)
        }.otherwise {
          new_out_exp := subber2.io.out_s
          new_out_frac := adder_result(mantissa - 1, 0) << ((mantissa + 1).U - leadingOneFinder.io.out)
        }
      }
    }
    // combine all of the final results
    io.out_s := new_s ## new_out_exp ## new_out_frac
  }

  class FP_reciprocal(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16){
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw-2, 0) > (limit*2).U){
      number := limit.U
    }.otherwise{
      number := io.in_a(bw-2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    //    // get the input, but exclude the sign
    //    val Ix = io.in_a(bw-2, 0)
    //    // we need need to right shift the input by 1 (or divide by 2)
    //    val new_Ix = Wire(UInt((bw-1).W))
    //    new_Ix := Ix >> 1.U
    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw-2,mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw-1) ## exp ## io.in_a(mantissa-1, 0)
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val result_reg_1 = RegInit(0.U(bw.W))
    result_reg_1 := result
    val half_input_reg_1 = RegInit(0.U(bw.W))
    half_input_reg_1 := half_input
    val sign_bit_reg_1 = RegInit(0.U(1.W))
    sign_bit_reg_1 := io.in_a(bw-1)
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)

    val result_reg_2 = RegInit(0.U(bw.W))
    result_reg_2 := result_reg_1
    val sign_bit_reg_2 = RegInit(0.U(1.W))
    sign_bit_reg_2 := sign_bit_reg_1
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input_reg_1(bw-2,0)

    val result_reg_3 = RegInit(0.U(bw.W))
    result_reg_3 := result_reg_2
    val sign_bit_reg_3 = RegInit(0.U(1.W))
    sign_bit_reg_3 := sign_bit_reg_2
    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val sign_bit_reg_4 = RegInit(0.U(1.W))
    sign_bit_reg_4 := sign_bit_reg_3
    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result_reg_3(bw-2,0)

    val sign_bit_reg_5 = RegInit(0.U(1.W))
    sign_bit_reg_5 := sign_bit_reg_4
    // multiply inverse square root approximation by itself to get the reciprocal approximation
    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    multiplier4.io.in_a := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)
    multiplier4.io.in_b := multiplier3.io.out_s

    io.out_s := sign_bit_reg_5 ## multiplier4.io.out_s(bw-2, 0) // total 5 cycles
  }

  // 9 cycle reciprocal more accurate
  class FP_reciprocal_v3(bw: Int) extends Module {
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16) {
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    } else if (bw == 32) {
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    } else if (bw == 64) {
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    } else if (bw == 128) {
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw - 2, 0) > (limit * 2).U) {
      number := limit.U
    }.otherwise {
      number := io.in_a(bw - 2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw - 2, mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw - 1) ## exp ## io.in_a(mantissa - 1, 0)

    val half_input_reg_1 = RegInit(0.U(bw.W))
    half_input_reg_1 := half_input
    val result_reg_1 = RegInit(0.U(bw.W))
    result_reg_1 := result
    val input_reg_1 = RegInit(0.U(bw.W))
    input_reg_1 := io.in_a
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw - 2, 0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw - 2, 0)

    val half_input_reg_2 = RegInit(0.U(bw.W))
    half_input_reg_2 := half_input_reg_1
    val result_reg_2 = RegInit(0.U(bw.W))
    result_reg_2 := result_reg_1
    val input_reg_2 = RegInit(0.U(bw.W))
    input_reg_2 := input_reg_1
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input_reg_1(bw - 2, 0)


    val half_input_reg_3 = RegInit(0.U(bw.W))
    half_input_reg_3 := half_input_reg_2
    val result_reg_3 = RegInit(0.U(bw.W))
    result_reg_3 := result_reg_2
    val input_reg_3 = RegInit(0.U(bw.W))
    input_reg_3 := input_reg_2
    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val half_input_reg_4 = RegInit(0.U(bw.W))
    half_input_reg_4 := half_input_reg_3
    val input_reg_4 = RegInit(0.U(bw.W))
    input_reg_4 := input_reg_3
    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result_reg_3(bw - 2, 0)


    val mult3_reg_1 = RegInit(0.U(bw.W))
    mult3_reg_1 := multiplier3.io.out_s
    val half_input_reg_5 = RegInit(0.U(bw.W))
    half_input_reg_5 := half_input_reg_4
    val input_reg_5 = RegInit(0.U(bw.W))
    input_reg_5 := input_reg_4
    val multiplier5 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier5.io.in_a := 0.U(1.W) ## multiplier3.io.out_s(bw - 2, 0)
    multiplier5.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw - 2, 0)


    val mult3_reg_2 = RegInit(0.U(bw.W))
    mult3_reg_2 := mult3_reg_1
    val input_reg_6 = RegInit(0.U(bw.W))
    input_reg_6 := input_reg_5
    val multiplier6 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier6.io.in_a := multiplier5.io.out_s
    multiplier6.io.in_b := 0.U(1.W) ## half_input_reg_5(bw - 2, 0)


    val mult3_reg_3 = RegInit(0.U(bw.W))
    mult3_reg_3 := mult3_reg_2
    val input_reg_7 = RegInit(0.U(bw.W))
    input_reg_7 := input_reg_6
    val sub2 = Module(new FP_subber(bw)) // once cycle
    sub2.io.in_a := threehalfs
    sub2.io.in_b := multiplier6.io.out_s


    val mult3_reg_4 = RegInit(0.U(bw.W))
    mult3_reg_4 := mult3_reg_3
    val input_reg_8 = RegInit(0.U(bw.W))
    input_reg_8 := input_reg_7
    val multiplier7 = Module(new FP_multiplier(bw)) // one cycle
    multiplier7.io.in_a := sub2.io.out_s
    multiplier7.io.in_b := 0.U(1.W) ## mult3_reg_3(bw - 2, 0)

    val input_reg_9 = RegInit(0.U(bw.W))
    input_reg_9 := input_reg_8

    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    multiplier4.io.in_a := 0.U(1.W) ## multiplier7.io.out_s(bw - 2, 0)
    multiplier4.io.in_b := 0.U(1.W) ## multiplier7.io.out_s(bw - 2, 0)
    io.out_s := input_reg_9(bw - 1) ## multiplier4.io.out_s(bw - 2, 0) // total 9 cycles
  }

  class FP_reciprocal_iterative(bw: Int, nmiter: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16){
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw-2, 0) > (limit*2).U){
      number := limit.U
    }.otherwise{
      number := io.in_a(bw-2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    //    // get the input, but exclude the sign
    //    val Ix = io.in_a(bw-2, 0)
    //    // we need need to right shift the input by 1 (or divide by 2)
    //    val new_Ix = Wire(UInt((bw-1).W))
    //    new_Ix := Ix >> 1.U
    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw-2,mantissa) - 1.U
    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw-1) ## exp ## io.in_a(mantissa-1, 0)

    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val nmitercnt = RegInit(0.U(log2Ceil(nmiter+1).W))
    val nmcnt = RegInit(0.U(log2Ceil(4).W))
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle

    val sub = Module(new FP_subber(bw)) // once cycle

    // multiply inverse square root approximation by itself to get the reciprocal approximation
    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    val temp = RegInit(0.U(bw.W))

    when(nmcnt === 0.U && nmitercnt === 0.U){
      temp := result
      multiplier4.io.in_a := 0.U
      multiplier4.io.in_b := 0.U
      multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
      multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)
      sub.io.in_a := 0.U
      sub.io.in_b := 0.U
      nmitercnt := nmitercnt
      nmcnt := nmcnt + 1.U
    }.elsewhen(nmcnt === 3.U){
      multiplier4.io.in_a := 0.U
      multiplier4.io.in_b := 0.U
      multiplier1.io.in_a := sub.io.out_s
      multiplier1.io.in_b := 0.U(1.W) ## temp(bw-2,0)
      sub.io.in_a := 0.U
      sub.io.in_b := 0.U
      nmcnt := 0.U
      nmitercnt := nmitercnt + 1.U
    }.elsewhen(nmcnt === 2.U){
      multiplier4.io.in_a := 0.U
      multiplier4.io.in_b := 0.U
      multiplier1.io.in_a := 0.U
      multiplier1.io.in_b := 0.U
      sub.io.in_a := threehalfs
      sub.io.in_b := multiplier1.io.out_s
      nmcnt := nmcnt + 1.U
      nmitercnt := nmitercnt
    }.elsewhen(nmcnt === 1.U){
      multiplier4.io.in_a := 0.U
      multiplier4.io.in_b := 0.U
      multiplier1.io.in_a := multiplier1.io.out_s
      multiplier1.io.in_b := 0.U(1.W) ## half_input(bw-2,0)
      sub.io.in_a := 0.U
      sub.io.in_b := 0.U
      nmcnt := nmcnt + 1.U
      nmitercnt := nmitercnt
    }.otherwise{
      when(nmitercnt === (nmiter).U) {
        multiplier4.io.in_a := io.in_a(bw - 1) ## multiplier1.io.out_s(bw - 2, 0)
        multiplier4.io.in_b := multiplier1.io.out_s
        multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
        multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)
        temp := result
        nmitercnt := 0.U
      }.otherwise{
        temp := multiplier1.io.out_s
        multiplier4.io.in_a := 0.U
        multiplier4.io.in_b := 0.U
        multiplier1.io.in_a := 0.U(1.W) ## multiplier1.io.out_s(bw-2,0)
        multiplier1.io.in_b := 0.U(1.W) ## multiplier1.io.out_s(bw-2,0)
        nmitercnt := nmitercnt
      }
      sub.io.in_a := 0.U
      sub.io.in_b := 0.U
      nmcnt := nmcnt + 1.U
    }
    io.out_s := io.in_a(bw-1) ## multiplier4.io.out_s(bw-2, 0) // total 5 cycles
  }

  class FP_divider(bw: Int) extends Module{
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    val reciprocal = Module(new FP_reciprocal(bw)).io
    val multiplier = Module(new FP_multiplier(bw)).io
    reciprocal.in_a := io.in_b
    multiplier.in_a := io.in_a
    multiplier.in_b := reciprocal.out_s
    io.out_s := multiplier.out_s // should have latency of 6 cycles
  }

  //10 cycle divider, more accurate
  class FP_divider_v3(bw: Int) extends Module{
    val io = IO(new Bundle{
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    val reciprocal = Module(new FP_reciprocal_v3(bw)).io
    val multiplier = Module(new FP_multiplier(bw)).io
    val regs = RegInit(VecInit.fill(9)(0.U(bw.W)))
    regs(0) := io.in_a
    for(i <-0 until 8){
      regs(i+1) := regs(i)
    }
    reciprocal.in_a := io.in_b
    multiplier.in_a := regs(8)
    multiplier.in_b := reciprocal.out_s //10 cycles divider
    io.out_s := multiplier.out_s
  }

  class FP_inverse_square_root(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16){
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw-2, 0) > (limit*2).U){
      number := limit.U
    }.otherwise{
      number := io.in_a(bw-2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    //    // get the input, but exclude the sign
    //    val Ix = io.in_a(bw-2, 0)
    //    // we need need to right shift the input by 1 (or divide by 2)
    //    val new_Ix = Wire(UInt((bw-1).W))
    //    new_Ix := Ix >> 1.U
    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw-2,mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw-1) ## exp ## io.in_a(mantissa-1, 0)
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input(bw-2,0)

    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result(bw-2,0)

    io.out_s := io.in_a(bw-1) ## multiplier3.io.out_s(bw-2, 0) // total 5 cycles
  }

  class FP_square_root(bw: Int) extends Module{
    val io = IO{new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    }}
    val inv_sq = Module(new FP_inverse_square_root(bw)).io // 4 cycles
    val reciprocal = Module(new FP_reciprocal(bw)).io // 5 cycles
    inv_sq.in_a := io.in_a
    reciprocal.in_a := inv_sq.out_s
    io.out_s := reciprocal.out_s // 9 cycles
  }

  // possible replacement for existing square root design (more accurate, same number of clock cycles) and is properly pipelined
  class FP_square_root_v3(bw: Int) extends Module {
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16) {
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    } else if (bw == 32) {
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    } else if (bw == 64) {
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    } else if (bw == 128) {
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw - 2, 0) > (limit * 2).U) {
      number := limit.U
    }.otherwise {
      number := io.in_a(bw - 2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W) // we are performing a fast inverse square root. Get the magic number

    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number // the appoximation is obtained immediateley
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw - 2, mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw - 1) ## exp ## io.in_a(mantissa - 1, 0)

    val half_input_reg_1 = RegInit(0.U(bw.W))
    half_input_reg_1 := half_input // half of the input
    val result_reg_1 = RegInit(0.U(bw.W))
    result_reg_1 := result
    val input_reg_1 = RegInit(0.U(bw.W))
    input_reg_1 := io.in_a
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw - 2, 0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw - 2, 0)

    val half_input_reg_2 = RegInit(0.U(bw.W))
    half_input_reg_2 := half_input_reg_1
    val result_reg_2 = RegInit(0.U(bw.W))
    result_reg_2 := result_reg_1
    val input_reg_2 = RegInit(0.U(bw.W))
    input_reg_2 := input_reg_1
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input_reg_1(bw - 2, 0)


    val half_input_reg_3 = RegInit(0.U(bw.W))
    half_input_reg_3 := half_input_reg_2
    val result_reg_3 = RegInit(0.U(bw.W))
    result_reg_3 := result_reg_2
    val input_reg_3 = RegInit(0.U(bw.W))
    input_reg_3 := input_reg_2
    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val half_input_reg_4 = RegInit(0.U(bw.W))
    half_input_reg_4 := half_input_reg_3
    val input_reg_4 = RegInit(0.U(bw.W))
    input_reg_4 := input_reg_3
    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result_reg_3(bw - 2, 0)


    val mult3_reg_1 = RegInit(0.U(bw.W))
    mult3_reg_1 := multiplier3.io.out_s
    val half_input_reg_5 = RegInit(0.U(bw.W))
    half_input_reg_5 := half_input_reg_4
    val input_reg_5 = RegInit(0.U(bw.W))
    input_reg_5 := input_reg_4
    val multiplier5 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier5.io.in_a := 0.U(1.W) ## multiplier3.io.out_s(bw - 2, 0)
    multiplier5.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw - 2, 0)


    val mult3_reg_2 = RegInit(0.U(bw.W))
    mult3_reg_2 := mult3_reg_1
    val input_reg_6 = RegInit(0.U(bw.W))
    input_reg_6 := input_reg_5
    val multiplier6 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier6.io.in_a := multiplier5.io.out_s
    multiplier6.io.in_b := 0.U(1.W) ## half_input_reg_5(bw - 2, 0)


    val mult3_reg_3 = RegInit(0.U(bw.W))
    mult3_reg_3 := mult3_reg_2
    val input_reg_7 = RegInit(0.U(bw.W))
    input_reg_7 := input_reg_6
    val sub2 = Module(new FP_subber(bw)) // once cycle
    sub2.io.in_a := threehalfs
    sub2.io.in_b := multiplier6.io.out_s


    val mult3_reg_4 = RegInit(0.U(bw.W))
    mult3_reg_4 := mult3_reg_3
    val input_reg_8 = RegInit(0.U(bw.W))
    input_reg_8 := input_reg_7
    val multiplier7 = Module(new FP_multiplier(bw)) // one cycle
    multiplier7.io.in_a := sub2.io.out_s
    multiplier7.io.in_b := 0.U(1.W) ## mult3_reg_3(bw - 2, 0)

    val input_reg_9 = RegInit(0.U(bw.W))
    input_reg_9 := input_reg_8

    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    multiplier4.io.in_a := input_reg_8(bw - 1) ## multiplier7.io.out_s(bw - 2, 0)
    multiplier4.io.in_b := input_reg_8
    io.out_s := input_reg_9(bw - 1) ## multiplier4.io.out_s(bw - 2, 0) // total 9 cycles
  }


  // possible replacement for existing square root design (more accurate, same number of clock cycles) and is properly pipelined
  // we are making a new modification of the old sqrt module , we are going to make an iterable amount of newton method applications
  class FP_square_root_v4(bw: Int, NR_iter: Int) extends Module {
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16) {
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    } else if (bw == 32) {
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    } else if (bw == 64) {
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    } else if (bw == 128) {
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw - 2, 0) > (limit * 2).U) {
      number := limit.U
    }.otherwise {
      number := io.in_a(bw - 2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W) // we are performing a fast inverse square root. Get the magic number

    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number // the appoximation is obtained immediateley

    val apprx = RegInit(0.U(bw.W))
    apprx := magic_num - number

    val x_n = RegInit(VecInit.fill(NR_iter*4)(0.U(bw.W)))
    val a_2 = RegInit(VecInit.fill(NR_iter*4)(0.U(bw.W)))
    val x_n2 = RegInit(VecInit.fill(NR_iter*4)(0.U(bw.W)))
    val ax2 = RegInit(VecInit.fill(NR_iter*4)(0.U(bw.W)))
    val subs = RegInit(VecInit.fill(NR_iter*4)(0.U(bw.W)))
    val x_nexts = RegInit(VecInit.fill(NR_iter)(0.U(bw.W)))
    val multipliers = Vector.fill(NR_iter)(Vector.fill(3)(Module(new FP_multiplier(bw)).io))
    val subtractors = Vector.fill(NR_iter)(Module(new FP_subber(bw)).io)

    // consider the equation f(x) = 1/x^2 - a
    // solving for 0 intercepts suggests => x = 1/sqrt(a)
    // If we want to solve for an x such that the expression for the zero is satisfied, we consequently solve for 1/sqrt(a)
    // shout take
    // f'(x1) = (f(x1)-f(x2))/(x1-x2) = (f(x1)-0)/(x1-x2) => x2 = x1 - (1/x^2 - a)/(-2/x^3) => x2 = x1 + x1/2 - ax^3/2
    // should be around 1 + 1 + 1 + 1 + 1 = 5 cycles for each iteration of newtons method
    // we need 3 FP_Mults
    // 1 FP sub
    // => x2 = x1(3/2 - (a/2)x1^2) // do these at the same time// then do sub// then 2 mult
    // then we finally have the apprximation we are after finally mult by in
    for(i <- 0 until NR_iter){
      for(j <- 0 until 4){
        if(j == 0){
          if(i == 0) {
            x_n(i*4) := result
            a_2(i*4) := io.in_a(bw - 1) ## (io.in_a(bw - 2, mantissa) - 1.U) ## io.in_a(mantissa - 1, 0)
            multipliers(0)(0).in_a := 0.U(1.W) ## result(bw - 2, 0)
            multipliers(0)(0).in_b := 0.U(1.W) ## result(bw - 2, 0)
          }else{
            x_n(i*4) := multipliers(i-1)(2).out_s
            a_2(i*4) := a_2(i*4 - 1)
            multipliers(i)(0).in_a := 0.U(1.W) ## multipliers(i-1)(2).out_s(bw - 2, 0)
            multipliers(i)(0).in_b := 0.U(1.W) ## multipliers(i-1)(2).out_s(bw - 2, 0)
          }
        }else if(j == 1){
          multipliers(i)(1).in_a := multipliers(i)(0).out_s
          multipliers(i)(1).in_b := 0.U(1.W) ## a_2(i*4)(bw-2,0)
          a_2(i*4 + 1) := a_2(i*4)
          x_n(i*4+1) := x_n(i*4)
        }else if(j == 2){
          subtractors(i).in_a := threehalfs
          subtractors(i).in_b := multipliers(i)(1).out_s
          a_2(i*4 + 2) := a_2(i*4+1)
          x_n(i*4+2) := x_n(i*4+1)
        }else if(j == 3){
          multipliers(i)(2).in_a := 0.U(1.W) ## x_n(i*4+2)(bw-2,0)
          multipliers(i)(2).in_b := subtractors(i).out_s
          a_2(i*4 + 3) := a_2(i*4+2)
        }
      }
    }
    val restore_a = Wire(UInt(bw.W))
    restore_a := a_2(NR_iter*4-1)(bw - 1) ## (a_2(NR_iter*4-1)(bw - 2, mantissa) + 1.U) ## a_2(NR_iter*4-1)(mantissa - 1, 0)
    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    multiplier4.io.in_a := a_2(NR_iter*4-1)(bw - 1) ## multipliers(NR_iter-1)(2).out_s(bw - 2, 0)
    multiplier4.io.in_b := restore_a
    io.out_s := multiplier4.io.out_s(bw - 2, 0) // total 9 cycles
  }

  def main(args:Array[String]):Unit = {
    test(new FP_divider_v3(32)){c=>
      c.io.in_a.poke(convert_string_to_IEEE_754("8.89", 32).U)
      c.io.in_b.poke(convert_string_to_IEEE_754("2.43", 32).U)
      c.clock.step(10)
      println(s"Divider Output: ${convert_long_to_float(c.io.out_s.peek().litValue, 32)}")
    }
    println("The new square root circuit")
    test(new FP_square_root_v4(32,25)){c=>
      c.io.in_a.poke(convert_string_to_IEEE_754("87482.0", 32).U)
      for(i <- 0 until 101){
        c.clock.step()
        println(s"clock cycle: ${i+1}")
        println(s"Divider Output: ${convert_long_to_float(c.io.out_s.peek().litValue, 32)}")
      }
    }
    println("The old square root circuit")
    test(new FP_square_root_v3(32)){c=>
      c.io.in_a.poke(convert_string_to_IEEE_754("87482.0", 32).U)
      for(i <- 0 until 13){
        c.clock.step()
        println(s"clock cycle: ${i+1}")
        println(s"Divider Output: ${convert_long_to_float(c.io.out_s.peek().litValue, 32)}")
      }
    }
  }

  // FP subtraction
  class FP_subber(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    // the subtraction is just a special case of the adder
    val FP_adder = Module(new FP_adder(bw))
    val adjusted_in_b = WireInit(0.U(bw.W))
    // the second input needs to have its sign bit inverted for using the adder for subtraction
    adjusted_in_b := (~io.in_b(bw-1)) ## io.in_b(bw-2,0)
    FP_adder.io.in_a := io.in_a
    FP_adder.io.in_b := adjusted_in_b
    io.out_s := FP_adder.io.out_s
  }

  class FP_multiplier(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var exponent = 0
    var mantissa = 0

    if (bw == 16){
      exponent = 5
      mantissa = 10
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
    }
    //    val reg_in_a = Reg(UInt(bw.W))
    //    val reg_in_b = Reg(UInt(bw.W))
    //    reg_in_a := io.in_a
    //    reg_in_b := io.in_b

    // get the sign bit of the two inptus
    val s = Wire(Vec(2, UInt(1.W)))
    s(0) := io.in_a(bw-1)
    s(1) := io.in_b(bw-1)

    // get the exponents of the two inputs
    val exp = Wire(Vec(2, UInt(exponent.W)))
    when(io.in_a(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){ // there is a maximum number according to IEEE 754 standards
      exp(0) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(0) := io.in_a(bw-2, mantissa)
    }
    when(io.in_b(bw-2, mantissa) > BigInt(2).pow(exponent).U - 2.U){
      exp(1) := BigInt(2).pow(exponent).U - 2.U
    }.otherwise{
      exp(1) := io.in_b(bw-2, mantissa)
    }

    val exp_check = Wire(Vec(2, UInt(mantissa.W)))
    exp_check(0) := io.in_a(bw-2,mantissa)
    exp_check(1) := io.in_b(bw-2, mantissa)

    val cond_holder = Wire(UInt(mantissa.W))
    cond_holder :=  exp_check(0) + 1.U + ~((BigInt(2).pow(exponent - 1) - 1).U - exp_check(1))

    // get the mantissa parts of the two inputs
    val frac = Wire(Vec(2, UInt(mantissa.W)))
    frac(0) := io.in_a(mantissa - 1,0)
    frac(1) := io.in_b(mantissa - 1,0)

    // 1.0 + mantissa part of the two numbers
    val new_frac = Wire(Vec(2, UInt((mantissa + 1).W)))
    new_frac(0) := 1.U ## frac(0)
    new_frac(1) := 1.U ## frac(1)

    // use normal multiplier for multiplying the fractional/mantissa parts of the two inputs

    val multiplier = Module(new multiplier(mantissa + 1))
    multiplier.io.in_a := new_frac(0)
    multiplier.io.in_b := new_frac(1)

    // subtract exponent value of the second input from the bias value
    val subber = Module(new full_subber(exponent))
    subber.io.in_a := (BigInt(2).pow(exponent - 1) - 1).U // the bias
    subber.io.in_b := exp(1) // the second input
    subber.io.in_c := 0.U

    // will take twoscomplement of subtraction result
    val complementN = Module(new twoscomplement(exponent))
    complementN.io.in := subber.io.out_s

    // will add the twoscomplement result to the first input exponent
    val adderN = Module(new full_adder(exponent))
    adderN.io.in_a := exp(0) // the first input
    adderN.io.in_b := complementN.io.out // the twoscomplement result
    adderN.io.in_c := 0.U

    // equation for determining the sign of the multiplication result
    val new_s = Wire(UInt(1.W))
    new_s := s(0) ^ s(1)


    val new_exp = Wire(UInt(exponent.W))// holds the final exponent value
    new_exp := 0.U
    val new_mant = Wire(UInt(mantissa.W)) //holds the final mantissa value
    new_mant := 0.U
    val cond_check = Wire(UInt((mantissa ).W))
    cond_check := 0.U
    // if the msb of the mantissa multiplication result is 1, then we must add one to the exponent
    when(multiplier.io.out_s(((mantissa+1)*2) - 1) === 1.U){
      new_exp := adderN.io.out_s + 1.U
      cond_check := adderN.io.out_s + 1.U
      cond_holder :=  exp_check(0) + 2.U + ~((BigInt(2).pow(exponent - 1) - 1).U - exp_check(1))
      new_mant := multiplier.io.out_s(((mantissa+1)*2) - 2, mantissa+1)
    }.otherwise{ // otherwise, leave everything as it is and just store the results
      new_exp := adderN.io.out_s
      cond_check := adderN.io.out_s
      cond_holder :=  exp_check(0) + 1.U + ~((BigInt(2).pow(exponent - 1) - 1).U - exp_check(1))
      new_mant := multiplier.io.out_s(((mantissa+1)*2) - 2, mantissa+1) << (1).U
    }
    val reg_out_s = RegInit(0.U(bw.W))
    //val reg_out_s = Reg(UInt(bw.W))
    when(BigInt(2).pow(exponent).U - 2.U >= 1.U + ~(cond_holder) ){
      new_exp := 1.U(exponent.W)
      new_mant := BigInt(2).pow(mantissa-1).U(mantissa.W)
      reg_out_s := new_s ## new_exp ## new_mant
    }
      .elsewhen(cond_holder > BigInt(2).pow(exponent).U - 2.U){
        new_exp := BigInt(2).pow(exponent).U - 2.U
        new_mant := BigInt(2).pow(mantissa).U - 1.U
        reg_out_s := new_s ## new_exp ## new_mant
      }
    when(exp(0) === 0.U || exp(1) === 0.U){ // if multiplication by 0, output is 0
      reg_out_s := 0.U
    }.otherwise{ // otherwise just output the computed value
      reg_out_s := new_s ## new_exp ## new_mant
    }
    io.out_s := reg_out_s
  }

  //more accurate but much higher hardware cost // we could make them iterative
  class FP_reciprocal2(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16){
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw-2, 0) > (limit*2).U){
      number := limit.U
    }.otherwise{
      number := io.in_a(bw-2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    //    // get the input, but exclude the sign
    //    val Ix = io.in_a(bw-2, 0)
    //    // we need need to right shift the input by 1 (or divide by 2)
    //    val new_Ix = Wire(UInt((bw-1).W))
    //    new_Ix := Ix >> 1.U
    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw-2,mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw-1) ## exp ## io.in_a(mantissa-1, 0)
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input(bw-2,0)

    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result(bw-2,0)
    val exp2 = Wire(UInt(exponent.W))
    exp2 := multiplier3.io.out_s(bw-2,mantissa) - 1.U
    val half_input2 = Wire(UInt(bw.W))
    half_input2 := multiplier3.io.out_s(bw-1) ## exp2 ## multiplier3.io.out_s(mantissa-1, 0)
    val multiplier5 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier5.io.in_a := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)
    multiplier5.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)
    val multiplier6 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier6.io.in_a := multiplier5.io.out_s
    multiplier6.io.in_b := 0.U(1.W) ## half_input(bw-2,0)

    val sub2 = Module(new FP_subber(bw)) // once cycle
    sub2.io.in_a := threehalfs
    sub2.io.in_b := multiplier6.io.out_s

    val multiplier7 = Module(new FP_multiplier(bw)) // one cycle
    multiplier7.io.in_a := sub2.io.out_s
    multiplier7.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)

    // multiply inverse square root approximation by itself to get the reciprocal approximation
    val multiplier4 = Module(new FP_multiplier(bw)) // one cycle
    multiplier4.io.in_a := io.in_a(bw-1) ## multiplier7.io.out_s(bw-2,0)
    multiplier4.io.in_b := multiplier7.io.out_s
    io.out_s := io.in_a(bw-1) ## multiplier4.io.out_s(bw-2, 0) // total 5 cycles
  }
  class FP_inverse_square_root2(bw: Int) extends Module{
    require(bw == 16 || bw == 32 || bw == 64 || bw == 128)
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    var magic = scala.BigInt("0", 10)
    var exponent = 0
    var mantissa = 0
    var limit = scala.BigInt("0", 10)
    // approximation of the reciprocal using the fast inverse square root trick
    // however has some limitations for really large numbers
    if (bw == 16){
      exponent = 5
      mantissa = 10
      magic = scala.BigInt("23040", 10)
    }else if (bw == 32){
      exponent = 8
      mantissa = 23
      magic = scala.BigInt("1597463007", 10)
    }else if(bw == 64){
      exponent = 11
      mantissa = 52
      magic = scala.BigInt("6910469410427058089", 10)
    }else if(bw == 128){
      exponent = 15
      mantissa = 112
      magic = scala.BigInt("127598099150064121557322682042419249152", 10)
    }
    limit = (magic * 2) / 3

    val number = Wire(UInt((bw).W))
    val threehalfs = Wire(UInt(bw.W))
    threehalfs := convert_string_to_IEEE_754("1.5", bw).U
    when(io.in_a(bw-2, 0) > (limit*2).U){
      number := limit.U
    }.otherwise{
      number := io.in_a(bw-2, 0) >> 1.U
    }

    // get the magic number
    val magic_num = magic.U((bw).W)

    //    // get the input, but exclude the sign
    //    val Ix = io.in_a(bw-2, 0)
    //    // we need need to right shift the input by 1 (or divide by 2)
    //    val new_Ix = Wire(UInt((bw-1).W))
    //    new_Ix := Ix >> 1.U
    // calculating the fast inverse square root approximation
    val result = Wire(UInt(bw.W)) // subtract the adjusted input from the magic number and we have the inverse square root immediately (although an approximation)
    result := magic_num - number
    // we need to multiply the inverse square root by itself to get the reciprocal of the original input
    val exp = Wire(UInt(exponent.W))
    exp := io.in_a(bw-2,mantissa) - 1.U

    val half_input = Wire(UInt(bw.W))
    half_input := io.in_a(bw-1) ## exp ## io.in_a(mantissa-1, 0)
    // applying one iteration of newtons method to improve the fast inverse square root approximation
    val multiplier1 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier1.io.in_a := 0.U(1.W) ## result(bw-2,0)
    multiplier1.io.in_b := 0.U(1.W) ## result(bw-2,0)
    val multiplier2 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier2.io.in_a := multiplier1.io.out_s
    multiplier2.io.in_b := 0.U(1.W) ## half_input(bw-2,0)

    val sub = Module(new FP_subber(bw)) // once cycle
    sub.io.in_a := threehalfs
    sub.io.in_b := multiplier2.io.out_s

    val multiplier3 = Module(new FP_multiplier(bw)) // one cycle
    multiplier3.io.in_a := sub.io.out_s
    multiplier3.io.in_b := 0.U(1.W) ## result(bw-2,0)
    val exp2 = Wire(UInt(exponent.W))
    exp2 := multiplier3.io.out_s(bw-2,mantissa) - 1.U
    val half_input2 = Wire(UInt(bw.W))
    half_input2 := multiplier3.io.out_s(bw-1) ## exp2 ## multiplier3.io.out_s(mantissa-1, 0)
    val multiplier5 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier5.io.in_a := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)
    multiplier5.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)
    val multiplier6 = Module(new FP_multiplier(bw)) // latency of one cycle
    multiplier6.io.in_a := multiplier5.io.out_s
    multiplier6.io.in_b := 0.U(1.W) ## half_input(bw-2,0)

    val sub2 = Module(new FP_subber(bw)) // once cycle
    sub2.io.in_a := threehalfs
    sub2.io.in_b := multiplier6.io.out_s

    val multiplier7 = Module(new FP_multiplier(bw)) // one cycle
    multiplier7.io.in_a := sub2.io.out_s
    multiplier7.io.in_b := 0.U(1.W) ## multiplier3.io.out_s(bw-2,0)


    io.out_s := io.in_a(bw-1) ## multiplier7.io.out_s(bw-2, 0) // total 5 cycles
  }
  class FP_square_root2(bw: Int) extends Module{
    val io = IO{new Bundle() {
      val in_a = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    }}
    val inv_sq = Module(new FP_inverse_square_root2(bw)).io // 4 cycles
    val reciprocal = Module(new FP_reciprocal2(bw)).io // 5 cycles
    inv_sq.in_a := io.in_a
    reciprocal.in_a := inv_sq.out_s
    io.out_s := reciprocal.out_s // 9 cycles
  }
  class FP_divider2(bw: Int) extends Module{
    val io = IO(new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    })
    val reciprocal = Module(new FP_reciprocal2(bw)).io
    val multiplier = Module(new FP_multiplier(bw)).io
    reciprocal.in_a := io.in_b
    multiplier.in_a := io.in_a
    multiplier.in_b := reciprocal.out_s
    io.out_s := multiplier.out_s // should have latency of 6 cycles
  }
    class FP_dDot(bw:Int) extends Module{
    val io = IO{new Bundle() {
      val in_a = Input(UInt(bw.W))
      val in_b = Input(UInt(bw.W))
      val in_c = Input(UInt(bw.W))
      val out_s = Output(UInt(bw.W))
    }}
    val multiplier = Module(new FP_multiplier(bw)).io
    val adder = Module(new FP_adder(bw)).io

      // latency of 1 cycle - first stage of pipeline
      multiplier.in_a := io.in_a
      multiplier.in_b := io.in_b
      // need to delay input c by 1 cycle to avoid io.in_c from going to early to the second stage of pipeline
      val reg_in_c = RegInit(0.U(bw.W))
      reg_in_c := io.in_c
      // second stage of pipeline
      adder.in_a := multiplier.out_s
      adder.in_b := reg_in_c
      io.out_s := adder.out_s
  }
}
