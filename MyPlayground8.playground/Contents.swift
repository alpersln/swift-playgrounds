
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

//First Reverse
//
//Have the function FirstReverse(str) take the str parameter being passed and return the string in reversed order. For example: if the input string is "Hello World and Coders" then your program should return the string sredoC dna dlroW olleH.
//Examples
//
//Input: "coderbyte"
//Output: etybredocInput: "I Love Code"
//Output: edoC evoL I

func FirstReverse(_ str: String) -> String {
 let str = String(str.reversed())
  
  return str

}
FirstReverse("repla")

let anotherWord = FirstReverse("Alper Sülün")
print(anotherWord)

//MARK: ------Q3	------

//Consider the following:
//struct Tutorial {
//  var difficulty: Int = 1
//}
//
//var tutorial1 = Tutorial()
//var tutorial2 = tutorial1
//tutorial2.difficulty = 2
//
//What are the values of tutorial1.difficulty and tutorial2.difficulty? Would this be any different if Tutorial was a class? Why or why not?

//answer:

//tutorial1.difficulty is 1, whereas tutorial2.difficulty is 2.
//Structures in Swift are value types. You copy value types by value rather than reference. The following code creates a copy of tutorial1 and assigns it to tutorial2:
//var tutorial2 = tutorial1
//
//A change to tutorial2 is not reflected in tutorial1.
//If Tutorial were a class, both tutorial1.difficulty and tutorial2.difficulty would be 2. Classes in Swift are reference types. When you change a property of tutorial1, you’ll see it reflected in tutorial2 and vice versa.

//MARK: ------Q4    ------

//Codeland Username Validation
//
//Have the function CodelandUsernameValidation(str) take the str parameter being passed and determine if the string is a valid username according to the following rules:
//
//1. The username is between 4 and 25 characters.
//2. It must start with a letter.
//3. It can only contain letters, numbers, and the underscore character.
//4. It cannot end with an underscore character.
//
//If the username is valid then your program should return the string true, otherwise return the string false.
//Examples
//
//Input: "aa_"
//Output: false
//Input: "u__hello_world123"
//Output: true
func CodelandUsernameValidation(_ str: String) -> String {

  let arr = Array(str)

if arr.count > 4 && arr.count < 25 {
  if let firstIndex = arr.first?.isLetter {
   if firstIndex == true {
     for i in arr {
      if i.isLetter || i.isNumber || i == "_" {
        
      }
     }
       if arr.last != "_" {
       return "true"
      
     }
   }
  }
}

  return "false"
}
CodelandUsernameValidation("u__hello_world123")

//MARK: ------Q5    ------

//Longest Word
//
//Have the function LongestWord(sen) take the sen parameter being passed and return the longest word in the string. If there are two or more words that are the same length, return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. Words may also contain numbers, for example "Hello world123 567"
//Examples
//
//Input: "fun&!! time"
//Output: time
//Input: "I love dogs"
//Output: love

func LongestWord(_ sen: String) -> String {

  
 let chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789 "
 let filtered = sen.filter { chars.contains($0) }
 let words = filtered.split(separator:" " )
 var longest = ""

 for word in words {
   if word.count > longest.count {
    longest = String(word)
   }
 }

  return longest

}
LongestWord("fun&!! time")

//MARK: ------Q6    ------

//Questions Marks
//
//Have the function QuestionsMarks(str) take the str string parameter, which will contain single digit numbers, letters, and question marks, and check if there are exactly 3 question marks between every pair of two numbers that add up to 10. If so, then your program should return the string true, otherwise it should return the string false. If there aren't any two numbers that add up to 10 in the string, then your program should return false as well.
//
//For example: if str is "arrb6???4xxbl5???eee5" then your program should return true because there are exactly 3 question marks between 6 and 4, and 3 question marks between 5 and 5 at the end of the string.
//Examples
//
//Input: "aa6?9"
//Output: false
//Input: "acc?7??sss?3rr1??????5"
//Output: true

func QuestionsMarks(_ str: String) -> Bool {
  var lastNumber = 0
  var questions = 0
  var pair = Bool()
 
  for char in str {
    
    if let number = Int(String(char)) {
      
      
     
      if lastNumber + number == 10 {
     
        pair = true
        if questions != 3 {
          return false
        }
      }
      lastNumber = number
      questions = 0
    } else if char == "?" {
        questions += 1
      }
    }
  return pair
}
QuestionsMarks("acc?7??sss?3rr1??????5")

//MARK: ------Q7    ------

//fibo
// 1 2 3 5 8 13 21 34

func fibo (n: Int) {
    
    var n1 = 1
    var n2 = 0
    
    for _ in 0..<n {
        let num = n1 + n2
            n1 = n2
            n2 = num
    }
    print(n2)
}
fibo(n:9)

//MARK: ------Q8    ------


//Find Intersection
//
//Have the function FindIntersection(strArr) read the array of strings stored in strArr which will contain 2 elements: the first element will represent a list of comma-separated numbers sorted in ascending order, the second element will represent a second list of comma-separated numbers (also sorted). Your goal is to return a comma-separated string containing the numbers that occur in elements of strArr in sorted order. If there is no intersection, return the string false.
//Examples
//
//Input: ["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]
//Output: 1,4,13
//Input: ["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]
//Output: 1,9,10

func FindIntersection(_ strArr: [String]) -> String {
    
  let firstStr = strArr[0].split(separator:"," )
  
  let secondStr = strArr[1].split(separator:"," )
  var ortaklar = ""
 

  

  for i in firstStr {
    for j in secondStr {
      if j == i {
        ortaklar.append(String(j + ","))
      }
    }
  }
   let asd = ortaklar.removeLast()
 

  return ortaklar.filter { $0 != Character(" ") }

    
}

FindIntersection(["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"])    //1,9,10





//MARK: ------Q9    ------

//
//
//Bracket Matcher
//
//Have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1.
//Examples
//
//Input: "(coder)(byte))"
//Output: 0
//Input: "(c(oder)) b(yte)"
//Output: 1

func BracketMatcher(_ str: String) -> String {

  var bracket = 0

  for i in str {
    if i == "(" {
      bracket += 1
    } else if i == ")" {
      bracket -= 1
    }
    if bracket < 0 {
      return "0"
    }
    
  }
  return bracket == 0 ? "1" : "0"

}
BracketMatcher("((deneme))((al)per)")       //1

//MARK: ------Q10    ------

