import UIKit


let num1 = 14
let num2 = 22

if num1 == num2 {
    print("numbers are equal")
} else {
    print("numbers are different")
}

//different way
print(num1 == num2 ? "nums are equal" : "nums are different")

//    MARK:                            ***END***

let grade = 82

switch grade {
case  0..<60:
    print("failed")
case 60..<80:
    print("you pass")
default:
    print("well done")
}

//   MARK:                             ***END***

let count = 1...10
for numbers in count {
    print("numbers are: \(numbers)")
}

let names = ["alper","buğra","deniz"]
for name in names {
    print("names:\(name)")
}

// while

var secondsToExplode = 15

while secondsToExplode >= 0 {
    print(secondsToExplode)
    secondsToExplode -= 1
}
print("BOOOOMMMM")


// nested loop
for i in 1...10 {
    for j in 1...10{
        let multiply = i*j
        print("\(i) * \(j) is: \(multiply) ")
    }
    
}

// %
for a in 1...10 {
    if a % 2 == 1 {
        continue
    }
    // 1,3,5,7,9
    print(a)
}
