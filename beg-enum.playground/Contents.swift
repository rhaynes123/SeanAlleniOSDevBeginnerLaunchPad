import UIKit

enum Phone: String {
    case iPhone11Pro = "This will be my next phone"
    case iPhoneSe = "Hate this size"
    case pixel = "Hardware is great but Android is ok"
    case nokia = "indestructable"
}

func getSeansOpinion(on phone: Phone) {
    
    switch phone {
    case .iPhone11Pro :
        print("This will be my next phone")
    case .iPhoneSe:
        print("Hate this size")
    default:
        print("indestructable")
    }
    
    
//    if phone == .iPhone11Pro{
//        print("This will be my next phone")
//    }
//    else if phone == .iPhoneSe{
//        print("Hate this size")
//    }
//    else if phone == .pixel{
//        print("Hardware is great but Android is ok")
//    }
//    else{
//        print("indestructable")
//    }
}

//getSeansOpinion(on: .iPhone11Pro)

let matchmakingRank = 5000

func determinePlayerLeague(from rank: Int){
    switch rank{
    case 0:
        print("Play the game to determine your league")
    case 1..<50:
        print("You are in BRONZE league")
    case 50..<100:
        print("You are in Silver league")
    case 100..<200:
        print("You are in GOLD league")
    default:
        print("You are in a league of your own")
    }
}

determinePlayerLeague(from: matchmakingRank)
