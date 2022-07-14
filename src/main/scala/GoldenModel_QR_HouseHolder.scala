import scala.math.sqrt

class GoldenModel_QR_HouseHolder(row: Int, col: Int) {
  // defines the array, and the parameters
  var a, b, d = 0.0 //a for col, b for rows, d for dot product
  var n = col //col
  var m = row //row
  var p = 2 // processor?
  var myMatrix = Array.ofDim[Double](m, n)
  var holder = Array.ofDim[Double](m)
  var reflector = Array.ofDim[Double](m)
  var trailing = Array.ofDim[Double](m)
  var final_Trailing = Array.ofDim[Double](m)
  var TEST_MATRIX = Array.ofDim[Double](m)
  var tk = 0.0
  var kr,jr = 0
  // all labels with TEST_MATRIX have nothing to do with the algorithm and should be ignored, they are only meant for testing

  var d1, d2, d3, d4, d5 = 0.0

  // sets up the array for testing
  for (a <- 0 until m) {
    for (b <- 0 until n) {
      myMatrix(a)(b) = 1;
    }
  }
  myMatrix(1)(1) = 4
  myMatrix(2)(2) = 7
  TEST_MATRIX(0) = 3
  TEST_MATRIX(1) = 5
  TEST_MATRIX(2) = 6


  //for (d <- 1 until m) {
    //for (b <- 1 until m) {
      //d1 = TEST_MATRIX(d) * TEST_MATRIX(b) + d1
    //}
  //}
//print(d1)


  //for (a <- 0 until m) {
   // for (b <- 0 until n) {
    //  print(myMatrix(a)(b))
   // }
   // println("")
  //}

  for (k <- 1 until 2) {
    //hqr1 get the next section x
    kr = k - 1
    for (b <- 0 until m) {
      holder(b) = myMatrix(b)(kr)
      //println(holder(b))
    }
    b = 0;
    //hqr2 ddot product
    for (d <- kr until m) {
      for (b <- kr until m) {
        d1 = holder(d) * holder(b) + d1

      }
    }
    d = 0

    //hqr3
    d2 = sqrt(d1)

    //hqr4
    holder.copyToArray(reflector)
    //hqr5
    if (holder(0) < 0) {
      reflector(0) = holder(0) + -d2
    }
    else {
      reflector(0) = holder(0) + d2
    }
    //hqr6
    for (d <- kr until m) {
      for (b <- kr until m) {
        d3 = reflector(d) * reflector(b) + d3
      }
    }
    d = 0
    //hqr7
    tk = -2 / d3

    for (j <- k until n + 1) {
      jr = j - 1
      //hqr8
      for (b <- 0 until m) {
        trailing(b) = myMatrix(b)(jr)
        //print(trailing(b))
      }


      //hqr9
      for (d <- jr until m) {
        for (b <- jr until m) {
          //yT times x
          d4 = trailing(d) * reflector(b) + d4
        }
      }
      d = 0
      //print(d4)
      //hqr10
      d5 = tk * d4
      //hqr11
      for (b <- jr until m) {
        final_Trailing(b) = d5 * reflector(b) + trailing(b)
      }

      //hqr12
      for (b <- jr until m) {
        final_Trailing(b) = d5 * reflector(b) + trailing(b)
        //print(final_Trailing(b) + " ")
      }


      for (b <- jr until m) {
        myMatrix(b)(jr) = final_Trailing(b)
      }
    }
  }
}
object Demo {
  def main(args: Array[String]) {
    val pt = new GoldenModel_QR_HouseHolder(3, 3);
  }
}