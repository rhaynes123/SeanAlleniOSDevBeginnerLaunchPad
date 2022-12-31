import UIKit

extension String {
    func removeWhiteSpace() -> String{
        return components(separatedBy: .whitespaces).joined()
    }
}


let alphabet = "A B C D E F"
print(alphabet.removeWhiteSpace())
