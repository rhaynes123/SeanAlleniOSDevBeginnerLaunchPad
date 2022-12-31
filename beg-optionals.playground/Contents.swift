import UIKit

var ages : [Int] = []
ages.sort()

// if let
if let oldestAge = ages.last{
    print("The oldest age is \(oldestAge)")
} else {
    print("There is no oldest age. You must have no students")
}

// nil coalascing
//let oldestAge = ages.last ?? 000

//guard statement
func getOldestAge(){
    guard let oldestAge = ages.last else {return}
    print("\(oldestAge) is the oldest age")
}

getOldestAge()
// force unwrap
let oldestAge = ages.last!
