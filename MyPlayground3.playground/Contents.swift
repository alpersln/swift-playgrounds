
struct Sport {
    var name:String
    var isOlympicSport:Bool
    

var OlympicStatus: String {
    if isOlympicSport {
       return "\(name)  is olympic!"
    }else{
        return "\(name)  is not olympic"
    }
  }
}

let newSport = Sport(name: "handball", isOlympicSport: true)
print(newSport.OlympicStatus)

//MARK:                 *************

struct Progress {
    
    var taskName: String
    var amount: Int{
    
     didSet {
        print("\(taskName) is now %\(amount) of completed")
    }
  }
}
    var taskProgress = Progress(taskName: "become a jr iOS developer", amount: 42)
taskProgress.amount = 36
taskProgress.amount = 47
taskProgress.amount = 59
    
//MARK:                 *************

struct city {
    var population: Int
    var taxAmount : Int
    
    
    func collectTaxes() -> Int {
        population * taxAmount
    }
}
let ayvalik = city(population: 71725, taxAmount: 1250)
ayvalik.collectTaxes()

//MARK:                 *************

    
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "anonymous"
    }
}
var person = Person(name: "alper")
person.makeAnonymous()

//MARK:                 *************

let quote = "The world as we have created it is a process of our thinking"
print(quote.count)
print(quote.uppercased())
print(quote.hasPrefix("The world"))
print(quote.sorted())

//MARK:                 *************


struct User {
    var username: String
    
    init() {
        username = "anonymous"
        print("creating new user")
    }
    
}
var user = User()
user.username = "alperr"

//MARK:                 *************
struct id {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
        
    }
}
