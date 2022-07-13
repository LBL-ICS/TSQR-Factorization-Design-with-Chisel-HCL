import scala.math.sqrt

class GoldenModel_QR_HouseHolder(row: Int, col: Int) {
  // defines the array, and the parameters
  var a, b, d = 0.0 //a for col, b for rows, d for dot product
  var n = col
  var m = row
  var p = 2
  var myMatrix = Array.ofDim[Double](m, n)
  var holder = Array.ofDim[Double](m)
  var reflector = Array.ofDim[Double](m)
  var trailing = Array.ofDim[Double](m)
  var final_Trailing = Array.ofDim[Double](m)
  var tk = 0.0

  var d1, d2, d3, d4, d5 = 0.0

  // sets up the array for testing
  for (a <- 0 until m) {
    for (b <- 0 until n) {
      myMatrix(a)(b) = 1;
    }
  }
  myMatrix(1)(1) = 4
  myMatrix(2)(2) = 7


  //for (a <- 0 until m) {
   // for (b <- 0 until n) {
    //  print(myMatrix(a)(b))
   // }
   // println("")
  //}

  for (k <- 1 until n - 1) {
    //hqr1 get the next section x
      for (b <- 0 until m) {
        //!issue dealing with the k value
        holder(b) = myMatrix(b)(k)
    }
    b = 0;
    //hqr2 ddot product
    for (d <- 0 until m) {
      for (b <- 0 until m) {
        d1 = holder(d) * holder(b) + d1
      }
      b = 0
    }
    d = 0
    //hqr3
    d2 = sqrt(d1)
    //hqr4
    holder.copyToArray(reflector)
    //hqr5
    if (holder(1) < 0) {
      reflector(1) = holder(1) + -d2
    }
    else{
      reflector(1) = holder(1) + d2
    }
    //hqr6
    for (d <- 0 until m) {
      for (b <- 0 until m) {
        d3 = reflector(d) * reflector(b) + d3
      }
      b = 0
    }
    d = 0
    //hqr7
    tk = -2/d3

    for (j <- k until n){

      //hqr8
      for (b <- 0 until m) {
        trailing(b) = myMatrix(b)(j)
        //println(trailing(b));
      }


      //hqr9
      for (d <- 0 until m) {
        for (b <- 0 until m) {
          //yT times x
          d4 = trailing(b) * reflector(d) + d4
        }
        b = 0
      }
      d = 0

      //hqr10
      for (b <- 0 until m) {
        reflector(b)=  reflector(b) * d4
      }
      for (b <- 0 until m) {
        final_Trailing(b)=  reflector(b) +  trailing(b)
      }


      //hqr11

      for (b <- 0 until m) {
        myMatrix(b)(j) =  final_Trailing(b)
        //println(trailing(b));
      }


    }




  }
}
object Demo {
  def main(args: Array[String]) {
    val pt = new GoldenModel_QR_HouseHolder(3, 3);
  }
}