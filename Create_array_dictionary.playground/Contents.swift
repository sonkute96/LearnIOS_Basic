//: Playground - noun: a place where people can play

import UIKit

/*viec khai bao mot array hoac mot dictionary
 ta su dung [] de khai bao
 */

var shoppingList: Array = ["catFish","water","tulips","blue paint"]

// de duyet cac phan tu o trong mang tren ta su dung vong lap for

for i in shoppingList {
    print(i)
}

// --- dung ham count de lay so luong phan tu co trong mang

var length = shoppingList.count

print(length)


// --------- khai bao 1 dictionary


var occupations = [
    "Malcolm":"Captain",
    "Kaylee":"Mechanic"
]

// truy cap tung phan tu trong dictionary

for (key, value) in occupations {
    print("key : \(key) value : \(value)")
}

// ngoai ra ta co the tao mot mang hoac dictionary rong bang syntax


let emptyArray = [String]() // mot mang co kieu du lieu la String

let emptyDictionary = [String:Float]() // mot empty dictionary co key la String - value la kieu Float


