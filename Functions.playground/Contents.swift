//: Playground - noun: a place where people can play

import UIKit

// su dung tu khao func de khai bao 1 function

// function la mot lenh gom ten cua no voi danh sach cac tham so hoac la ko co tham so

// su dung -> de tach phan ten cac tham so va kieu tra ve cua function

// vi du

func tinhTong(a : Int , b: Int) -> Int{
    return a + b
}

print(tinhTong(a: 10, b: 15))

// -- cach khai bao khac cho function su dung label cho cac tham so

// vi du

func greet(_ person: String, on day: String) -> String{
    // _ la label cua person, -> ko co label khi ma goi ham ra
    
    // - on la label cua tham so day
    
    return ("hello \(person), today is \(day)")
}


// call function

print(greet("Son Pham", on: "Wednesday"))

// ---  ngoai ra 1 function co the tra ve nhieu gia tri

func calculateStatistics (scores : [Int]) -> (min: Int, max : Int, sum : Int){
    var min = scores[0]
    var max = scores[0]
    
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return(min,max,sum)
}

let scoreArray:Array = [5,3,100,3,9]

let statistics = calculateStatistics(scores: scoreArray)

// bien statistics la mot bien tham chieu (min,max,sum)
// -- 1 ky thuat tuple

print(statistics.max)

print(statistics.min)

print(statistics.sum)

// functions can be nested


// --- vi du

func returnFifteen() ->Int{
    var y = 10
    
    func add (){
        y += 5
        
    }
    add()
    return y
}

returnFifteen()


// ------ ngoai ra mot function co the return another function as its value

// vi du

func makeIncrement() -> ((Int) -> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    return addOne
}


var increment = makeIncrement()

increment(7)
