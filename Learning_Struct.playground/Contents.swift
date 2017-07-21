//: Playground - noun: a place where people can play

import UIKit

// ---- use enum to create enumeration

// - enum can have methods associated with them

// - for example

enum Rank: Int{
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    
    case jack, queen, king
    
    func simpleDescription () -> String {
        // return result have type of String
        switch self{
            // self is Rank
        case .ace: return "ace"
        case .jack: return "jack"
        case .queen: return "queen"
        case .king: return "king"
        default: return String(self.rawValue)
        }
    }
}

// --- test example

let ace = Rank.two

let aceRawValue = ace.rawValue

// rawValue start at zero and increment by one each time
print(aceRawValue)


// -- for example 2

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case.diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        default:
            return "null"
        }
    }
    
    func color () -> String {
        switch self {
        case .spades,.clubs:
            return "black"
        case .diamonds,.hearts:
            return "red"
        default:
            return "null"
        }
    }
}

// -- test example 2

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

print(heartsDescription)

let nameColor = Suit.diamonds
let color = nameColor.color()
print (color)


// --- for example 3

//enum ServerResponse {
//    case result (String, String)
//    case failure(String)
//}
//
//let success = ServerResponse.result("6 am", "8:09pm")
//let failure = ServerResponse.failure("lose of cheese")
//
//switch success {
//case let .success(sunrise,sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
//case let .failure(message):
//    print ("failure .. \(message)")
//default:
//    return "null"
//}

// ----------------------------

// --- use Struct to tao mot structure

// - support many of the same behavious as classes.

// - for example

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
        
    }
}




// -- goi den constructor cua struct Card

//let threeOfSpades = Card(rank:.three, suit: .spades)
//
//
//
//let threeOfSpadesDescription = threeOfSpades.simpleDescription()
//
//print(threeOfSpadesDescription)

/*
 --- enum danh cho viec liet ke danh sach cac properties
 
 --- struct cung giong nhu class, nhung the hien cua struct la mot bien chua ban sao cua struct
 -- the hien cua class (object) dong vai tro nhu mot tham chieu, chieu den vung nho cua mot class
 
 */
