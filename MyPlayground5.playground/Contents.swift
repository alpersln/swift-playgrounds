


class Cat {
    var name: String
    var breed: String
    // classes need initializers when you dont give their properties default values
    init(name: String,breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Tekir:Cat {
    init(name: String) {
        super.init(name: name, breed: "tekir")
    }
}

//MARK:             *******

class Dog {
        
    func makeNoise() {
        print("Wooff")
    }
}

class Poodle: Dog {
    //with override we can customize parent class features
    override func makeNoise() {
        print("yip yip")
    }
}
let latte = Poodle()
latte.makeNoise()  //will print yip yip rather than wooff

//MARK:             *******

final class Human {
    //when declare class as a final ,no other class can inherit from it,they can't override your methods
    var name: String
    
    init(name: String) {
        self.name = name
        
    }
}

//MARK:             *******

class Person {
    var name = "alper sln"
    
    init() {
        print("\(name) is fine")
    }
    func printGreeting() {
        print("hi,I'm \(name)")
    }
    deinit {
        print("\(name) is no more")
    }
}
// loop that create person then destroy it with deinit
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//MARK:             ********

class famous {
    var name = "Brad"
    let name2 = "Ryan"
}

let brad = famous()
brad.name = "Jordan"  // Brad is become a Jordan!
print(brad.name)

let ryan = famous()
ryan.name2 = "Jake"  //can't assign to const

