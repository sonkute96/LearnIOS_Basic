//: Playground - noun: a place where people can play

import UIKit

// --- for example with class and objects

// -- khai bao class

class Button {
    
   
    
}

// khai bao object


var button = Button()

class Square {
    
     // properties -- attributes
    var length : Int = 1
    
    // khoi tao constructor
    
    init(length:Int) {
        self.length = length
    }
    
}
//
//var firstSquare = Square(length: 10)
//
//print(firstSquare.length)


//  ------ Inheritance


class AClass {
    func doSomeThing() {
        print("Hello from AClass")
    }
}

class SubClass : AClass {
    
    //override
    
    override func doSomeThing() {
        print("subclass do something")
    }
}

//var subClass = SubClass()
//
//subClass.doSomeThing()


// ----------- delegate pattern


// -- khai bao 1 protocol Targetable

protocol Targetable {
    
    // properties
    var life : Int {get}
    
    // function with 1 argument
    
    func takeDamage(damage: Int)
}

// --- khai bao 1 protocol Shootable

protocol Shootable {
    // function with 1 argument type Targetable
    func shoot(target: Targetable)
}

// class Pistol implements protocol Shootable
class Pistol : Shootable {
    
    func shoot(target: Targetable) {
        // target tham chieu den Targetable
        target.takeDamage(damage: 1)
    }
}

class ShootGun : Shootable {
    func shoot(target: Targetable) {
        target.takeDamage(damage: 5)
    }
}

class Enemy : Targetable {
    
    var life: Int = 10
    
    func takeDamage(damage: Int) {
        life -= damage
        print("enemy lost \(damage) hit points")
        
        if life <= 0 {
            print("enemy is dead now")
        }
    }
}

class Player {
    
    // delegate with weapon
    var weapon: Shootable
    
    init(weapon: Shootable) {
        self.weapon = weapon
        
    }
    
    func shoot(target: Targetable){
        weapon.shoot(target: target)
    }
}

// -- terminator la 1 doi tuong cua Player voi thuoc tinh weapon de khoi tao boi class Pistol
var terminator = Player(weapon: Pistol())

// tao doi tuong cua class Enemy
var enemy = Enemy()

terminator.shoot(target: enemy)

terminator.weapon = ShootGun()

terminator.shoot(target: enemy)
