import UIKit

func FizzBuzz(inputNumber : Int) -> String{
    if inputNumber % 3 == 0 && inputNumber % 5 == 0 {
        return "FizzBuzz"
    }
    if inputNumber % 5 == 0 {
        return "Buzz"
    }
    if inputNumber % 3 == 0 {
        return "Fizz"
    }
    return "\(inputNumber)"
}
for number in 0...100{
    let fizzBuzzResult = FizzBuzz(inputNumber : number)
    print(fizzBuzzResult)
}
