//: Playground - noun: a place where people can play

import UIKit

// su dung if and switch de lam dieu kien

// su dung for-in, while and repeat-while de lam vong lap

// vi du

let indivitualScores = [75,43,103,87,12] // khai bao 1 mang


var teamScore = 0 // khai bao 1 bien

for score in indivitualScores {
    //duyet tung phan tu trong mang indi...
    if score > 50 {
        // neu score > 50 thi
        teamScore += 3 // chinh no cong them 3
        
        
    }
    
    else{
        teamScore -= 1 // chinh no tru di 1
        
        
    }
    
}

// thoat vong lap for

print(teamScore)


/// cau truc switch case


let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
    
case let x where x.hasSuffix("pepper"):
    print("is it a spicey \(x)?")
default:
        print("everything tastes good in soup.")

}



// ------ su dung vong lap while 

// --- khi nao thi su dung vong lap while 

// khi ta muon lap lai mot cai gi do ma ta ko bik truoc dc so lan lap thi dung while. Nguoc lai ta dung vong lap for

var n = 2

while n < 100 {
    n *= 2
    
}

print (n)

var m = 2

repeat{
    m *= 2
}while  m < 1000
print (m)


// ------- use ..< trong vong lap for


var total = 0

for i in 0..<4{
    // i se chay tu 0 -> 3
    print(i)
}