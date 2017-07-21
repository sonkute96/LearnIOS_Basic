//: Playground - noun: a place where people can play

import UIKit

protocol Area {
    func getArea() -> Int
}

class Rectangle : Area{
    
    
    // --- attributes
    
    
    var width : Int  = 1 // chieu rong
    
    var height : Int = 10 // chieu cao
    
    
    // constructor without arguments
    
    init(){
        
    }
    
    // constructor with 2 arguments
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func getArea() -> Int {
        var area = self.width * self.height
        
        return area
    }
    
    
}



// ---- RectangleTest


// tao mot doi tuong(instance) cua Rectangle voi constructor ko co tham so

var rec1 = Rectangle()

print("rec1 - width \(rec1.width)")
print("rec1 - height \(rec1.height)")


var areaRectangle = rec1.getArea()

print("area of Rectangle : \(areaRectangle)")

// tao mot doi tuong (instance) cua Rectangle voi constructor co tham so

var rec2 = Rectangle(width: 15, height: 20)

print("rec2 - width \(rec2.width)")
print("rec2 - height \(rec2.height)")


var areaRectangle2 = rec2.getArea()

print("area of Rectangle : \(areaRectangle2)")


// --- toan tu === dung de so sanh dia chi cua 2 doi tuong cua class Rectangle.
print(rec1 === rec2)