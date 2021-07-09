import SwiftUI

var age: Int?
age = 22

//unwrapping

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count)")
}else{
    print("missing name")
}

//MARK:         ***********

func getUsername() -> String? {
    "alper"
}
if let username = getUsername() {
    print("username is : \(username)")
}else {
    print("no username")
}

//MARK:         ***********

func greet(motoName: String?) {
    guard let r25 = motoName else {
        print("you didn't provide motor name")
        return
    }
    print("you are welcome \(r25)")
}

//MARK:         ***********
//force unwrap

let url = URL(string:"https://www.apple.com")!
let randomNumber = (1...10).randomElement()!
print(randomNumber)

//MARK:         ***********
//nil coelescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Sanchez"
    }else {
        return nil
    }
}

let user = username(for: 5) ?? "Anonymous"

//MARK:         ***********
//optional chaining

let nirvana = ["Kurt Cobain","Dave Grohl","Krist Novoselic"]
let singer = nirvana.first?.uppercased()

//MARK:         ***********
//optional try
enum PasswordError: Error {
    case obvious
}
func checkPassword (_ password:String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("that password is good")
} catch {
    print("you can't use that password")
}

if let result = try? checkPassword("password") {
    print("result was \(result)")
} else {
    print("...")
}

try! checkPassword("secret")
print("okey")

//MARK:         ***********
// typecasting as?

class Animal {}

class Fish: Animal {}
class Cat: Animal{
    func askFood(){
        print("meow")
    }
}

let pets = [Cat(),Fish(),Cat(),Fish()]

for pet in pets {
    if let cat = pet as? Cat {
        cat.askFood()
    }
}

