import UIKit

var greeting = "Hello, playground"

let allStars : [String] = ["James", "Davis", "Harden"]

for player in allStars where player == "Harden"{
//    print(player)
}

for i in 0..<25{
//    print(i)
}
var randomNumbers : [Int] = []
for _ in 0..<25{
    let randomNumber = Int.random(in: 0...100)
    randomNumbers.append(randomNumber)
}
print(randomNumbers)
