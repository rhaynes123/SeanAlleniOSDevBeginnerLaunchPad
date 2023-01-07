//
//  Workout.swift
//  CardWorkout
//
//  Created by richard Haynes on 1/2/23.
//

import Foundation
struct Workout {
    static func determine(from card: Card) -> String {
        
        switch card.suit {
            
        case .Diamond:
            return determineReps(from : card) + " Calf-Raises"
        case .Club:
            return determineReps(from : card) + " Squats"
        case .Spade:
            return determineReps(from : card) + " Push-Ups"
        case .Heart:
            return determineReps(from : card) + " Crunches"
            
        }
    }
    
    static private func determineReps(from card: Card) -> String{
        if card.rank.caseInsensitiveCompare("A") == .orderedSame {
            return "14"
        }
        if card.rank.caseInsensitiveCompare("K") == .orderedSame {
            return "13"
        }
        if card.rank.caseInsensitiveCompare("Q") == .orderedSame {
            return "12"
        }
        if card.rank.caseInsensitiveCompare("J") == .orderedSame {
            return "11"
        }
        
        return card.rank
    }
}
