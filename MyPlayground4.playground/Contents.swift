

struct FamilyTree {
    
    init() {
        print("creating family tree...")
    }
}

struct Person {
    
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var newPerson = Person(name: "alper")

//if we add lazy keyword to the familyTree property,swift will only create the FamilyTree struct when it's first accested:
newPerson.familyTree

//MARK:                     *****

struct Students{

    var name: String
    static var classSize = 0
    
    init(name: String) {
        self.name = name
        Students.classSize += 1
        
    }
}
//can read by outside of struct by using static
let student1 = Students(name: "alper")
let student2 = Students(name: "sezgin")
print(Students.classSize)

//MARK:                     *****


struct PersonId {
   private var idNum: String
    
    init(idNum: String) {
        self.idNum = idNum
    }
    
//  2-after private keyword ,now only methods inside struct can read idNum
    func identify () -> String {
        return "your id number : \(idNum)"
    }
    
}

//  1-if we add private keyword to idNum,we can make idNum private so you can't read it from outside the struct
let alperID = PersonId(idNum: "213948")


