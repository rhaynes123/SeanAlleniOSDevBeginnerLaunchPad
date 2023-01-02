//
//  Card.swift
//  CardWorkout
//
//  Created by richard Haynes on 1/1/23.
//

import Foundation
import UIKit
struct Card {
    var image : UIImage!
    var name : String
    var suit: Suit
    var rank: String
    
    init(rank: String, suit: Suit) {
        self.rank = rank
        self.suit = suit
        self.name = rank + suit.rawValue
        self.image = UIImage(named: name) ?? UIImage(named: "AS")
    }
}
