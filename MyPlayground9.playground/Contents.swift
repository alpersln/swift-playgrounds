import UIKit


unc staircase(n: Int) -> Void {
    
    var first = 1
    
    var numberOfSpace = n - 1
    
    while (first <= n) {
        
             
        let str = String(repeating: "#", count: first)
        let str2 = String(repeating: " ", count: numberOfSpace)
        numberOfSpace -= 1
        first += 1
        
         //    print(str)
             print(str2 + str)
            }
    }
  //input 5   =
//     #
//    ##
//   ###
//  ####
// #####
//######


//2

//  Print the ratios of positive, negative and zero values in the array. Each value should be printed on a separate line with  digits after the decimal.

func plusMinus(arr: [Int]) -> Void {
    let arrSize = arr.count
    var positives = 0, negatives = 0, zeros = 0
    
    for i in 0...arr.count-1 {
        if (arr[i] > 0){
            positives += 1
        }else if (arr[i] < 0) {
            negatives += 1
        }else {
            zeros += 1
        }
    }
    
    let positivesFloat = Float(positives) / Float(arrSize)
    let negativesFloat = Float(negatives) / Float(arrSize)
    let zerosFloat = Float(zeros) / Float(arrSize)
    
    print(String(format: "%f",positivesFloat))
    print(String(format: "%f",negativesFloat))
    print(String(format: "%f",zerosFloat))
}
//input: -4 3 -9 0 4 1     -      1 2 3 -1 -2 -3 0 0
