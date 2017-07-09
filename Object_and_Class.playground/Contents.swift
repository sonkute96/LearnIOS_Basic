//: Playground - noun: a place where people can play

import UIKit


// ---- su dung class key de khai bao 1 lop
// ---- khai bao thuoc tinh trong class duoc viet giong nhu viec khai bao 1 hang so hay 1 bien nhung no fai nam trong noi dung cua 1 class

// ---- vi du

class Shape {
    // ta co 1 lop ten la Hinh
    var numberOfSides = 0
    
    // numberOfSides la 1 thuoc tinh hay duoc khai bao nhu 1 bien co gia tri ban dau la 0
    // -- khai bao 1 func trong class
    
    init(_ numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func simpleDescription() -> String{
        return "A shape with \(numberOfSides) side."
    }
}

// de su dung class ta khai bao 1 bien hung vung nho cua Shape. Bien do dong vai tro nhu mot tham chieu

let hcn = Shape(20) // dang su dung constructor mac dinh

print(hcn.simpleDescription())


// ------------ vi du 2


class NamedShape {
    
    var numberOfSides : Int = 0
    
    var name : String
    
    init(name:String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with\(numberOfSides) sides."
    }
}

// -- class square

class Square : NamedShape {
    var sideLength: Double
    
    init(sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name) // goi den constructor cua class cha
        numberOfSides = 4
    
        
    }
    
    func area () ->Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with side of length \(sideLength)."
    }
}

// goi ham 


let test = Square(sideLength: 5.2, name: "my test square")

print(test.area())
print(test.simpleDescription())





// --------- mot thuoc tinh duoc luu tru, thi thuoc tinh do co the co getter and setter

class Triangle : NamedShape {
    
    var sideLength : Double = 0.0
    
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    
    var perimeter : Double {
        // mot thuoc tinh permeter kieu Double
        // -- co getter
        
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0 // newValue la mot gia tri moi cua perimeter sau khi co su thay doi ve gia tri cua permeter tu getter
        }
       
    }
    
    override func simpleDescription() -> String {
        return "A triangle with sides of length \(sideLength)."
    }
}


var triangle = Triangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter) // triangle dang tham chieu vao ham getter cua thuoc tinh perimeter

triangle.perimeter = 9.9 // triangle dang tham chieu vao ham setter cua thuoc itnh perimeter va thuc hien lenh trong ham setter

    // -- newValue luc nay bang 9.9

print(triangle.sideLength)


// ----- khai niem ve willSet va didSet
// --- code cua ban se thuc hien viec chay bat cu khi nao co su thay doi cua gia tri so voi gia tri ban dau

class TriangleAndSquare {
  // triangle va square la 2 thuoc tinh cua class TriangleAndSquare
    var triangle : Triangle {
        willSet {
            square.sideLength = newValue.sideLength // gia tri sideLength cua square lun bang voi gia tri sideLength cua triangle
        }
        
        
    }
    
    var square: Square {
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        
        triangle = Triangle(sideLength: size, name: name)
    }
}


var run = TriangleAndSquare(size: 10, name: "anther test shape")


print (run.square.sideLength)

print(run.triangle.sideLength)

run.square = Square(sideLength: 50, name: "larger square")

print(run.triangle.sideLength)
// khi co su thay doi gia tri sideLength trong thuoc tinh square thi dong thoi no se chay vao willSet va gan cho sideLength cua triangle

