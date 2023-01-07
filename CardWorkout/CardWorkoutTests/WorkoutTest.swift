//
//  WorkoutTest.swift
//  CardWorkoutTests
//
//  Created by richard Haynes on 1/7/23.
//

import XCTest
@testable import CardWorkout
final class WorkoutTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWorkoutReturns14PushupsWhenGivenAceOfSpade() throws {
        //Given
        let card = Card(rank: "A", suit: Suit.Spade)
        //When
        let exercise : String = Workout.determine(from: card)
        //Then
        XCTAssertEqual(exercise, "14 Push-Ups")
    }
   
    func testWorkoutReturns13PushupsWhenGivenKingOfClub() throws {
        //Given
        let card = Card(rank: "K", suit: Suit.Club)
        //When
        let exercise : String = Workout.determine(from: card)
        //Then
        XCTAssertEqual(exercise, "13 Squats")
    }
    
    func testWorkoutReturns12PushupsWhenGivenQueenOfDiamond() throws {
        //Given
        let card = Card(rank: "Q", suit: Suit.Diamond)
        //When
        let exercise : String = Workout.determine(from: card)
        //Then
        XCTAssertEqual(exercise, "12 Calf-Raises")
    }
    
    func testWorkoutReturns11PushupsWhenGivenJackOfHeart() throws {
        //Given
        let card = Card(rank: "J", suit: Suit.Heart)
        //When
        let exercise : String = Workout.determine(from: card)
        //Then
        XCTAssertEqual(exercise, "11 Crunches")
    }
    
    func testWorkoutReturns2PushupsWhenGivenJackOfHeart() throws {
        //Given
        let card = Card(rank: "2", suit: Suit.Heart)
        //When
        let exercise : String = Workout.determine(from: card)
        //Then
        XCTAssertEqual(exercise, "2 Crunches")
    }

}
