//: Playground - noun: a place where people can play

import UIKit

// use protocol to declare a protocol

// -- protocol trong swift cung giong nhu interface trong java

// -- for example

// -- we have a Animal class: dog, cat, pig

// -- but we have a car, car can make sound


// -- we don't know that how do they make sound?

// -- khai bao 1 class Animal

protocol makeSound {
    // khai bao 1 func
    
    func canMakeSound()
}
class Animal {
    
    var name:String?
}

class Dog: Animal, makeSound {
    func canMakeSound() {
        print ("\(name!) go go")
    }
}

class Cat: Animal, makeSound {
    func canMakeSound() {
        print("\(name!) meow meow")
    }
}

class Car: makeSound {
    //Car is different Cat and Dog
    
    func canMakeSound() {
        print("Lambor run run")
    }
}

let duddy = Dog()
duddy.name = "duddy"
duddy.canMakeSound()

let lambor = Car()

lambor.canMakeSound()


// -- for example 2: protocol with fields

protocol HasName {
    var name: String {get} // thuoc tinh co 2 pt get and set
    // func
    
    func fullName() ->String
}

protocol CanMove{
    var legCount: Int {get}
    func move()
}


class Duck: HasName,CanMove{
    var name: String
    init(name:String) {
        self.name = name
    }
    let legCount: Int = 2
    
    func fullName() -> String {
        return name
    }
    func move() {
        print("by \(legCount) legs")
    }
}


let duck = Duck(name: "Donal")

print(duck.fullName())
duck.move()

