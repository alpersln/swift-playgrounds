
// inout
func multiplyByTwo(number: inout Int) {
    number *= 2
}
var newNum = 15
multiplyByTwo(number: &newNum)

//MARK:                     ******
let drive = {
    (place:String) in
    print("I'm going to \(place)")
    
}
drive("muğla")

let drivingWithReturn = {
    (place:String) -> String in
    return "I'm going to \(place)"
}
let message = drivingWithReturn("muğla")
print(message)

let driving = {
    print("I'm driving my car")
    
    // () -> void  means accepts no parameters and returns void
}
//MARK:                     ******
func travel(action: () -> Void) {
    print("ready to go")
    action()
    print("I arrived")
}
travel {
    print("diriving in my car")
}

// with parameters

func travel2(action2: (String) -> String) {
    print("ready to go")
    let description = action2("alaçatı")
    print(description)
    print("I arrived")
}
travel2 { (placee:String) -> String in
    return "I'm going to \(placee) with my car"
}
travel2 {
    "I'm going to \($0) with my car"
}

// double parameters

func travel3 (action3:(String,Int) -> String) {
    print("ready to go")
    let description2 = action3("iskenderun", 100)
    print(description2)
    print("I arrived")
}
travel3 {
    "I'm going to \($0) at \($1) km/h"
}
