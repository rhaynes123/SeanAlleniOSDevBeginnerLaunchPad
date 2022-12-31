import UIKit

class Developer{
    var name: String?
    var jobTitle: String?
    var yearsExp: Int?
    
    init(){}
    
    init(name: String, jobTitle: String, yearsExp: Int){
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    
    func speakName(){
        print(name!)
    }
}


let richard = Developer(name: "Richard", jobTitle: "C# Developer", yearsExp: 6)

let sean = Developer()

sean.name = "Sean"
sean.yearsExp
sean.speakName()


class iOSDeveloper: Developer{
    var favoriteFramework: String?
    
    func speakFavoriteFramework(){
        if let favoriteFramework = favoriteFramework{
            print(favoriteFramework)
        }else{
            print("I dont have a favorite framework")
        }
            
    }
    
    override func speakName() {
        print("\(name!)-\(jobTitle!)")
    }
}

var sean2 = iOSDeveloper(name: "Sean", jobTitle: "ios Engineer", yearsExp: 5)
sean2.favoriteFramework = "ARKit"
sean2.speakFavoriteFramework()
sean2.speakName()

var joe = sean2

joe.name = "Joe"
sean2.name
