
//MARK: ------Q1------

//First Factorial
//
//Have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it. For example: if num = 4, then your program should return (4 * 3 * 2 * 1) = 24. For the test cases, the range will be between 1 and 18 and the input will always be an integer.
//Examples
//
//Input: 4
//Output: 24

func FirstFactorial(num: Int) -> Int {


var result = 1

for i in 1..<num+1 {
 result *= i
}
  
    return result
}

FirstFactorial(num: 5)

//different solition

func FirstFactorial2(numb:Int) -> Int  {
    return (1...numb).reduce(1,*)
}
FirstFactorial2(numb: 4)

//MARK: ------Q2------
