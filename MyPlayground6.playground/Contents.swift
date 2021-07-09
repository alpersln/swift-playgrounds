


protocol Identifiable {
    var id: String { get set}
}

struct id: Identifiable {
    var  id: String
}

func displayID(thing: Identifiable) {
    print("my id is \(thing.id)")
}

//MARK:      ********

protocol Payable {
    func calculateWages () -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation (days:Int)
}

protocol Employee: Payable,NeedsTraining , HasVacation {}

//MARK:      ********

extension Int {
    //extensions must use computed property,stored property doesn't allowed.
    func square() -> Int{
        return self*self
    }
}
let number = 9
number.square()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven

//MARK:      ********

let letters = ["a","b","c","d","d"]
//swift arrays conform a protocol called "Collection",so we can write extension to this protocol
extension Collection {
    func summarize (){
        print("there are \(count) letters")
        for letter in self {
            print(letter)
        }
    }
}
letters.summarize()

//MARK:      ********

