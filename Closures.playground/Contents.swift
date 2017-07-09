//: Playground - noun: a place where people can play

import UIKit


/* function la mot loai truong hop dac biet cua closures 
 
 code trong mot closure co the truy cap tat ca nhung thu vi du nhu bien, functions noi ma closure đc tao ra
    (cung scope)
 
 
*/

// --- vi du

var numbers = [20,19,7,12]
let maped = numbers.map({(number: Int) -> Int in
    
    let result = 3 * number
    return result


})


let sort = numbers.sorted(){ $0 < $1 }

// --- cho 1 mang dung closure de map mang do

print(maped)

print (sort)
